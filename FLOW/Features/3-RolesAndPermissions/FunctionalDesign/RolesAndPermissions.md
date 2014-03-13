# Roles and Permissions - Functional design

### Overview

Roles and Permissions describe the different levels access a user has on the Akvo FLOW dashboard and the FLOW mobile app. Access can be restricted either by activity, such as creating or editing a survey, making a report, or deleting data, or by specific survey or group of surveys. A set of user permissions is called a 'role'. Roles can be changed and customised, in order to fit the workflow of a particular organisation. On the device, roles are fixed and limited to 'mobile user' and 'mobile admin'.


### Marketing description
The FLOW dashboard is a place where lots of things happen: surveys get created, edited and distributed, incoming data is edited, cleaned and exported, new users are added and deleted. As Akvo FLOW is a tool meant to be used by organisations, it is important that means exist to restrict who can do what. Roles and permissions keep this order on the dashboard. The Admin and User roles provide default choices in managing permissions, but you can also create your own custom roles. For example, you might want to give a certain type of user access to surveys in a certain survey group only, or perhaps you want to have translator role, who can only edit translations of surveys and nothing else. Or what about a 'view-only' role so your boss can take a look but not touch anything?

### Initial features
* Fine-grained permissions per action
* Limit access to particular survey or survey group
* Ability to lock down surveys and questions
* Default roles of Admin and User on the Dashboard, and Super Admin for Akvo staff
* Default roles of Mobile Admin and Mobile user on the FLOW app
* All roles on the dashboard are customisable 

### Scenarios

Scenario 1: You are a Regional Manager managing multiple country programs in East Africa. The projects vary from public health issues to schools being built in rural regions. It is your responsibility to oversee these different projects and thus you need access to data from multiple countries and multiple programs. Your colleague who manages one malaria project in rural Kenya, however, does not need access to other programs in the region. She can see data from a specific set of surveys collected in a survey group only.

Scenario 2: A small NGO has implemented a gender equality/economic development project, teaching women in northern India to start small businesses and be the breadwinners in their families. The initiative has been so successful that the program model is being replicated in several additional regions. A translator has been hired to translate surveys to local languages or dialects for this purpose.  The permission to have access to translations is then limited to the translator.

Scenario 3: In organisation X, the project manager in charge of data collection accross 10 countries creates new surveys and managed the survey groups. The actual content of the surveys is edited by country coordinators, who only have access to certain survey groups, and who cannot create new surveys, only edit them.

### User Experience 
**Super Admin**
Akvo staff members have a super admin role in the dashboard. This means two things: 

* That they can perform certain REST requests, which are only allowed for super users
* That they have access to a tab [Akvo Staff], where certain operations can be performed, such as copy surveys from one instance to another, copy data from one instance to another, force-delete data, etc.

**Dashboard Admin**
A admin user has access to a tab called [Roles and Permissions], where roles and permissions can be defined. It provides a user interface to manage existing roles, for which permissions can be added or removed. It also provides an interface to create custom roles. Which users has which roles is determined in the [Users] tab.

**User with some role**
When a user is logged in which some role, the dashboard is shown adapted to that role - things that are not possible within that role are hidden. For example, when a role does not permit deleting a survey, that button will not be shown in the dashboard. When a role does not permit access to a certain tab, that tab is not shown.

**Mobile admin**
An app user with the 'Mobile Admin' role can perform certain tasks in the app that the mobile user does not have access to. These include, for example: delete surveys, delete all data from phone, manually install surveys, update the app, etc.

**Mobile user**
An app user with the role 'Mobile user' has basic access to the app, which allows the tasks that an enumerator performs. This includes data collection, data syncing in case of a monitoring group, change language settings, etc. 

**Survey group based access**
The access of a user to surveys and data can be restricted per survey group. In the user tab, an administrator can give users access to all data, or to specific survey groups.



### Roles and permissions

**Surveys**

* Create survey
* Edit survey
* Delete survey
* Edit translations
* Edit notifications
* Publish survey
* Approve surveys
* Access to surveys tab
* Lock surveys
* Lock questions

**Devices**

* assign surveys to devices
* access to devices tab

**Data**

* Access to data tab
* bulk upload zip data
* edit data in the dashboard
* clean data by export/import to excel

**Reports**

* Export raw data
* create charts 

**Users**

* Create new users
* Edit users
* Delete users


