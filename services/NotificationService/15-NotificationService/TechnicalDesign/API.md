# API
*Notification service*

## References
- [Functional Design](https://github.com/akvo/akvo-product-design/blob/master/services/NotificationService/15-NotificationService/FunctionalDesign/NotificationService.md)
- [#15@product-design](https://github.com/akvo/akvo-product-design/issues/15)
- [#444@rsr](https://github.com/akvo/akvo-rsr/issues/444)
- [#229@rsr](https://github.com/akvo/akvo-rsr/issues/229)
- [#144@rsr](https://github.com/akvo/akvo-rsr/issues/144)
- [#396@rsr](https://github.com/akvo/akvo-rsr/issues/396)


## Overview


## AMQP
Mainly a source for input. We send messages encoded as Protocol buffers.


### Subscription



message Subscription {
  optional int64 created = 1; // Unix time
  
  enum Service {
    AKVO_RSR = 0;
    AKVO_FLOW = 1;
    AKVO_NOTIFICATIONS = 2;
    AKVO_ID = 3;
  }
  
  enum Entity {
    PROJECT = 0;
    ORGANISATION = 1;
    USER = 2;
  }
  
  message Subscriber {
  	// How do we deal with a single id system in the future?
    optional Service service = 1 [default = AKVO-ID];
    required int32 id = 2;
    optional string email = 3;
  }
  
  message Entity {
	optional Service service = 1 [default = AKVO-RSR];
	optional Entity entity = 2 [default = PROJECT];
  }
}


## HTTP
Mainly a source for outputs of logs + some resources for user settings.








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




## API
*this is only a quick brain dump*

;; Services
/services/
/services/<id>/  
;; /services/<id>/entities/  
;; /services/<id>/entities/<id>/followers/  
;; /services/<id>/entities/<id>/events/   
;; /services/<id>/entities/<id>/events/last_month/  
;; /services/<id>/types/  
;; /services/<id>/types/<id>/  

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






