## Data approval
We will implement a data approval / workflow system. Basically, this means that datapoints can have a status, and that we have rules and UI to move from one status to another.

## Conceptual model
The conceptual model is that of a state machine.
The conceptual model consists of:
* datapoints can be assigned a **status type**
* a status type defines the different **statuses** that the status type contains, and the connections between them. A connection is non-directional.

## Data model
We need the following data kinds:

### StatusType
Fields: id, display name, list of status id, list of connection id

Usage: describes the type of status, for example 'approval workflow', or 'quality control'. Different surveys might use different status types.

### Status
Fields: id, display name

Usage: describes an individual status within a statusType, for example 'new', 'approval phase 1', 'approval phase 2', 'rejected', 'archived'.

### StatusPermission
Fields: id, userId, statusType, statusId1, statusId2 

Usage: determines which user can change between which statuses. The order of the statuses is not important, as the user can move a datapoint in both directions.

### StatusHistory
Fields: id, datapointId, statusTypeId, oldStatusId, oldStatusDisplayName, newStatusId, newStatusDisplayName, timestamp, userId

Usage: Provides a log of data point status changes, with timestamp. The displaynames are denormalised here, to guard against changes, and keep history accurate.

## Business rules
* If a user has the 1-2 connection, the user can change a status from 1 to 2, and from 2 to 1 (to correct mistakes if necessary)

## UI components
* in datapoint views, it should be possible to filter on a particular status
* in a single datapoint view, the user should be able to change the status if she has the required permission
* When a user changes the status of a datapoint, only those statusses are shown that this user has access to
* If a user wants to change the definition of a status, she should get a warning / dialogue warning about the current datapoints that have that status.
* Statuses are defined in the library, just as Cascades are. The reason is that they are used by multiple surveys.
* The UI should provide options for bulk changing of statusses.

## Roles and Permissions
* changing the definition of status types should be covered by a permission

## Questions
* Should the approval status be on forms or on datapoints?
