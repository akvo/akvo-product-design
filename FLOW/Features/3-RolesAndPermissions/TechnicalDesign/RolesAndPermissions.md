# Roles and Permissions - Technical Design

### Overview
Roles and permissions define the sets of actions that users in the dashboard are either permitted or prevented from executing, in other words, they define a user's authorisation level. This document proposes a technical design to address the user roles and permissions requirements specified in the functional design.

First, to clarify the meaning of the two main terms:

Permission - this refers to the ability/authorisation (or not) of a user to perform an action on a particular object in the system, e.g., a *user 'X'* is *allowed to edit* a *survey*, a *user 'Y'* is *not allowed to download* a *data report*.

Role - a role is a predefined set of permissions that can be assigned to a user. Therefore, assigning a user a particular role is equivalent to granting them the set of permissions defined under that role.  These are typically permissions that enable or allow a user to perform an action on an object.  Any permissions not defined under a role are by default considered as *not allowed* under that role.


### Minimum Viable Product
The minimum viable implementation should at least fulfil the following requirements:

* Enable management of roles, i.e., define a role and the permissions associated to that role.
* Enable the assignment of roles to a user
* Process each request/action to verify the current user's authorisation level



#### Default Dashboard Roles

* Admin - Able to perform all tasks including user administration
* Read Only User - Allowed to preview forms and data but cannot do any editing


#### List of permissions

##### Survey Group/Project
* Delete SurveyGroup/Project
* Create SurveyGroup/Project
* Edit SurveyGroup/Project
* View SurveyGroup/Project
* Enable Monitoring Features on SurveyGroup/Project

##### Survey/Forms
Delete Survey/Form
* Create Survey/Form
* Publish Survey/Form
* Define Registration Form
* Copy Survey/Form
* Edit Survey/Form
* View Survey/Form

##### Notifications and Translations
* Delete Notifications
* Create Notifications
* Edit Notifications
* View Notifications
* Delete Translations
* Create Translations
* Edit Translations
* View Translations


##### Devices
* Delete DeviceGroup
* Create DeviceGroup
* Edit DeviceGroup
* View DeviceGroup
* Add Device To Group
* Remove Device From Group
* Create New Survey/Form Assignment
* Initiate Manual Survey/Form Transfer

##### Data Viewing and Manipulation
* Inspect Data (only surveys allowed to view)
* Bulk Upload Data (needs to be restricted & user needs to be associated to survey)
* Download Raw Report (restricted to surveys with view access)
* Import Cleaned Data (restricted to surveys with edit access)

* View charts (Surveys where user has at least view access)
* Export Reports (Surveys where user has at lease view access)

* View Maps - view surveys that you hav access to viewing


##### User management
* Delete User
* Create User
* Edit User
* View User

##### Messages
* View Messages


#### Mobile App Roles and Permissions
TBD

### Final Product
In addition to the above, the final product should enable:

* Showing/Hiding of specific tabs or buttons for actions that a user is not allowed to perform
* Enable specification of permissions on a fine grained level to a user e.g. publish within a specific project within the system


### Technologies
Listing of the tech stack of the feature, any dependencies on versions, additional libraries or resources.

### Testing
How the feature can be tested, and what tests will be written during the creation/implementation.

### Estimates
Details of any timing estimates for how long this feature is expected to take, including end date and/or number of people working on this.