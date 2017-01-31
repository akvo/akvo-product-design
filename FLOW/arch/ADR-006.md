# ADR 006: App datapoint sync and display architecture improvement

## Context

Currently, when user requests data point sync from either DataPointsMapFragment or SurveyedLocaleListFragment and a service, 
SurveyedDataPointSyncService is started and for each batch of datapoints both fragments get notified of new data available via local Broadcast which both subscribe too. While data is being loaded a non-blocking "loading" ui is shown. Once the loading is finished
that loading needs to be dismissed. We also display a snackBar with the number of updated datapoints or some eventual errors.

## Decision

The current implementation is not ideal since if user leaves the fragments view, the service will still send the broadcast even
if there is no ui waiting for it. Both fragments have to subscribe to the broadcast even if only one of them that will display 
the error/success snackBars. It would be much better to have the ui subscribe to changes in the database data instead of broarcasts.
That way the service does not need to notify ui of new data being available instead when the service inserts data into the database
the ui will automatically be notified. RX Java can be used for this, an example is this library https://github.com/square/sqlbrite.
This task also requires the refactor of this feature (independently from the rest of the application). We will separate the ui and
view (fragment and presenter) logic from domain logic (business logic, use cases) and the data logic (data sources sych as database 
and network). This separation of concerns will allow us to add unit tests to separate components which will have a Single 
Responsability.

## Consequences

* **Only the data points sync and diplay functionality will be affected**
* Separate the project into 3 modules: app, domain, data
* Move all the view logic to presenter, the fragments will only dispplay and collect user input
* Presenters will subscribe to changes in the database
* Create UseCase for retrieving datapoints from network
* Create UseCase for retrieving datapoints from the database
* Create Network datasource
* Create Database datasource
* Remove broadcast sending and broadcast receivers 
* Create error management system in the UseCase logic: separate network errors, other expected errors from unexpected 
ones and notify ui via a subscriber.
