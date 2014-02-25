# Functional Design
*Notification service*

## References
- [Technical Design](https://github.com/akvo/akvo-product-design/blob/master/RSR/Features/12-ActionBasedNotifications/TechnicalDesign/ActionBasedNotifications.md)
- [#12@product-design](https://github.com/akvo/akvo-product-design/issues/12)
- [#444@rsr](https://github.com/akvo/akvo-rsr/issues/444)
- [#229@rsr](https://github.com/akvo/akvo-rsr/issues/229)
- [#144@rsr](https://github.com/akvo/akvo-rsr/issues/144)
- [#396@rsr](https://github.com/akvo/akvo-rsr/issues/396)

## Overview
There goes a lot of manual labour into supervising projects in RSR. To be on top of many projects as a RSR admin, partner admin or project editor you need to scan RSR in a pull way (manually polling RSR). RSR users crave for notifications & monitoring tools to help them manage their projects & organisations in an efficient way.

RSR users often need to act as a reaction to other users actions. One example of this is when a project get fully funded, and a partner admin needs to manually set the project to active and transfer collected funds to the partner. Today there are no tools in RSR that helps with this manual labour. There have also been a request for periodic digest emails based on these events, this would enable to view "no actions" on projects & organisations. Further, RSR admins have requested a way to easily edit email going out to users.

For both performance reasons and to avoid complexity we don't want to deal with sending notifications in the RSR request/response cycle. What we would like to do is to hand of events to another service and let RSR respond quickly to the user. We also want to be future proof and support new services. Hence we should create a new service that transforms events from services to notifications that are then pushed to the user. Users can configure if they also want notifications via email or only in the web UI.

## Marketing description
To make it easy to mange *your* RSR projects Akvo are introducing notifications. You can now follow projects and get notifications when actions to the projects happen. The notifications can be seen in myAkvo, you can also get emails if you would like to. Notifications in the web UI will be visible when they happen, but for the emails you can configure notifications to either be sent directly or if you want you can get a summary email of what have happend to your projects each month. This way you can have an eye of your projects pulse!

## Initial features
- Users are able to follow/unfollow projects (orgs?)
- Users are able to view notifications(subscriptions, donations) in myAkvo
- Users are able to enable email notifications (with email verification)
- Users are able to get email notifications

There are a lot of big pieces to this feature. We should review what we belive is the most minimal thing that we can deliver that is still marketable. I have walked the ladder up and down on inital featues and think this needs to be discussed in the group. On one end we could think about making sure to finish all the infrastructure without any user visible changes, and on the other end of the spectrum is the full feature with notifications in the web UI, via email, email template integration. In either case we need to hook us in at the correct location in RSR, messages to a now non existing message queue. Read messages from the message queue with a new service, build the new serivce that involves logic for managing events on entries(e.g. a project) and also the subscriptions to that entry (users). Persist event logs on entries and users to a data store.
	
## Non goals
- For the first phase don't implement notifications for project updates, comments or data modifications
- Email notifications?
- Editing of email templates?

## Scenarios
**Scenario 1 - Subscribe to projects**  
A signed in RSR user navigates to a project of interest. On the project the user clicks a *follow* button. The button should now say *unfollow*. In myAkvo the user can see a notification informning that a subscription to events of project x have been made. The user can also see a list of subscribed projects (and links to them). It should be possible to unfollow from the list.

*Comment: this scenario points out the problem with having sign in functionallity on the RSR pages and admin splitted. It's hard to provide a workflow that is seamless and where the user does not have to switch between worlds to get a full picture. We also need to think about if we should show a follow button if the user is not signed in. Personly I think it will be odd since most people can't get an account*

**Scenario 2 - Donation notification**  
A project recieves a donation, then a user will see a notification in his/hers myAkvo, informing that that the project got a donation. The ammount will be visiable.  

**Scenario 3 - Enabling email notifications**  
At myAkvo the user see a greyed out email settings and a button *enable email notifications*. The user pushes the button get a message that he/she got an email with a confirmation email. The user clicks the link in the email and are now confirmed for email notifications. In myAkvo the email settings for notifications are now enabled. The user clicks email notifications. The user now will get an email saying that he/she will receive emails when event happens to the project.

**Scenario 4 - Donation notification**  
A project recieves a donation, then a user will see a notification in his/hers myAkvo, informing that that the project got a donation. The ammount donated will be visiable. The user will also get an email providing information about the donation and the projects funding situation.

## User experiece
This raises the question if Akvo should not let the public get an Akvo account. We could have open "Akvo account" & "Akvo trusted network account" (network account). But there are of course implications around this *- difficult stuff*.


