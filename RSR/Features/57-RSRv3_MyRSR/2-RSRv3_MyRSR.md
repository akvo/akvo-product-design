# MyRSR
In order to provide users with the right access to the necessary functionality, and to make it easier for users to complete these actions.

This will bring functionality which is currently being undertaken within the Admin into the front end of the interface with a clear user process that doesn't require so much up front training.

## User problems
1. Users are exposed to too much information and its not clear what they should be doing.
12. Users cannot see their previous activity.
13. Users don't see changes in their permissions or access.

## User stories
1. Anne can easily approve or decline users who apply to her organisation.
4. Sandra and Preethi can see all of the important and available actions that they can perform.
5. Klaus can find the information he is looking for.
10. Preethi can see her personal RSR activity.
11. Matthijs can stay informed of activities on a project.

## Interface

The MyRSR Interface will need several different screens that will provide the user with a set of functionality to use.

- My details
- My projects
- My updates
- Notifications
- User management

### My details
This section will provide access to basic information about the user and allow this information to be updated or added to.

The user should be able to edit/update:

- Name
- Email (with email handshake before full change is registered)
- Password
- Profile picture
- Profile text
- Organisation membership

### My projects
This section will provide access to a list of projects that the user has permissions to perform actions on or is following, as well as providing direct options to perform those actions.

Projects should be displayed in a list with at least the following information:

- Image
- Title
- Subtitle
- Status
- Location
- Permission status
	- Can update
	- Can edit
	- Can publish (if unpublished)

Action buttons should be presented to the user if they have the necessary permissions:

- View project
- Add update
- Edit
- Publish (if unpublished)
- Unfollow

This list should also provide the user with the Search and Filtering functionality to more easily locate the project they are looking for.

In particular, some thought needs to be given to how draft projects should be displayed to users that have permissions to publish. At the moment this is only Akvo staff that have this permission, but if we roll this out then we might consider the idea that project editors can give a sign off on draft projects to allow them to be published by the necessary admin users.

#### Search, filter and sorting

We should add a search and filtering section on this page that provides access for the user to filter the results displayed by:

- Entering a word/keyword
- Following status
- Project status
- Organisation
- Publishing status

This should utilise the search and filtering options and follow the same underlying process that we will be defining in https://github.com/akvo/akvo-product-design/issues/51.

### My updates
This section will provide users with access to see all the updates that they have posted within RSR.

Once an update has been posted a user has 20 minutes to edit it - this process should be available from this information.

Once we have implemented an audit trail feature, then we will look into the option of allowing longer term editing of update information.

Updates should be displayed in a list with at least the following information:

- Image/video
- Title
- Text
- Caption & credit
- Date posted
- Edit possible for X minutes

If editing is possible, then an edit button should be displayed to the user.

This list should also provide the user with the Search and Filtering functionality to more easily locate the update they are looking for.

### Notifications
This section will provide a social media notification style of interface to display incoming messages from the system.

Notifications will begin with providing information on projects being followed when there are new donations or changes in funding status.

This section will be expanded to make use of the notification service that is being built to also include messages from these actions:

- New update posted
- Project content updated
- Change in status
- New comment

The notification interface should display at least the following information:

- Title of notification
- Image from project/update (asset) being mentioned
- Title of asset
- Notification message
- Status of notification (new/read)

The user should also be presented with the following actions:

- Remove notification

### User management
The user management interface is being designed and implemented as part of the registration process within this issue: https://github.com/akvo/akvo-product-design/issues/52
