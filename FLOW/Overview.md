## Purpose
The mission of the Akvo Foundation is to increase the quality of development processes by providing organisations with open source tools for knowledge sharing, online reporting, and data collection. To accomplish this, Akvo is working on an open source suite of tools under the label end-to-end transparency — transparency all the way from the allocation of government ODA funds, down to individual projects, down to the detailed impact data in the field. Akvo FLOW is part of this suite of tools.

Data is a valuable commodity for the organizations working to deliver better services to those who lack them. Having the right data can drive smarter decision-making and make development projects more efficient, more effective, and more appealing to funders.The ultimate goal of Akvo FLOW is providing governments and organizations an open, easy-to-use, affordable way to collect and understand this data. Experience has shown that use of Akvo FLOW significantly reduces errors in data collection, increases the speed and convenience of collection, survey management and data sharing and analysis, as well as increasing transparency in the data flow. 

The outcome we aim for is that using the Akvo FLOW service allows organisations and governments to do their (monitoring) work more efficient, more effective, and more transparent. A second expected outcome is that using Akvo FLOW leads to more transparency in the sector. In the end, the impact of Akvo FLOW is the benefit it brings to the processes and systems it helps manage: pumps that are monitored stay working longer and are reparied earlier, client satisfaction interviews leads to better services in hospitals, open data leads to more public scrutiny and less corruption, etc. 

Expected areas of change for organisations using Akvo FLOW:
* easier data collection, leading to more and high-quality data
* increases of speed of data collection
* accuracy of data collection - reduction of data entry errors
* better usage of data analysis and visualisation for decision making
* More users of collected data
* Easier management of surveys

A quote from Keri Kugler, Monitoring expert at the US-based NGO Water for People: "Using the survey tools, we speak with community members, find out if water service is reliable, whether someone can fix problems, and better understand ongoing issues,” Kugler wrote. “This kind of monitoring is a cornerstone to sustainable water solutions across the developing world."

## Scope
The goal of Akvo FLOW is to provide organisations with an affordable and reliable service to collect, manage, analyse and display geographically-referenced monitoring and evaluation data, offering fast data collection, survey flexibility, analytical tools for data-driven decision making and visual reporting of results.

Due to the wide availability of Android-based devices at low cost, the Akvo FLOW at the moment exclusively runs on Android devices.

FLOW users create surveys that can include text, photos, video, and GPS coordinates. Smartphones can store hundreds of surveys and collect data even where there is no cellular connection. The data automatically gets transmitted once the user has a mobile connection, or can be manually transferred.

## Akvo FLOW overview
The Akvo FLOW system consists of two parts: an online system for managing surveys and data, and an android app. Below we link to the various functional design and technical design documents.

A functional design describes how a product will work entirely from the user's perspective. It doesn't care how the thing is implemented. It talks about features. It specifies screens, menus, dialogs, and so on.

A technical design describes the internal implementation of the program. It talks about data structures, relational database models, choice of programming languages and tools, algorithms, etc.

#### Dashboard functional design documents
The FLOW Dashboard is the web-based location where users access and manage their FLOW data. All the data collected through FLOW is stored and processed in the Dashboard. It is also where users can run reports, create and edit surveys, and edit data. Each organization has its own URL to access its online Dashboard.

The Dashboard is organised in sections, each of which represent a functional unit of the system. Each section links to its functional design document.
* [Surveys](Features/Dashboard/FunctionalDesign/Surveys.md) - Create, edit and publish surveys
* [Devices](Features/Dashboard/FunctionalDesign/Devices.md) - Manage the devices connected with your Akvo FLOW Dashboard
* [Data](Features/Dashboard/FunctionalDesign/Data.md) - View, edit, import and clean data collected with Akvo FLOW surveys
* [Reports](Features/Dashboard/FunctionalDesign/Reports.md) - Viewing and exporting data and results from your surveys
* [Maps](Features/Dashboard/FunctionalDesign/Maps.md) - Shows the surveys collected with a GPS location as points on a map
* [Users](Features/Dashboard/FunctionalDesign/Users.md) - Defining users and their permissions
* [Messages](FunctionalDesign/Dashboard/Messages.md) - Lists messages on your dashboard related to activity with surveys and data processing activity
* [Admin](Features/Dashboard/FunctionalDesign/Admin.md) - Activities for super users (typically Akvo staff)

#### FLOW app functional design documents
The FLOW app is an Android app that runs on phones or tablets. Users can log in to the app, download surveys, fill in surveys, and submit data. Users can also download data, if monitoring features are used. Functional elements are:
* [Users](Features/App/FunctionalDesign/Users.md) - login services, authorization, enumerator versus field manager role, user creation
* [Surveys](Features/App/FunctionalDesign/Surveys.md) - download surveys, display and complete surveys, see statistics
* [Data Storage & Synch](Features/App/FunctionalDesign/DataSync.md) - data storage, online and offline synchronization
* [Monitoring features](Features/App/FunctionalDesign/MonitoringFeatures.md) - downloading and updating existing data
* [Languages](Features/App/FunctionalDesign/Languages.md) - multi-lingual display of surveys and user interface
* [RemoteManagement](Features/App/FunctionalDesign/RemoteManagement.md) - updating the app, reporting exceptions to the server

#### Technical design documents
The technical design documents 
* [Data Model](Features/Dashboard/TechnicalDesign/DataModel.md) - The data model used in the dashboard
* [Services model](Features/Dashboard/TechnicalDesign/Services.md) - The services used by the backend

## User roles
We have defined a number of user roles, representing ways that people with different roles can interact with the system. Each roles has a detailed description in the form of a persona. The user roles are:
* [Enumerator](userRoles/Enumerator.md)
* [Field Manager](userRoles/FieldManager.md)
* [Project Manager](userRoles/ProjectManager.md)
* [Director](userRoles/Director.md)
* [Donor](userRoles/Donor.md)
* [External data user](userRoles/DataUser.md)
* [Akvo staff](userRoles/AkvoStaff.md)

We have also formulated a number of [user stories](useCases).