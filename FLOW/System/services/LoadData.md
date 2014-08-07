Load data
-------------------

### Purpose
* To ingest sources (such as zip files, sensor, web form, edits) containing surveyInstance data
* To extract and validate the data
* To publish surveyInstance data messages on the message queue
* Depending on the type, geocode the data
* Persist the data

### Request interface
###### Endpoints
* /ingest-zip (for zip files)
* /ingest-sensor (for sensors)
* /ingest-web-form (web forms)
* /ingest-edits (data cleaning)

###### Endpoint: /ingestzip
A HTTP interface using the following URL parameters:
* org-id: the organisation id, for example akvoflow-12
* filename: the name of the zipfile, without the .zip, for example wfp100067415925798

**JSON response in case the request is accepted:**
Body: empty
HTTP: 200

**JSON response in case request is not accepted:**
Body: {message:\"Not a valid request. The filename and org-id key need to be present\"}
HTTP: 400

###### Endpoint 2 ... 4


### Implementation

###### /ingestzip
1. URL is received and tested for presence non-empty org-id and filename. If these are present, the job is excepted and a 200 reply is given. If not, a 400 reply and an error message.
2. The job is posted to a queue "flow-load-data"
3. A consumer listening to the flow-load-data queue accepts the message, ingests the zip file, and splits the data into formInstance chunks. If an error is encountered this is logged.
4. The formInstance chunks are posted as messages to a queue "flow-form-instance". This queue is also fed by other producers, such as formInstances from the web form, sensors, or other sources.
5. A consumer listening to the "flow-form-instance" queue accepts the message, and processes it: 
	* If UUID known, only process new parts or updates existing parts


Once the form instance is saved, it is send to a queue to create or add to an entityInstance. There it will get geocoded if needed.

### Services


### Queues
1. flow-load-data: where jobs get posted
2. flow-form-instance, where curated form-instance data structures are posted
3. flow-entity-instance: where persisted forms instances are posted, to be processed to entity instances.


