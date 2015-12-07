# Invite users

## Overview
This document provides a background and a high level view of how to implement the invite user functionality.

## Tech base
We're moving away from any use of jQuery in RSR. Instead, most of the pages use pure Javascript or React.js. The ```my-user-management.jsx``` file can be used for Javascript / React.js on the user management page. In order to use it, run ```gulp watch``` in the /scripts/devhelpers folder.

For UI and styling, we try to stick to default Bootstrap styling. So probably no CSS work is needed, just default Bootstrap classes.

## User roles
- Superuser; an RSR superuser (```user.is_superuser```)
- RSR admin; an RSR general admin / Akvo staff (```user.is_admin```)
- Organisation admin; an approved admin for one or more organisations, connected to the user through the Employment model (```user.employments.approved()```, check if group name is 'Admins')
- Organisation user manager; an approved user manager for one or more organisation, connected to the user through the Employment model (```user.employments.approved()```, check if group name is 'User Managers')

## Django templates and views
### Pages to be adjusted
- User management page in MyRSR -> add invite user UI

### New pages / views
- Provide additional account details -> new page to add first name, last name, new password (and avatar optionally)
  - This can be the same layout as the register page, but then without the email field.

## Workflows
On the user management page, it should be possible for anyone visiting the page (this can be a superuser, an RSR admin, an organisation admin or an organisation user manager) to invite users.

A simple complete workflow will look like this:
1. User clicks 'Invite users' button
2. Form fields appear (per user: email address, organisation, user role) with 'Send invitations' button
3. User fills in/ invite multiple new users and 'Send invitations' button is clicked
4. Per user it is shown whether the invitation is sent or an error message

### Form fields
Per user, and all fields are required:
1. Email address (input type email)
2. Organisation (dropdown of 'rsr.Organisation' objects, depending on the user rights)
3. Group (dropdown of 'auth.Group' objects, depending on the user rights)

### Organisation dropdown
- In case of a Superuser or RSR admin: show all Organisation objects. In Django: ```Organisation.objects.all()```.
- Otherwise; show all distinct Organisation objects of which the user has an approved employment, and the organisations that are content owned by these organisations. Something along these lines: ```user.employers.approved()``` and ```organisation.content_owned_organisations()```.

### Group dropdown
- In case of a Superuser, RSR Admin or Organisation Admin: show all Group objects. In Django: ```Group.objects.all()```
- Else (Organisation User managers): only show the 'Users' and 'User Managers' groups.

### Checks after submitting invitations
- Check if all fields are filled in
- Check if the user did not fill in his or her own email
- Check if the user-organisation combination already exists in the Employment model

## Workflow for existing users
1. Create a new Employment record with the user, organisation and group, and set ```employment.is_approved``` to True.
2. The user will automatically get a new email stating that his employment is approved.

## Workflow for new users
1. Create a new user with username and email address the same, a generated password, and let ```is_active``` be False.
2. Create a new Employment record with the user, organisation and group, and set ```employment.is_approved``` to True.
3. Send user an invite email with an activation link.
4. When the user has clicked the activation link: set ```user.is_active``` to True and direct user to the new page for filling in additional details.

## Mockup
__To do.__ Basically, start with an 'Invite user' button on the right top side of the user management page. When clicked, a 'table' will show with email/organisation/group per row. Also, we need a 'cancel' and 'send invitations' button.
