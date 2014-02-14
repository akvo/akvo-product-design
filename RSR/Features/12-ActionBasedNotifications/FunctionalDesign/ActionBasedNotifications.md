# Functional Design
*Action Based Notifications*

## References
- [#12@product-design](https://github.com/akvo/akvo-product-design/issues/12)
- [#444@rsr](https://github.com/akvo/akvo-rsr/issues/444)
- [#229@rsr](https://github.com/akvo/akvo-rsr/issues/229)
- [#144@rsr](https://github.com/akvo/akvo-rsr/issues/144)
- [#396@rsr](https://github.com/akvo/akvo-rsr/issues/396)

## Overview
There goes a lot of manual labour into supervising projects in RSR. To be on top of many projects as a RSR admin, partner admin or project editor you need to scan RSR in a pull way (manually polling RSR). RSR users crave for notifications & monitoring tools to help them manage their projects & organisations in an efficient way.

RSR users often need to act as a reaction to other users actions. One example of this is when a project get fully funded, and a partner admin needs to manually set the project to active and transfer collected funds to the partner. Today there are no tools in RSR that helps with this manual labour. There have also been a request for periodic digest emails based on these events, this would enable to view "no actions" on projects & organisations. Further, RSR admins have requested a way to easily edit email going out to users.

For both performance reasons and to avoid complexity we don't want to deal with sending notifications in the Django request/response cycle. What we would like to do is to hand of events to another service and let RSR respond quickly to the user. We also want to be future proof and support new services. Hence we should create a new service that transforms events from services to notifications that are then pushed to the user. Users can configure if they want notifications via email and/or in the web UI.

## Marketing description
To make it easy to mange *your* RSR projects Akvo are introducing notifications. You can now follow projects and get notifications when actions to the projects happen. The notifications can be seen in myAkvo, you can also get emails if you would like to. Notifications in the web UI will be visible when they happen, but for the emails you can configure notifications to either be sent directly or if you want you can get a summary email of what have happend to your projects each month. This way you can have an eye of your projects pulse!

## Initial features
- Users are able to follow/unfollow projects
- Users are able to view notifications(subscriptions, donations) in myAkvo
- Users are able to enable email notifications (with email verification)
- Users are able to get email notifications 

*Since a working implementation for notifications in general is fundamental to email notifications; consider implementing non email features first. This will also provide a test case for how many notifications a user will get.*
	
## Non goals
- Besied subscription, donation & notification(enabled email) notifications, add on project update
- How about those email templates

## Scenarios
**Scenario 1 - Subscribe to projects**  
A signed in RSR user navigates to a project of interest. On the project the user clicks a *follow* button. The button should now say *unfollow*. In myAkvo the user can see a notification informning that a subscription to events of project x have been made. The user can also see a list of subscribed projects (and links to them). It should be possible to unfollow from the list.
*Comment: this scenario points out the problem with having sign in functionallity on the RSR pages and admin part. It's hard to provide a workflow that is seamless and where the user does not have to switch between worlds to get a full picture*

**Scenario 2 - Donation notification**  
A project recieves a donation, then a user will see a notification in his/hers myAkvo, informing that that the project got a donation. The ammount will be visiable.  

**Scenario 3 - Enabling email notifications**  
At myAkvo the user see a greyed out email settings and a button *enable email notifications*. The user pushes the button get a message that he/she got an email with a confirmation email. The user clicks the link in the email and are now confirmed for email notifications. In myAkvo the email settings for notifications are now enabled. The user clicks email notifications. The user now will get an email saying that he/she will receive emails when event happens to the project.

**Scenario 4 - Donation notification**  
A project recieves a donation, then a user will see a notification in his/hers myAkvo, informing that that the project got a donation. The ammount donated will be visiable. The user will also get an email providing information about the donation and the projects funding situation.

## User experience
Not sure what wording to use, #229 talks about *follow*/*unfollow*. But at the same time Github uses watch/unwatch for this feature. One could also argue that *subscribe* is another contender

The double nature of being signed in on normal RSR and myAkvo is a bit odd. This is something we need to review in the future. We should probably only have one "section" on RSR that is where you do stuff when you are signed in. Maybe we should add those things to the RSR UI but then there is the issue with partner sites. *- difficult stuff*

## Known problems



