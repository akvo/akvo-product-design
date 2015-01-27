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

### Technologies
Listing of the tech stack of the feature, any dependencies on versions, additional libraries or resources.

Clojurescript client: Retrieves published survey definitions and renders them; supports local storage of responses as survey is being filled out; supports validation of input; submits responses to FLOW services backend

Akvo FLOW services backend: Hosts clojurescript client, handle unique identification of each webform request/response; generates zip file containing survey response and posts to object store, informs GAE that responses have been submitted.

FLOW Dashboard: embedding web forms?

Object store: store zipped survey responses


### Testing:


### Estimates:

Clojurescript client:
    * Survey definition retrieval + rendering
    * Survey response input validation
    * Survey response processing + submission

FLOW services backend:
    * Survey response management (unique identification + coupling to a request)
    * Survey response processing, i.e. generation of zip

FLOW Dashboard:
    * Embedding webforms?

Approved and ready for Coding by: 