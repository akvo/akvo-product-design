Roles and Permissions - Functional design
-------------

### Documents
Links to relevant issues

### Overview

Roles and Permissions describe the different levels of an individual’s access on the Akvo FLOW dashboard.  The dashboard includes several tabs: surveys, devices, data, reports, maps, users, and messages.  Access to the information in these tabs is limited depending on an individual’s role and permission level, i.e., “user” versus “admin”.  For example, certain people are able to edit the contents of a survey while others are not.  Roles and Permissions restrict survey group based access as well.

### Marketing description

Use Roles and Permissions to keep order on the dashboard; protect data from being tampered with.  It doesn’t make sense for everyone in a given company/organization to share the same access to different sections of the dashboard.  A Project Manager needs to be able to access the surveys that are coming in from the field, while a User only must be able to upload data from the field.  Roles and Permissions provide structure within this hierarchy of access.

### Initial features
The initial list of functionalities that this feature will contain

### Non goals
What this feature will not contain

### Scenarios

Scenario 1:  You are a Regional Manager managing multiple country programs in East Africa.  The projects vary from public health issues to schools being built in rural regions.  It is your responsibility to oversee these different projects and thus you need access to data from multiple countries and multiple programs.  Your colleague who manages one malaria project in rural Kenya, however, does not need access to other programs in the region.  She can see data from a specific set of surveys disseminated in her region and pertaining to malaria only.

Scenario 2:  The local government in rural Columbia is concerned about access to water over the next several generations and is thus engaged in a project to map water points throughout the area.  They have given a small grant to an NGO using Akvo’s tools to take up the task.  The Project Manager builds the survey and has access to deleting and publishing them, while the Field Manager only has access to edit.

Scenario 3:  A small NGO has implemented a gender equality/economic development project, teaching women in northern India to start small businesses and be the breadwinners in their families.  The initiative has been so successful that the program model is being replicated in several additional regions.  A translator has been hired to translate surveys for this purpose.   The permission to have access to translations is then limited to the translator.

Scenario 4:  You are the Project Manager for a malaria-related program based in West Africa.  Your primary task is to manage a group of 50 enumerators.  First you need to make sure all everyone’s device is connected to the dashboard.  To do this, a bulk upload works best.  From inside the app, where you would normally see the option to set a User and Device ID, select “Bulk Upload.”  Visit the Devices tab on the dashboard to check if the device is listed.  If they are, you are all set to go.

### User Experience 

A Regional Manager, a Project Manager, and a group of Enumerators team up for a water-mapping project in rural Kenya.  An Enumerator gets tasked to go out into the field to map water points and determine if they are 1) functional, and 2) drinkable, or not.  The Enumerator shows up at work and talks to his Project Manager about specific locations he should be mapping and what data he should be collecting. The Project Manager gives the Enumerator a map of three surrounding villages and a device with which to collect data. 
Device	Dashboard
Mobile User	User
Device Admin	Admin
	Super Admin (Akvo staff)

Table 1: Permission levels on the device and on the dashboard.

**Mobile User**

The Enumerator, with a Mobile User permission on the Android, opens the app on his device, and logs in.  He syncs the app, which will cause the device to download any survey groups and surveys assigned to him.  He selects the survey group that he knows contains the survey he will be working with.  The Enumerator can start a new record by clicking a 'plus' icon in the action bar of the device, or, perhaps, by clicking a 'create new record' button on top of the list of records.  When the Enumerator starts a new record, the registration form is immediately opened.  The enumerator fills in the form and submits it. 

Mobile Admin, User on the Dashboard

The Project Manager, with Mobile Admin on the Android and User status on the dashboard, has built the survey, so there is no need for the Enumerator to add or edit the survey or the survey responses.  With a User permission level on the dashboard, the Project Manager is able to create, edit, publish and delete surveys and assign devices.  The Project Manager logs into her organization’s dashboard, adds a new group and creates a survey.  She then assigns it to one or many device(s), at which point it becomes available for the Enumerators.


Admin and Super Admin on the Dashboard

The Regional Manager has an Admin permission level.  He can log into the dashboard and can see across survey groups and can create and copy surveys.  He can also export data to a spreadsheet and edit it.  Super Admin is a permission level reserved for Akvo staff and with it comes full access to the Dashboard.

### Technical notes
Any technical issues or questions that are already known

### Open issues
Any known issues that need to be decided

### Details
Details, details, details.
