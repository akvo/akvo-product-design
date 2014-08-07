# Technical Design document

Title
-------------

### Overview
The aim is to create a REST api for Akvo FLOW.

### Location
The API will be available under /api

### Versioning
The API will be versioned by using v1, v2, etc, in the path:
/api/v1/projects, /api/v2/projects, etc.

### Protocol
https only

### Datatypes
json only

### Authentication
To be decided.

Requests must include a URL-encoded api_key.

### Implementation
The REST service will use the same code as the REST service serving the dashboard.
