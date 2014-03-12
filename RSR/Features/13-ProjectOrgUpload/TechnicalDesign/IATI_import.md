# Outline of how to move the complexity in the IATI XML import process from the API to an external service.

This document is an expansion of the [ProjectOrgUpload.md](https://github.com/akvo/akvo-product-design/blob/master/RSR/Features/13-ProjectOrgUpload/TechnicalDesign/ProjectOrgUpload.md) bringing more detail and stretching the scope.

Curently we are importing XML from Cordaid using three command line scripts. Two of those scripts have to be run on the server to which data data is imported, while the third uses the API, but on the API side there are is custom code to handle the Cordaid special cases of importing IATI activity data. The whole import of IATI XMl is actually a special case with separate resources and underlying code.

### Current import process

The following is a more detailed overview of what happens when we import IATI activites and attendant information. (Steps marked (g) are general steps that apply to all imports, (p) means partly general. All other steps describe Cordaid-specific tasks. [(N)](#) references the step in the [outline below](#implementation-steps) that would implement the current script step.).

### pre_import.py

pre_import.py does the following, in order:

* Check that the Cordaid business units (BUs) exist as Organisations in RSR. [(2)](#2)
* get_or_create Categories and FocusAreas for the BUs [(3)](#3)
* Check that Cordaid and DGIS are in the DB and can be found using theis IATI IDs [(2)](#2)
* get_or_create benchmarknames for the categories, harvested form the indicator/title tags on the XML [(3)](#3)
* Loop over all orgs in the XML [(2)](#2):

    Using the Cordaid internal ID as lookup try to find the org in RSR
    * (p) If the org isn't found, create it and create an InternalOrganisationID record linking it to Cordaid
    * (g) If one instance of the org is found, update it using the data from the XML
    * (g) If more than one instance is found, log an error and continue to next org
    * (p) If there is an image associated with the org, set it as logo for the org
    * (g) If there is a location, set it as primary location for the org

### cordaid_project_upload.py

Loop over the activities in the XML and do: [(5)](#5)

* (g) Check that there is at least one participating-org. If none is found log an error and continue to next activity
* (p) Try to find a project first by using the Cordaid internal ID and failing that the IATI-ID

    Depending on how many objects were found do:
    * (g) None: Create a new project using the activity XML
    * (g) One: Update the existing project
    * (g) More than one: log an error and continue

The following Cordaid specific handling happens in the API code that gets the XML and processes it.

In the XML:

* Find iati-activity/@akvo:business-unit-id and set as meta data that is used in the API code [(6)](#6)
* Remove Cordaid budget info, as this is handled by post_import.py [(6)](#6)

In the API code:
* Set the category for the project from the BU it is associated with [(6)](#6)
* Create Benchmarks (when they have a value > 0) (5 or 6)
* Find Organisations and create Partnership objects linking them to Project. Lookup tries using RSR ID, IATI ID and internal org ID, in that order. [(5)](#5)
* If this is an update of an existing Project all related objects (Goal, BudgetItem, ProjectLocation, Partnership, Benchmark, category) are deleted and created anew from the XML. [(5)](#5)

post_import.py

* Set the publishing status for all projects in the activities XML [(6)](#6)
* (p) If there is an image, set it as the project's image [(6)](#6)
* For each Project create up to two Partnership objects that "fix" the funding: [(6)](#6)
    * Using budget[@akvo:budget-from="Cordaid"] set Cordaid as a funding partner with that amount
    * Using budget[@akvo:budget-from="Others"] set The "Other funders" org as a funding partner with that amount
    * Together those two amounts should equal the budget for of the project so that donation buttons don't appear. This isn't verified.

## Reasons for change

We are in the process of on-boarding RAIN in the IATI XML import process. RAIN's XML is not identical to Cordaid's in structure and therefore there are other requirements for special cases that need to run when importing data from RAIN. In an ideal world we'd like to have no special cases of course, but Cordaid was first on the scene and had a number of requirements that we decided to allow for. This is also a learning process and what is currently special cases for two partners might well grow into being standard parts of how we import IATI XML. We should of course minimize the special cases we allow and handle but there will probably always be some need for it.

 The import process requires a lot of massaging fo the incoming XML before we can load the data into RSR. Currently the data transformation happens in many places: in two of the three scripts, in the XSLT that turns IATI XML into (almost) Tastypie XML, and in the python code in the POST and PUT handlers of the API code.

 It's a mess. We have half a dozen or more organisations knocking at our door wanting to use the API to import their data into RSR. To be able to cope the process needs structuring and simplification.

 On a lower technical level there are also a reasons for change. We are using the Tastypie API framework for the major part of the RSR API and it has served us well when creating the read API. But it is quite hard to use when you need to heavily customize the behaviour and there is now a "competitor", the Django REST framework, that is more modern in its design, and overall a nicer framework to use. The current implementation is also uses separate resources (API endpoints, URLs...) for the "normal" RSR models, like Organisation and Project etc, and the resources for the IATI import. This makes for code duplication and thus becomes a maintenance burden.

 ## Plan for change of the XML loading process

 My proposal is to move as much as possible of the complexity of transforming the XML outside of RSR. The RSR API should allow for data input as one canonical data structure only (although it can still support multiple data formats following this structure). The transformation of incoming data, for example in the form of IATI formatted XML from Cordaid, happens in a separate application. Information needed to be able to transform the data uses the API to query RSR.

## Implementation steps

To ensure that we have a working import process at all times I think this change has to be made in several steps.

<a name="1"></a>
  1) Create a separate app that manages the running of the current scripts.
    This app will still depend on RSR so I think it makes sense to put it in RSR to begin with, with a mind to making it separate. Or it could be a separate project from the start, but it will need to import from RSR and it has to run on the same machine as where the data is going. See [ProjectOrgUpload.md](https://github.com/akvo/akvo-product-design/blob/master/RSR/Features/13-ProjectOrgUpload/TechnicalDesign/ProjectOrgUpload.md) for more detail.

<a name="2"></a>
  2) Use the Django REST framework (DRF) API to load organisations. This part of the API is already in place already. This would include checking that all Cordaid business units exist as orgs and also adds internal organisation IDs.

<a name="3"></a>
  3) Create DRF-based API endpoints for Benchmarknames, FocusAreas and Categories and use this to create benchmark names, and check that Focus Areas and Categories mapping to the BUs exist. At this point the pre_import.py script will be fully decoupled, i.e. will use the API for all tasks and Organisations can completely imported using the DRF-based API.

<a name="4"></a>
  4) Create DRF-based API endpoints for Project, Goal, BudgetItem, ProjectLocation, Partnership, Benchmark. This is a preliminary step that doesn't change how the scripts work, but is needed for the next step.

<a name="5"></a>
  5) Implement a new IATI XML transmogrifier (Taking IATI XML and turning it into a data fromat that the RS API can consume). The current implementation uses an XSLT to transform the IATI XML to XML that is close to what the Tastypie API expects. However after having worked with XSLT for a while I see more drawbacks than advantages with continuing to use that and would rather move to a totally python-based solution using the lxml library. The transmogrifier should implement base transform of standard IATI XML with "default" akvo extensions, and then make it possible to extend the code to allow for special cases as needed for different organisations' data. See this implementation idea XXX.

<a name="6"></a>
  6) Implement the spacial cases for Cordaid to be able to load their data. This would currently include setting up Partnership objects for their business units, to set the budget and to fully fund the projects, load the project images based on their file names that map to an attribute in the XML and create benchmarks. This step needs to be finished before the Cordaid IATI XML can be imported using the DRF-based API.

### Code sketch

A code sketch of a python class hierarchy for finding data in the XML and mapping it to fields on a Django model can be found [here](datamuncher.py).

