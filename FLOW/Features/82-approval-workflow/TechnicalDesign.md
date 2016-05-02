## Data approval
We will implement a data approval / workflow system. Basically, this means that datapoints can have a status, and that we have rules and UI to move from one status to another.

## Conceptual model
The conceptual model is that of a state machine, in which data points have a **status**, and a user has the possibility to move a datapoint from one status to another, based on permissions.


## Data structure
1) introduce a 'workflowGroup' kind, with properties:
* defaults: id, lastUpdatedDate, createdDate
* displayName: text field

2) introduce a 'workflowItem' kind, with properties
* defaults: id, lastUpdatedDate, createdDate
* workflowGroupId: foreign key to workflow group

3) introduce a 'workflowItemHistory' kind, with properties
* defaults: id, lastUpdatedDate, createdDate
* workflowGroup id: foreign key to workflow group
* workflowItemId: foreign key to workflow item
* timestamp: unix timestamp
* comment: text field

4) introduce a 'workflowPermission' kind, with properties:
* defaults: id, lastUpdatedDate, createdDate
* userId: foreign key to user
* surveyGroupId: foreign key to surveyGroup
* workflowItemId: foreign key to workflowItem

5) add a 'workflowEnabled' flag to the surveyGroup kind
6) add a 'workflowGroup' field to the surveyGroup kind
7) add a 'workflowItemId' field to the datapoint kind (surveyedLocale kind): foreign key to the workflowItem
8) add a 'workflowStatusId' field to the datapoint kind: Enum with types "APPROVED, REJECTED, PENDING"

## Dashboard
* In the survey advanced settings section, add a checkbox 'enable workflow features', and a dropdown allowing the choice of which workflow to use
* When a workflow is chosen, display the workflow steps, with an action 'users responsible'
* When this action on a particular workflow step is clicked, the (admin) user can add users to a workflow step
* In the datapoint list, add a column 'workflow status', displaying the currently active status, as shown in the mockup
* When the 'workflow status' item in the header is clicked, a popup is shown where filters on the column can be managed, as shown in the popup
* When a workflow status item in one of the data points in the list is clicked, a popup is shown with the workflow history, and the ability to select a new status and add a comment, as shown in the mockup

## Backend
In addition to adding the new kinds described above:
* add a permission to 'manage workflows', which is on by default for the admin role and off for the others
* In the report exports, export the workflow status as a single column, combining the workflow item and the status, so 'Financial Audit - APPROVED'.
* In the report imports, ignore this column
