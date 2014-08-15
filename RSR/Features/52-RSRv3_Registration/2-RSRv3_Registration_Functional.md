# Registration Process
The registration process is often a users first experience of using RSR. At the moment this process is complex and receives a large number of support requests through the help forum to complete correctly.

There is a large overhead within Akvo to be able to manage the increasing user base and it is difficult for Admin users to keep track and manage their individual user portfolios.

The following process has been determined from looking at the user flow and what actions the user needs to take in order to complete the process.

## User problems
5. Users don't understand and cannot follow the registration process.
13. Users don't see changes in their permissions or access.

## User stories
1. Preethi can easily register for an RSR account.
2. Anne can easily approve or decline users who apply to her organisation.

## Core changes

- User can register without being connected to an organisation
- User can connect to multiple organisations
- User does not need to enter their email twice in the sign up
- Admin users can approve users from organisations that are *Content Managed* by their organisations
- Admin can grant permissions globally, by region & countries, sector and/or individual projects

## User flows

1. User registers as a watcher
2. User connects to their organisation
3. User connects to multiple organisations
4. User is approved for their organisation
5. User is denied for their organisation
6. User completes their profile information
7. User attempts to connect with unregistered organisation

### 1. User registers as a watcher

In order to become a member on RSR, you first need to register your details. Registration is a multi-part process that collects some basic information about you including email address and confirms this with the use of an email handshake.

Registration is open to everyone and as a basic member (or watcher) you can view all project information and add comments to projects within the database.

- Go to http://rsr.akvo.org
- Click on the *Register* link in the header
- Enter information:
	- Email
	- First name
	- Last name
	- Password
	- Repeat password
- Click to complete basic registration
- System sends user email confirmation handshake
- Confirm by clicking link in email
- System logs user in after confirmation
- User sent to MyRSR page, where they can add organisations

### 2. User connects to their organisation

A user can provide information to Akvo RSR informing them that they are working with an organisation to provide support for one or more of their visualised projects.

Once a user has supplied this information their membership to the organisation is pending confirmation from an Administrator at the organisation.

A user can initiate this process from their MyRSR screen or by following the registration process for a watcher up to and including the step to click on confirmation email link.

- Start typing the name of the organisation in the field provided
- Select from the options provided
- (Optional) Enter job or position title
- (Optional) Select country by entering the first few letters and selecting from the options provided
- Click to confirm request
- Organisation membership is listed as *Pending* in MyRSR until approved by organisation Admin

### 3. User connects to multiple organisations

A user can provide information to Akvo RSR informing them that they are working with more than one organisation to provide support for one or more of their visualised projects.

A user can be connected to many organisations with different job roles, responsibilities and permissions. Each individual membership must be confirmed by the respective organisations Admin.

A user can select to add an additional organisation membership request after completing their first request.

- Click to add another organisation
- Complete the details as before
- Click to confirm request
- Organisation membership is listed as *Pending* in MyRSR until approved by organisation Admin

### 4. User is approved for their organisation

After a user has entered a request to be connected to an organisation, the Admin for the organisation is informed about the request via an email reminder.

The Admin user is also provided with an in-line notification request within their MyRSR interface.

The Admin user is notified about all new users for their organisations, or any other organisation which is has their organisation as the *Content Manager*.

- Logged in Admin user goes to MyRSR
- Admin user selects the Users page
- A list of pending user requests are listed at the top of the user list
- Admin user is presented with the following information per user:
	- First Name
	- Last Name
	- Email
	- Organisation requested to
	- Job or position title
- Admin user assigns a role of:
	- User
	- Editor
	- Admin
- (Optional) Admin user selects which group(s) to add the user to from one or more lists of:
	- Regions
	- Countries
	- Sectors
	- Individual projects
- Admin user can click on the email address to send an email to the pending user for further information
- When finished the Admin user selects to complete the process
- The approved user is sent an email informing them of their permissions

### 5. User is denied for their organisation

Not all requests for connecting to an organisation are correct, and so an Admin user can decide that they do not want to approve an incoming request.

- Logged in Admin user goes to MyRSR
- Admin user selects the Users page
- A list of pending user requests are listed at the top of the user list
- Admin user is presented with the following information per user:
	- First Name
	- Last Name
	- Email
	- Organisation requested to
	- Job or position title
- Admin user selects to decline the request
- Admin user needs to select yes to the additional confirmation box for this action
- The user is removed from the organisations user list

### 6. User completes their profile information

After a user has registered as a watcher and/or connected to an organisation, they can complete further information about themselves for their public profile.

- User logs in to RSR
- User goes to MyRSR
- User selects Profile information
- User selects to edit information
- User can complete:
	- Upload profile image
	- Address & location
	- Edit name
	- Edit email
	- Edit password
- User selects to save information

### 7. User attempts to connect with unregistered organisation

When registering, a user can request to connect to an organisation that is a member of RSR. If the user cannot find the organisation from the existing list of registered organisations, then it is likely that this organisation is not yet a partner in RSR.

- When selecting organisation from the list
- Select *My organisation is not listed*
- Sends user to this page: http://akvo.org/criteria-roles-and-procedures-for-akvo-partners/
