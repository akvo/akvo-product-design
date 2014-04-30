# Functional Design document

Akvo FLOW User documentation
----------------------------

### Overview
To assist users in using Akvo FLOW, different kinds of support materials are needed, both online and offline. The user roles we distinguish are project manager, field manager, and enumerator. 

### Marketing description
A marketing description of this feature.


Types of documents: 
1) quick start guides: max 5 pages, so they are easy to translate
2) Frequently Asked Questions, max 5 pages, so they are easy to translate.
3) Full topic-based manual - describing all functionality
4) Tutorials - describing typical workflows

### Structure of documentation
For the documentation, we focus on three different user roles — project manager, field manager, and enumerator — as described in https://github.com/akvo/akvo-product-design/tree/master/FLOW/UserRoles. For each of these, the following documents will be created:

**Project manager**
* Quick start guide
* Frequenlty Asked Questions 
* Full FLOW topic-based manual
* Tutorials

**Field manager**
* Quick start guide
* Frequenlty Asked Questions 

**Enumerator**
* Quick start guide
* Frequenlty Asked Questions


### Content of documentation
**Project manager**

* Survey management: creating, updating, publishing, distributing surveys
* Setup: what equipment is needed to run FLOW: desk pc, devices specifications
* User management: creating, deleting, changing roles / permissions of users
* Data management: check what is coming in, quality check and data cleaning 
* Reports management: export reports
* Data collection management / ield logistics: knowning where your equipment is, what if something breaks, is stolen, responsibilities, etc.
* Updating phones

**Field manager**
* Device management: set up devices (GPS, connectivity, camera resolution), updating FLOW App, cleaning device, set device Id
* Survey management on device: get surveys to phone, check version of surveys
* Enumerator management - set up enumerator users on the phone / dashboard
* Enumerator management - check the work of enumerators using duration of survey, spread of GPS, number of surveyes completed daily
* Data management - make sure data is uploaded. Check data and data quality in dashboard.
* Ethics: know where your stuff is: e.g. use a check-in / check-out log. 
* Logistics management: Where are the enumerators, how do they get there, what do they have with them

**Enumerator**
* phone management: battery management / flight mode, GPS, wifi / 3G, camera / SD card
* app management: select user, complete survey and submit it 
* Ethics: - privacy, asking for permission, responsibility for phone, awareness duration capture, GPS


### Technical notes
* Documentation is stored in akvo-flow-docs repository, in markdown format and sphynx. 
* Readthedocs is used to publish the documentation online
* Sphynx is used to create pdf versions of the documentation
* see the technical design document for more details 
