# Technical Design document

JSON serialization for form responses
-------------------------------------

### Overview
The new JSON format will be a *data format agreement* between the app and the backend, accurately specifying the
schema (and version) the data is represented with. To accomplish this, we will probably want to look into the usage
of [json-schema](http://json-schema.org/)

### Minimum Viable Product
Every component of the system (GAE, flow-services, app) needs to be adapted to the usage of JSON.
Besides future extensions to the data format, or upgrades to the used schema (versioning), the feature cannot
be trimmed further, therefore the MVP is quite likely to be the final product as well.

### Technologies
* [json-schema](http://json-schema.org/)

### Testing
The creation of various unit tests would be highly beneficial here.

### Estimates
TBD

Approved and ready for Coding by: 
