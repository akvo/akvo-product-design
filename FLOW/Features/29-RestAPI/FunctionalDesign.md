# Functional Design document

Akvo REST API
-------------

### Documents
Links to relevant issues

### Overview
The aim is to create a REST api for Akvo FLOW, for external consumption.

### Marketing description
API stands for 'application programming interface', and it is a set of programming instructions and standards for accessing a web-based software system. An API is a software-to-software interface, not a user interface. With APIs, applications can talk to each other without any user knowledge or intervention. 

The API of Akvo FLOW makes it possible to retrieve the list of surveys from your dashboard, get all the questions for a survey, get all the data collected for a specific survey, etc. There is also the possibility to put data into the FLOW system. An API makes it possible for different applications to be linked together, with data moving from one system to another in an automated way.

For example, you might want to read new data from the FLOW system automatically each week, so you can store it in your own database. Or you might want to update information in the FLOW system automatically if there are changes in your own database, for example after information was received from an SMS system, or through a phone call from a user. And perhaps you want to set up an automated sensor system, which can automatically send updates to the FLOW system on the status of a waterpump or other asset.


### Initial features
Initially, the following API requests will be implemented:
**GET**
* **get project group list** (can contain other project groups, or projects)
* **get project details** (contains list of forms + metadata)
* **get form details** (contains questions, options, and optionally translations)
* **get form responses** — the metadata of responses to individual forms
* **get form response details** - the answers to questions in a form
* **get user list** — depending on parameters, the dashboard users or mobile users 
* **get user details** - details of an individual user, including roles and group ownership
* **get project entities** - entities created by a project, including metadata
* **get project entity details** — details of a single project entity: includes all answers to questions. Depending on parameters, only show latest values, or all values.

**POST**
* **post form response** — supply answers to questions in a form. Depending on project settings, should include an entity id.

### Scenarios
**Scenario 1**
The government of country X has a national database, in which the information and status of all waterpoints in X are stored. They want to use FLOW to collect data, but also want to keep all the data up to date in the national country database. In FLOW, they have a monitoring project called 'Waterpoints X', which has a number of forms, which register new waterpoints, capture quality information, and capture other info. 

To accomplish their goal, they want to be able to access the FLOW API each week on Friday, retrieve the list of all project entities in the 'Waterpoints X' project, where each project entity has a timestamp to see when it was last updated. Based on this, they can then download the details of the project entity.

**Scenario 2**
The governement of country X also has an SMS based system in place, which water users use to inform the government of broken-down water systems. They want this information to automatically be updated in the FLOW system, so that the next time the governement enumerators monitor the water system using FLOW, the information on their FLOW device will be up-to-date. 

To accomplish this, they want to be able to update the answer to a particular questions in a project entity using the FLOW API

**Scenario 3** 
Company X is experimenting with water pumps which automatically send status reports every day. They have set up a FLOW project which monitors the water pumps, with which they can capture registration information, and maintenance information. They want to use the FLOW API to automatically send status information to the right project entities.

