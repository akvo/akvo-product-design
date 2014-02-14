# Technical Design
*Action Based Notifications*

## References
- [#12@product-design](https://github.com/akvo/akvo-product-design/issues/12)
- [#444@rsr](https://github.com/akvo/akvo-rsr/issues/444)
- [#229@rsr](https://github.com/akvo/akvo-rsr/issues/229)
- [#144@rsr](https://github.com/akvo/akvo-rsr/issues/144)
- [#396@rsr](https://github.com/akvo/akvo-rsr/issues/396)


## Overview
RSR will push messages to a message queue from which a notification service will consume messages. The notification service will have to route & *massage* notifications to the users notification log. The log should consist of read and unread notifications. A user will have to enable email notifications via email. Email notifications can be configured as *direct* or *summary*(end of month).

Events happen to an *entity*, the entity can be a project, an organisation or even a user; e.g.: 

- **Project**  
  A donation to project x
- **Organisation**  
  A new user joined organisation y
- **User**  
  A user subscribed to project x

### Things
- RSR (service that act as a producer)
- Message queue
- Service
	- Routing (we might be able push logic into the message queue to simplify our service)
	- Datastore (entity, user conf, user log)
	- API (for RSR to use)
	- Email 'firehose' 
- Workflow
	- Add to entity log
	- Add to users that have a subscription to that entity (RSR IDs?)
		- if emails are configured to be send directly, create an email event and mark notification as *sent via email*
		- else add to the notification list


## RSR
When RSR have saved a new donation to it's database and are about to return the response we will send of a message to the message queue and then return the response quickly. We will probably use signals to hook in our code, making RSR act as a producer and hand of events as messages to the message queue. Messages could look something like this (using JSON):
{
 'type': 'project-donation',
 'body': {
 		  'service': 'akvo-rsr',
 		  'project': <n>,
          'from': <x>,
          'amount': <n>,
          'currency': <z>,
          'when': <y>,
          ...
          }
}

Key here is that we would have a message 'type', in this example *project-donation*.

## Message queue
If we have types of messages we can add message 'handlers' to that queue type and keep our services simple. Initial experimentation have been with RabbitMQ.

## Service

### Routing
Depending on how much logic we put into the message queue this might not be that much.

### Datastore
I would argue to use our current mysql db, unless we want to make a go at introducing Postgres (I know this is on the todo list and also seem to be what the future looks like).

### API
RSR needs to:
- get notifications per user
- set notifications to *read*
- manage user conf

### Email
We should probably have an email handler should listen to different email events. 

## Issues
If we send direct emails about events, should the notification in the UI be mark as read? I don't think so. Maybe in the future we could detect if an email is read or not.
