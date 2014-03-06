# Functional Design
*Notification service*

## References
- [#15@product-design](https://github.com/akvo/akvo-product-design/issues/15)
- [Technical Design](https://github.com/akvo/akvo-product-design/blob/master/services/NotificationService/15-NotificationService/TechnicalDesign/NotificationService.md)

## Overview
Akvo internal services will emit events to the notification service. The job of the notification service is to react and forward the event as a notification to the correct users in the correct medium. An example can look like this.

*A RSR user follows a specific project. That project receives a donation that makes it fully funded. The user should then see a notification in myAkvo and if he/she have enabled email notification also get an email.*

Even if the service should be generic in that it will show the users "Akvo" stream it's still will include a lot of non-generic event handling. Examples can be that when a project is fully funded and we should email administrative staff who can act, or when we want to send an email because of a new user signup. Hence we will need to explicitly deal with different kinds of messages in a tailored way. It will be a balance act on being generic and also deal with the problems at hand.

This is the first component in the new service oriented platform and we will have to introduce some ground work that in future services will already be established practice. An example of that is communication between services. The email feature is something that can happen in phase two.

## Marketing description
A notification service will enable a Akvo user to get a notification stream tailored to themselves. 

## Initial features
- (with the help of an admin *user* it should be possible to create services)?
- the service should be able to subscribe/unsubscribe a user to a type of it's own events.
- the service should be able to emit events based on a *type*.
- the service should expose a REST API for other services to consume.

## Goals
- Make sure users can view the pulse of their interests
- Help Akvo staff with administrative tasks
- Define a defined way to communicate between different services
- Lay the foundation or be a starting point of discussions around the future Akvo platform

## Non goals
The first iteration should probably not include email, it's a isolated feature that can easily be added later.