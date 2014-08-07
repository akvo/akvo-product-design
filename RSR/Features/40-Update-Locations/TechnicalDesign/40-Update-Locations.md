# Technical Design document

Update Location
-------------

Functional Spec:
https://github.com/akvo/akvo-product-design/blob/master/RSR/Features/40-Update-Locations/FunctionalDesign/40-Update-Locations.md

### Overview
We will be adding Geolocation Information to updates in 2 forms, both of which fulfilling different purposes.

1. Ability to add a users current location to an update which forms the primary location of the update. It can only be added as the actual location that a user is at a point in time, but can be utilised from both the web and Up processes.

2. We will be collecting and storing the location meta-data from images that are uploaded to RSR. This information will form a rich set of complimentary data that can be utilised in a range of uses going forwards.

### Tasklist

#### RSR Up
- [ ] Add the "Get my location" to RSR Up
- [ ] Add user settings to prevent location information in RSR Up
- [ ] Modify resize process to retain meta-data within images in RSR Up

#### RSR Web
- [ ] Add the "Get my location" to RSR Web
- [ ] Add user settings to prevent location information in RSR Web
- [ ] Modify upload process to retain meta-data within images in RSR Web

#### RSR Data & API
- [ ] Create the updatelocation database model
- [ ] Create the additional projectupdate fields to accommodate the image meta-data
- [ ] Expand the RSR API to allow POST of location and meta-data with updates
- [ ] Expand the RSR API to allow GET of location and meta-data with updates
- [ ] Extraction of the image meta-data within RSR of uploaded images to store

#### RSR Visuals
- [ ] Visualise updatelocation within the update (Up, RSR & Pages)
- [ ] Visualise updatelocation within the project (Up, RSR & Pages)
- [ ] Visualise updatelocation within a global map (RSR)
- [ ] Visualise updatelocation within Akvo Pages map (Pages)
- [ ] Visualise updatelocation within Widgets  (RSR & Pages)
- [ ] Visualise image meta-data alongside images (Up, RSR & Pages)

### Technologies
* We need to discover the method we will utilise to extract the meta-data from images.
* We need to discover how to collect the location data from users of RSR Web.
* We will utilise the existing FLOW code for how to capture the current location information from users of RSR Up.
* We should also be looking for the reverse lookup for geolocations feature that is being worked on to collect further enriched data about locations collected.

### Testing
We will need to ensure user testing is in place. The plan is to bring on board several users from the Asia hub to assist in testing this feature from an early stage of production.

As soon as we have a working prototype we will be creating a beta test group to run through the functionality and how it is undertaken by end users.

We will need to test each aspect of the process individually, as well as ensure the user experience of the whole process is optimised.

### Estimates
We aim to have the underlying features present within RSR Up and RSR Web including the database modifications with the use of 2 developer weeks.

We aim to build out the visual aspects of RSR with the additional work of 1 developer week.

We aim to utilise 1 developer week for testing and refining of the feature.

Total: 4 developer weeks to work on this feature.

Approved and ready for Coding by: 