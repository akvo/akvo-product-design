# Roles and Permissions - Technical Design

### Overview
Roles and permissions define the sets of actions that users in the dashboard are either permitted or prevented from executing, in other words, they define a user's authorisation level. This document proposes a technical design to address the user roles and permissions requirements specified in the functional design.

First, to clarify the meaning of the two main terms:

Permission - this refers to the ability/authorisation (or not) of a user to perform an action on a particular object in the system, e.g., a *user 'X'* is *allowed to edit* a *survey*, a *user 'Y'* is *not allowed to download* a *data report*.

Role - a role is a predefined set of permissions that can be assigned to a user. Therefore, assigning a user a particular role is equivalent to granting them the set of permissions defined under that role.  These are typically permissions that enable or allow a user to perform an action on an object.  Any permissions not defined under a role are by default consider as *not allowed* under that role.


### Initial Requirements

### Hierarchical Definition of Permissions

### Dashboard Roles and Permissions

#### Default Dashboard Roles


#### List of permissions

Delete SurveyGroup
Create SurveyGroup
Edit SurveyGroup
View SurveyGroup

Delete Survey
Create Survey
Publish Survey
Enable Monitoring Features on Survey
Define Registration Form
Copy Survey
Edit Survey
View Survey

Delete Notifications
Create Notifications
Edit Notifications
View Notifications

Delete Translations
Create Translations
Edit Translations
View Translations


Delete DeviceGroup
Create DeviceGroup
Edit DeviceGroup
View DeviceGroup

Add Device To Group
Remove Device From Group

Create New Survey Assignment
Manual Survey Transfer


Inspect Data (only surveys allowed to view)
Bulk Upload Data (needs to be restricted & user needs to be associated to survey)
Download Raw Report (restricted to surveys with view access)
Import Cleaned Data (restricted to surveys with edit access)


Reports

View charts (Surveys where user has at least view access)
Export Reports (Surveys where user has at lease view access)


View Maps - view surveys that you hav access to viewing

Delete User
Create User
Edit User
View User

View Messages


### Mobile App Roles and Permissions


### References
