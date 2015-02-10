# Technical Design document

Title
-------------

### Overview
Webforms functionality is intended to enable submission of survey responses from a web browser to the Akvo FLOW backend.  These forms will be rendered based on the latest **published** version of a survey definition. A user will have access to the URL of the webform and when they visit this they will be presented with survey questions. (what about an *add response* link?)  The implementation of this solution should avoid, as much as possible, modification to the Google App Engine backend component of Akvo FLOW.

### Minimum Viable Product
The minimum level of functionality for this product should:
* correctly render the different question types of a published survey definition, when viewed in a browser.
* enable submission of a survey response in manner similar to the FLOW mobile app, i.e., persist the response to an object store and then process the persisted response file to extract data to the datastore.

### Final Product
A final production should have:
* a well defined page flow for filling in multiple forms or single forms per survey
* the possibility for customising/styling the forms with logos, images etc.
* the possibility to embed the web based submission forms into a web page?

### Technologies
Listing of the tech stack of the feature, any dependencies on versions, additional libraries or resources.

* Clojurescript client:
	- gets form definition from API in JSON format from flow services
	- renders from in html
	- stores asnwer data locally until submit time
	- at submit, sends data to flow services in JSON format

* Akvo FLOW services backend: 
	- reads form XML format from s3
	- caches XML
	- services form definition API
	- services form data submission API
	- serializes form data to object store
	- notifies GAE that data is ready for ingestion.

* FLOW Dashboard:
	- UI for generating web form access URL with unique code for survey

* Object store: store zipped survey responses, in same way as device.


### Testing:

### Milestones:

Akvo FLOW services backend:
1. From the URL, determine the requested survey and the instance. Should this be encoded in the URL somehow, or be retrieved by the FLOW Services? This system will be multitenant, so it will need to know from which instance a request comes. The easiest might be to include the instance in the URL, and add a unique code, after which FLOW services does a GET request to the instance to know which survey is requested. The unique code (or list of codes) could then be managed on the GAE instance.

2. Read the XML file and cache it locally (check version of survey using head request)?

3. Implement an API that delivers a JSON representation of the survey from the XML file

4. Implement an API that receives response data in JSON, and serializes this to a format recognised by GAE. Includes storing it in the object store, and notify google app engine, using the same endpoint as devices use

Clojurescript Client:
1. Based on the URL, read the form definition from FLOW services

2. Render html forms based on the definition

3. Store data in local storage

4. Upon submit, serialize data and PUT it to FLOW services data api

FLOW Dashboard

1. UI to create one or more unique web links for survey. 

2. It should be possible to retract / delete a link
