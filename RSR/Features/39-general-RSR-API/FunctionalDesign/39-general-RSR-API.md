# RSR Programme structure

## Overview
We need to build a stable and straightforward API feature for our partners to be able to easily and effectively communicate with the RSR data set and replace many of the manual processes that we currently employ in order for us to work with some of our API enabled partners.

## References
Github Issue: https://github.com/akvo/akvo-product-design/issues/39
Tech Spec: https://github.com/akvo/akvo-product-design/blob/master/RSR/Features/39-general-RSR-API/TechnicalDesign/RSR_crud_api.md
API Design Artcile: http://searchsoa.techtarget.com/tip/API-design-How-to-properly-build-an-application-program-interface
Documenting APIs article: http://blog.parse.com/2012/01/11/designing-great-api-docs/

Examples of well documented APIs:
- GoCardless (UK DirectDebit Gateway): https://developer.gocardless.com
- Mangopay (International Card Processing Gateway): http://docs.mangopay.com/api-references/
- Flickr (Image hosting): https://www.flickr.com/services/api/

## Marketing description
Most organisations have an existing portfolio of projects they are working on with a whole set of data and information in a project management or other database system. If this data needs to be visualised within a platform like RSR then traditionally this would require a large amount of data re-entry.

With this feature, organisations will be able to read, create and update their organisations project information directly. Putting the process in the hands of the data owners allows this process to be carried out as frequently as needed.

## Initial features
- Make all public information accessible through an open API
- Make all organisation specific information accessible through an authenticated API
- Use RSR Permission groups to determine access rights for data
- Provide defined resources to be used to collect combined sets of project information within a single call
- Submitting information to create new projects and organisations
- Update content for existing projects
- Reporting on processes undertaken with the API

## Scenarios
#### 1 - Populating a custom website with project and organisation information
Many partners would like to visualise their RSR project information within their own websites and would like to do this so that the data is displayed in their own formats where the customisation available within Akvo Pages is not enough.

In these instances, they will utilise the Read API in order to collect the right information to be displayed on their website.

#### 2 - Submit an organisations portfolio of projects to be created in RSR
In order to create a series of projects a partner will need to create and send a series of requests to the RSR Write API to create all the objects needed for this visualisation.

Partners will need the right details of what information to send in what order and with what restraints and validation in order to coplete this task.

This scenario is referring to a single time event where maybe also not all the full project information is available to be present within the projects that are being created, but the ongoing management and maintenance of the projects would be carried out within RSR.

An example would be to create a series of pre-populated projects where all existing information is provided but later a project admin will enhance the content before publising the projects.

#### 3 - Synchronise a portfolio data set with an organisations RSR projects
When a partner would like to continually manage and maintain their project content within their own new or existing system then they will need the functionality to successively synchronise their data in an organised and meaningful manner.

Partners will need to provide a series of data objects containing all of their new and existing project and related information together. There should be a standard process for these partners to follow to guide them into delivering the information in the right manner and in the right order.

#### 4 - Populate a map with a group of location data
Maps being displayed on websites need to be populated with a set of data that is specifically suited for the purpose. The data set provided should be smaller than that of the project data set and should provide the location information as well as enough basic information to populate an info-window that is displayed when a point is selected on the map interface.

The data sets being presented could be projects, organisations, updates or a combination of these.

#### 5 - Collect information to create a graph, table or visualisation
Partners may wish to display aggregated information about a selection of projects where only particular items of interest should be taken into account.

This could contain counts of objects such as projects, organisations or updates, or could provide arithmetic operations on underlying data including budgets and results.

#### 6 - Visualise a series of project updates on a website
In order to create a live feed of activities being carried out, Partners need the ability to fetch and present a series of updates within a website page. This information should include all the data collected within the updates as well as the user and organisation information of the submitter of the update.

## User Experience

#### Read API
**1. Selecting a data set**
Partners should be able to choose from a selection of different data sets that provide varying levels of depth and accuracy in terms of the data provided on projects:
- Full project information including all updates, budgets, partners and reporting details
- Basic project information including title, subtitle, summary, location and image
- Project updates
- Location details
- Organisations details
- Aggregated financial or reporting information
- User details

**2. Filtering the data set**
Partners should be able to filter a set of projects based on:
- Connected to a particular project
- Connected to a particular organisation
- Connected to a particular organisation where that organisation has a specific role
- Connected to a particular organisation where that organisation has an internal identifier
- Connected to a particular organisation where that organisation has a specific role and an internal identifier
- Is tagged with one or more keywords
- Linked to one or more categories
- Is located within one or more countries or continental regions
- Has a primary key belonging to a given set
- Published within a given timeframe

#### Write API
**1. Creating input files**
Partners will need to create all the necessary files to send through the API upfront. This will require up to date documentation providing the right series of events that are present within the process they are trying to complete.

**2. Validating input files**
The files that the partner has generated need to be validated - this could be completed as a separate process to allow partners to check prepared files in isolation when developing and ensure that all files are correct before beginning the process of posting to RSR.

**3. POST / PUT Files**
The files created should be sent through the API in the required order so that the necessary objects can be created.

**4. Outcome reporting**
Partners should receive a comprehensive report informing them of the success or failure of all of the objects they have tried to create or update. This should be provided in a standard format and allow for the partner to either read directly or return back into a reporting system.

**5. Cleanup processing**
In the event that some objects are not completely created, it should be possible for invalid items to be cleared from RSR to prevent too many orphaned and unused objects from being present within the database.