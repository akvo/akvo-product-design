## RSR CRUD API

This document provides a high level view of how to implement a full read/write API for RSR. To some extent it builds on a set of [previous design documents](https://github.com/akvo/akvo-product-design/tree/master/RSR/Features/13-ProjectOrgUpload) but the requirements are now broader and require a more general solution.

The need for two-way communication through the API is coming from multiple directions. We have IATI data that's to be transformed and input, we have organisations that want to load project data through the API. There is also the Up mobile app that currently creates project updates using the API.

### Tech base

Currently RSR uses the framework [Tastypie](https://django-tastypie.readthedocs.org/en/latest/) to provide most of the RSR data for reading and a custom solution for loading IATI formatted data as RSR projects.

In the years since the RSR API work started another framework, the [Django REST framework (DRF)](http://www.django-rest-framework.org/), has made great progress and is, to my mind, a superior base to build the RSR API on. Since the current API is used, in a read-only mode, in various places, we will need to support it at least for the near future. However the new read/write API should be based on DRF.

### Implementation overview

There are two major uses of the new API, but as we will see they will use the same solution. 

There have been inquiries from organisations if it's possible to load project information into RSR using the API. This information currently lives in external databases and would need to be transformed into an RSR-compatible format that can be consumed by the API. 

We also have IATI-formatted data that needs to be loaded into RSR. This is currently done by transforming the IATI XML using XSLT into a format that is, mostly, compatible with Tastypie's XML API format, and together with post-processing in the API itself the IATI data is turned into RSR project data. The IATI import is currently a very "custom" solution and is in need of generalization. The complexity of the transform is also in the "wrong" place, as it is part of the API.

To be able to handle a lot of different needs in terms of getting data into RSR the API interface should be as simple as possible. Any special cases that need to be taken into account should be managed externally. So the two use cases above should use the API in the same way to enter/edit data into RSR, meaning that all "data massaging" needs to be handled on the outside, before the data is sent to RSR.

#### Technically this boils down to:

API endpoints that map 1-to-1 to the RSR models (database tables).

Full support for GET, POST, PUT, DELETE (and possibly PATCH).

Security model based on RSR Groups permissions, initially using API keys (tokens) but there are other authentication schemes that can be implemented.

Support for JSON only.

### Implementation plan

The suggested road map for implementing the general read/write API has the following steps. After step 2. validation of the plan should be made before forging ahead.

1. Create API endpoints for all (or at least most of) the RSR models. The endpoints support all HTTP verbs (possibly excepting PATCH).
2. Create a set of JSON files that provide example data showing how to create a fully populated RSR project. Also an sample script showing how to load the JSON using the API.
3. Implement the authentication/authorization rules needed for external users to be able to use the API. The key goal here is to allow external users to manipulate "their"" data while safeguarding the rest of the system.
4. Implement an external method for transforming IATI formatted XML into JSON that RSR can consume. This is a complex issue with multiple layers and is subject to a whole separate design doc!