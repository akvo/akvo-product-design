# Functional Design
*Notification service*

## References
- [#15@product-design](https://github.com/akvo/akvo-product-design/issues/15)
- [Technical Design](https://github.com/akvo/akvo-product-design/blob/master/services/NotificationService/15-NotificationService/TechnicalDesign/NotificationService.md)

## Overview
The job of the notification service is to react on events from services and make those events into notifications based on users. One could argue that the notification service twists the perspective from services to users. Making it possible to ask what happened in the system, from a user perspective. 

Services that will send messages to the notification service will initially be RSR but as we move forward FLOW, DASH & new services will also benefit from the common solution. The messages sent from services will origin in a service event (e.g. maybe a donation in RSR). An important job for the notification service is to keep track of what users should have what notifications. Further users should also be able to configure how they receive the notifications (emails as events happen or as a summary in the end of the month).  

An example can look like this:
<pre>
1. A user follows a RSR project and that project receives a donation
2. The user should then see that donation in myAkvo
3. If the user have enabled email notifications we should also send an email
</pre>

Users should be able to configure how they want emails, html, text, directly or in monthly summaries. We shall make it possible for services to ask for a users notifications.

We should try and keep the events/messages generic, but services can emit different kinds of events to the notifications system. Examples of such events are events that should trigger email verification workflows (e.i. new users/password reset).

This is the first component in the new service oriented platform and we will have to introduce some ground work that in future services will already be established practice. An example of that is communication between services.

## Marketing description
A notification service will enable a Akvo user to get a tailored notification stream. 

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