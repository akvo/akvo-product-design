# Project & Organisation Upload

### Description of the current workflow

A rough overview of the steps taken when importing a Cordaid batch.

#### Assemble all files in a folder on the server
The files needed are the organisations XML file, the activities XML file, the images for the projects, in a folder, and the images for the organisation in a folder.
All files/folders are put in the same root folder and either given names that match the settings or the settings are changed to match the file names.
So far the activites files have had the wrong URI for the akvo namespace so that must also be edited.

#### Run the pre_import.py script

Pre import handles the following:

* Checks that the Cordaid business units (BUs) exist as organisations
* Get or create categories and focus areas associated with the BUs
* Creates new orgs from the XML. Note that existing orgs are not changed!
* Sets locations for all orgs in the XML
* Sets logos for all orgs in the XML

A log file is generated with the following columns:
* __internal_id__: the Cordaid internal ID of the org
* __pk__: the RSR ID of the org
* __label__: the name of the org
* __event__: the action taken, e.g. organisation created, set image
* __extra__: extra info relevant to the event, e.g. the file name of the logo when added or the text of an error message
		
#### Run the project_upload.py script

Project upload does the following for each activity in the XML:

* Tries to find a project matching the activity. This is done using the Cordaid internal ID if it exists and if it doesn't it uses the IATI activity ID.
* If a project is found the project itself is updated, while all related information such as budgets, locations etc are deleted and created anew based on the current activity XML data.
* If there is no project match a new project is created from the activity XML data.

A log file is generated with the following columns:

* __iati_id__: the IATI activity ID
* __pk__: the RSR ID of the org
* __event__: the action taken, e.g. project created or an error code
* __extra__: extra info about errors

#### Run the post_import.py script

Post import we do the following:

* Publishing status is set using the activity XML data
* Images are set for the projects where an image is found
* Cordaid and "Other funders" are set up as funding partners to the project and the total funding always matches the budget so the project is shown as fully funded.
* A BugetItem is created for the total value of the project.

A log file is generated with columns like the pre_import script

## New unified workflow for uploading IATI activities and organisations to RSR

The current manual method of importing data is cumbersome and error prone. The logs created form some kind of audit trail, but there is no central place where we can view everything that has happened. It also suffers badly from a bus factor 1 as currently only Gabriel knows how to do this :stuck_out_tongue: 

One idea is to create a web interface for managing this process. This could be done either in the RSR admin or using custom templates/forms. Using the admin is nice from the point of view that a lot of things are easily built with the admin toolbox, but if the solution is too far from what the admin is good at representing, a database table, then it might be better with a custom solution.

#### Data model
For a single uploading session the following data should be stored:

* A label. To be able to easily distinguish between uploads, e.g. "Cordaid March 2014"
* The activites XML file
* The organisation XML file
* The project images
* The organisation logos
* The log files resulting from running the scripts
* A notes field for general use (?)
* Timestamp fields (?)

#### Actions:

The following actions should be possible to perform:

* Upload organisations XML
* Upload activities XML
* Upload images for organisations
* Upload images for activities
* Run the pre loading script
* Run the organisation uploading script
* Run the post loading script
* Extract the logs in a usable format, CSV or XLS

### Validation

Currently no validation of the files is made before running the scripts. Some basic validation should be performed at a minimum, but ideally it should be possible to undo the running of a script or validation be done before running making sure all is well.
