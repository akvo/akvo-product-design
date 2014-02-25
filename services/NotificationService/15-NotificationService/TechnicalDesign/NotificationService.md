# Technical Design
*Notification service*

## References
- [Functional Design](https://github.com/akvo/akvo-product-design/blob/master/services/NotificationService/15-NotificationService/FunctionalDesign/NotificationService.md)
- [#15@product-design](https://github.com/akvo/akvo-product-design/issues/15)
- [#444@rsr](https://github.com/akvo/akvo-rsr/issues/444)
- [#229@rsr](https://github.com/akvo/akvo-rsr/issues/229)
- [#144@rsr](https://github.com/akvo/akvo-rsr/issues/144)
- [#396@rsr](https://github.com/akvo/akvo-rsr/issues/396)


## Overview
The service is really just a persistent filter. Services emits events which then are routed and added to the correct users notification log. There are four main parts:
- message queue
- notification service
	- event handlers
	- persistence to data store
	- API

The diagram is based on RSR and the current state of our platform. In the future the myAkvo web UI will be outside of RSR.

![notification_service_2](https://f.cloud.github.com/assets/31837/2193228/7fe172f8-9879-11e3-9dde-b449a2f741b2.png)


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


## Message queue
If we have types of messages we can add message 'handlers' to that queue type and keep our services simple. Initial experimentation have been with RabbitMQ and the Python Pika library. 


## Notification service
The suggestion is to see this as a REST service that have additional inputs. 

- **Routing**  
  Depending on how much logic we put into the message queue this might not be that much. We could have seperate queue handlers per use case and keep the code very simple.
- **Logic**  
  Handle fanout of events to notifications attached to users
- **Datastore**  
  We should store an imutable log (list) data strucutre that represents both Entities and the user event log.
- **API**  
  - get notifications per user
  - set notifications as *read*
  - manage user profile (settings & email verification confirmation)
- **Email**  
  Depending on what prodiver/solution we chose we need to push calls for emails to another party. If we use MailChimp as was suggested we need to update list per entity and also manage template crafting.

Initial experiments have been made with Clojure & Compojure. For future development the suggestion is to use http://clojure-liberator.github.io/liberator/ for the API and Postgres for the Data store. 


## API
*this is only a quick draft*

;; Services
/services/
/services/<id>/
;; /services/<id>/entities/
;; /services/<id>/entities/<id>/followers/
;; /services/<id>/entities/<id>/events/
;; /services/<id>/entities/<id>/events/last_month/

;; /services/<id>/events/last_month/ ;; ?

;; The firehose
;; /events/
;; /events/last_month/

;; User
/users/<id>/preferences/

/users/<id>/notifications/
/users/<id>/notifications/<id>/
;; /users/<id>/notifications/unread/
;; /users/<id>/notifications/last_month/

/users/<id>/subscriptions/
/users/<id>/subscriptions/destroy/

## Issues
- security between services
- user id's
- email






