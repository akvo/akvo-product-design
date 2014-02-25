# Functional Design
*Notification service*

## References
- [Technical Design](https://github.com/akvo/akvo-product-design/blob/master/services/NotificationService/15-NotificationService/TechnicalDesign/NotificationService.md)
- [#15@product-design](https://github.com/akvo/akvo-product-design/issues/15)
- [#444@rsr](https://github.com/akvo/akvo-rsr/issues/444)
- [#229@rsr](https://github.com/akvo/akvo-rsr/issues/229)
- [#144@rsr](https://github.com/akvo/akvo-rsr/issues/144)
- [#396@rsr](https://github.com/akvo/akvo-rsr/issues/396)

## Overview
The original requirement came from RSR users which wanted to get notified from events happeing. The issue raised the thought of building a generic service which other services can also use. 

In short we will build a service that other services will emit events towards. The new service will then route the events to the correct users notification log. Users should then have the possibility to notifications in the web UI but also be able to get notifications via emails. These emails should be configurable to be either direct or as summaries each month.

The email feature is something that can happen in phase two.

## Marketing description
A notification service will enable a Akvo user to get a notificaiton stream tailored to themselves. 


## Initial features
- (with the help of an admin *user* it should be possible to create services)?
- the service should be able to subscribe/unsubscribe a user to a type of it's own events.
- the service should be able to emit events based on a *type*.
- the service should expose a REST API for other services to consume.


## Non goals
A service should not be able to push whatever events to the service but they should follow pre-defined contract. Otherwise we will have problems both in consuming messages and in presenting the data in the web UI.

The first itteration should probably not include email, it's a isolated feature that can easiy be added later.


## Scenarios
*these needs to be worked on*

**Scenario 1 - Subscribe to projects**  
Same as the RSR scenario.

**Scenario 2 - Donation notification**  
Same as the RSR scenario.


## Questions
- Is there a benefit of having services to register via the API if we want custom emit handlers?
- Is it appropriate to index users via email? We don't have a global identification service as is so we need to use something. The only alternative I see at the moment is to use RSR internal user id's but that seems very limiting.
- This raises the question if Akvo should not let the public get an Akvo account. We could have open "Akvo account" & "Akvo trusted network account" (network account). But there are of course implications around this *- difficult stuff*. 
