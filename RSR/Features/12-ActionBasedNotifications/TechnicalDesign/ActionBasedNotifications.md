# Technical Design
*Action Based Notifications*

## References
- [Functional Design](https://github.com/akvo/akvo-product-design/blob/master/RSR/Features/12-ActionBasedNotifications/FunctionalDesign/ActionBasedNotifications.md)
- [#12@product-design](https://github.com/akvo/akvo-product-design/issues/12)
- [#444@rsr](https://github.com/akvo/akvo-rsr/issues/444)
- [#229@rsr](https://github.com/akvo/akvo-rsr/issues/229)
- [#144@rsr](https://github.com/akvo/akvo-rsr/issues/144)
- [#396@rsr](https://github.com/akvo/akvo-rsr/issues/396)


## Overview
From within the RSR request/response loop we will push a message queue. We will have an external service consuming these messages. The external service will then handle notification routing and persistence. There are several advantages with this approach that validated the introduction to additional moving parts. We should not do too much in the RSR request/response cycle, it's not performant. Even if a new service adds moving parts it gives us the oportunity to break out distinct functionallity and stay away from complecting the request path.

There will be need to have a log per entity event (project, organisation user) but also an log per user notification. To make it easier to reason about events are the thing RSR send to the message queue, and those are loged to the entity. Once we put an event on log file which we will show the user, we call those notifications instead (think request/response). 

The notification log should have a way to define what notifications are read and which are not. 

If email notification are set to *direct* emails should be sent directly. If they are set to *summary* we will have to store those and send them at the end of the month.


## Scenarios

### 1 - Subscribe to projects
When a user clicks the follow button RSR will post a message that might look something like this (only to get a feeling of the data flow):

```javascript
{
 'queue': 'follow-project',
 'body': {
 		  'service': 'akvo-rsr',
 		  'project': 42,
          'follower': 93,
          'when': <datetime>,
          ...
          },
  'meta': {'content-type': 'application/json', 'type': '...', 'datetime': '?'}
}
```

When the service handles the message, the user 93 is set as a subscriber to project 42. All events that project 42 emits from now on will be added to user 93's notification list.


### 2 - Donation notification
When a donation is completed send a message to the service.

```javascript
{
 'queue': 'project-donation',
 'body': {
 		  'service': 'akvo-rsr',
 		  'project': 42,
 		  'amount': 5,
 		  'currency': 'EUR',
 		  'when': <datetime>,
          },
  'meta': {'content-type': 'application/json', 'type': '...', 'datetime': '?'}
}
```

When the service handles the message the event is added to project 42's event list (if the project does not have eny events we need to add the project entity). We also need to add a notification log for all users that follows project 42.


### 3 - Enabling email notifications
...

### 4 - Donation notification
...

## Problems
Different subscription lists per role.


## Moving parts

### RSR
The changes to RSR should not be substantial, the issue is to make sure to send messages at the correct code *locations*. At the other end we need to query the service for notifications and make them visible in the myAkvo. 

### Message queue
If we have types of messages we can add message 'handlers' to that queue type and keep our services simple. Initial experimentation have been with RabbitMQ. 

### Service
- **Routing**  
  Depending on how much logic we put into the message queue this might not be that much. We could have seperate queue handlers per use case and keep the code very simple.
- **Logic**  
  Handle fanout of events to notifications attached to users
- **Datastore**  
  We should store an imutable log (list) data strucutre that represents both Entities and the user event log. I would argue to use our current mysql db, unless we want to make a go at introducing Postgres.
- **API**  
  - get notifications per user
  - set notifications as *read*
  - manage user profile (settings & email verification confirmation)
- **Email**  
  Depending on what prodiver/solution we chose we need to push calls for emails to another party. If we use MailChimp as was suggested we need to update list per entity and also manage template crafting.

