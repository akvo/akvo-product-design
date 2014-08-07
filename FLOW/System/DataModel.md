### Data model kinds

#### Projects
* project group
* project
* form
* question group
* question
* data-column
* option
* translation

#### Users
* User
* Role
* Permission
* Enterprise
* Sub-org
* User group
* User settings
* Assignment

#### Data
* Form instance (Survey instance)
* Question answer
* Entity instance (SurveyedLocale)
* Summary objects
* IngestEvent? (to log what has been ingested)

#### Devices
* Devices
* Device status

#### Reports
* Notifications
* Report definition

#### System
* Messages

#### Maps
* Clusters
* Custom map definition

## Data model details
* Every mutable kind has a organisation id, a created-datetime field, a last-modified-datetime, and a last-modified-user field.
* The question answer kind is immutable, and therefore changes are created as append only.

## How questions are coupled



