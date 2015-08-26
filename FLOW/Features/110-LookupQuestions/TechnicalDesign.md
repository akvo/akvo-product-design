# Technical design document

Lookup question type
--------------------

### Overview
The following document describes the technical implementation of the first approach to support _Lookup questions_
in Akvo FLOW Dashboard and App.

### Minimum Viable Product

* In Akvo FLOW Dashboard:
  * A user must be able to define a question as _Lookup_ type
  * A user must be able to select which _Survey_ will be linked to the question, that populates the 
  possible values
* In Akvo App:
  * A user filling a form with a _Lookup_ question, gets a dropdown with possible values to select one
  * When a user has an _assingment_ containing form with a Lookup question, the App automatically _syncs_ the
  possible values for that question
  * The App must sync the values periodically and incrementally (only get the subset of data that has changed
  since last sync)
  * When encoding the response for that question, the App needs to append the _version_ of the dataset used to
  answer the question

### Final Product

* In Akvo FLOW Dashboard
  * A user should be able to select which questions are part of the _Lookup_. In MVP we're going to use the
  _datapoint name_

### Technologies

* We'll reuse the technique of syncing data based on `lastUpdatedDateTime` property. Initially we have `timestamp`
at time `0`, after the initial sync, we have a new `timestamp` of the last updated entity.
* The _current_ `timestamp` is the _version_ of the dataset used for answering a Lookup question, we encode that
as part of the response
* When syncing data we only sync the datapoint `id` and `name`

### Testing
[TBD]
