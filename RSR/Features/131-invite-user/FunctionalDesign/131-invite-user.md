# Invite users

## Overview
The invite user functionality will let certain users invite new users. This is an often requested feature, especially when setting up an RSR training and the users need an account beforehand. The trainer should then easily be able to invite all participants of a training.

## References
- Design Github Issue: https://github.com/akvo/akvo-product-design/issues/131
- Github Issue: https://github.com/akvo/akvo-rsr/issues/1005
- Tech Spec: https://github.com/akvo/akvo-product-design/blob/master/RSR/Features/131-invite-user/TechnicalDesign/131-invite-user.md

## User stories

#### User story 1
As an Organisation Admin or User Manager I want to be able to invite users that also work for my organisation.

#### User story 2
As an Organisation Admin or User Manager of a 'paying for RSR organisation' I want to be able to invite users that work for my partner organisation (__Kasper:__ This feels a bit tricky to me, it means that SNV can invite someone to join Akvo, who then in turn could change all of Akvo's projects). (__Laura:__ As an Aqua for All administrator, paying organisation, I want to invite users that work for one of my related implementing organsitions, since they need to fill in all project information. I understand this might be tricky. Therefore we need to think about some verification)

#### User story 3
As a Superuser or RSR Admin (Akvo staff) I want to be able to invite users of any organisation.

#### User story 4
As an Organisation Admin, User Manager, RSR admin or Superuser I want to be able to invite multiple users at the same time by entering multiple email addresses.

#### User story 5
As an Organisation Admin, User Manager, RSR admin or Superuser I want to be able to set the permissions for every email address (e.g. User, Project Editor, User Manager, Admin).

#### User story 6 
As an Organisation Admin, User Manager, RSR admin or Superuser I want to be able to set the permissions for every email address (e.g. User, Project Editor, User Manager, Admin), based on project level (__Kasper:__ What does project level mean? Parent / child relationship?). (__Laura:__ Project level means at any specific project. Doesn't matter if it's a parent/child. I want to be able to give someone permission to e.g. edit project 456 and 687, but not 123 if these are all projects that belong to my organisation)

#### User story 7
As an Organisation Admin, User Manager, RSR admin or Superuser I want to be able to select an organisation for the email I want to invite.

#### User story 8
As an Organisation Admin, User Manager, RSR admin or Superuser I want to be able to send an email invitation to join RSR and complete registration (e.g. fill in first name, last name, password) after email confirmation.

#### User story 9
As an Organisation Admin, User Manager, RSR admin or Superuser I want to be able to connect an existing User to a new organsation.

#### User story 10
As an Organisation Admin, User Manager, RSR admin or Superuser I want to be able so send a message to notify a user with a known email address that they have been added to a (new) organisation.

#### User story 11 
As a new user who receives an invitation, I want to be able to modify my email address (e.g. in case I was invited with my personal email and I want to use my work email instead) (__Kasper:__ I believe changing an email address would be a new functionality, and should not be in scope of inviting users). (__Laura:__ ok)

#### User story 12
If a new user is invited, an email notification should be send to notify them, including an automated generated password that has to be used when logging in for the first time (__Kasper:__ Sending passwords over email might not be the best idea. I believe it's better to include a link so that they can directly login). (__Laura:__ Ok, but then it needs to be clear they need to click a link to activate. At this moment, the whole registration process is confusing and not clear to partners. They need to click, activate, link to organisation etc. Therefore I thought sending out an automatically generated email with temporary password would be a solution)

#### User story 13
As an Organisation Admin, User Manager, RSR admin or Superuser I want to be able invite users for an organisation that does not yet exist in RSR by adding the name of the organisation, without having to create an organisation page first (__Kasper:__ This sounds hard to do, out of scope for now?). (__Laura:__ ok)

#### User story 14
As an invited user I want to be able to change my automatically generated password after I have logged in for the first time.

#### User story 15
As an invited user I want to be able click on a link in the email I've received and directly go to the 'My Details' page if I already had an account.
