# Update Locations

## Overview
We need to start collecting and displaying Geolocations within individual project updates. This will allow the information to be used within project and programme reporting as well as being displayed on maps and visualisations for organisations and Akvo itself.

## References
https://github.com/akvo/akvo-product-design/issues/40
https://github.com/akvo/akvo-rsr-up/issues/22
https://github.com/akvo/akvo-rsr/issues/646

Amitangshu user input:
Priority order for requirements of including Geolocation information within updates:
1. For proving that an update was made in a particular place and at a particular time
2. For displaying on a map.
3. For showing where updates are being made from.

## Marketing description
With the release of RSR Up we've brought project updating to the field on your Android device, but now we will be expanding the reach and effectiveness of both this and direct web updating by including the Geolocation from your uploaded images within the information stored and visualised on RSR.

When you take an image, most devices capture and store the geolocation of where the image was taken within the hidden meta-data. Previously this information is lost within the uploading process, but with this neew feature we'll be capturing and storing both the geo-coordinates and the timestamp of when an image is taken so that this can be used wherever you wish.

## Initial features
#### Collecting data
- Collect Geolocation and Timestamp from Images added to updates using RSR Web view
- Collect Geolocation and Tiemstamp from Images added to updates using RSR Up
- Allow the user to prevent the Geolocation and Timestamp information to be delivered with their updates

#### Displaying Data
- Visualise the Geolocation and Timestamp informaiton on the Update view in RSR, e.g:
	- http://rsr.akvo.org/project/2/update/5012/
	- http://akvo.akvoapp.org/en/project/2/update/5012/
- Visualise the Geolocation information on the Project page maps
	- With a distinguished pin for project and update locations
- Visualise Update locations within a Global map (within the Project Global or on it's own Update Global)
- Visualise on the Akvo Pages heading map (with distinguished pins): http://akvo.akvoapp.org
- Visualise within Project and Update widgets

## Non Goals
- Initially we will not be fully validating that the data picked up from images uploaded has not been tampered with.
- We will not be allowing partners to manually enter their Geolocation using RSR Up or RSR Web View
- We will not be allowing a Geolocation to be added using a Devices GPS functionality.

## User Experience

#### 1 - Web view updating
An RSR user visits the project they would like to update and clicks on the Add Update button
The user writes their text and uploads a video to their update
RSR collects the geolocation and timestamp information from the image and displays this.
The user can choose to remove this information while retaining the image before submitting the update.

#### 2 - RSR Up updating - new image
An RSR user visits the project they would like to update within RSR Up and selects to Add an update.
The user writes their text and opens the device camera to take a new image
RSR Up checks if the device has GPS enabled and provides the user with the option to turn this on if they would like to add location information to their image.
Once the image is added to the update, the user can see the location and timestamp information next to the thumbnail.

#### 3 - RSR Up updating - existing image
An RSR user visits the project they would like to update within RSR Up and selects to add an update.
The user writes their text and selects to add an existing image from their device library.
RSR Up checks to see if the location and timestamp information is present within the image metadata.
If present RSR Up asks the user whether they would like to include this information within the update being submitted.

#### 4 - RSR Up location option
An RSR user does not want to include any location information within their updates.
Within the settings on the app, the user can select an option for all of their updates.
The user can choose to include update information: always, never or ask for each update.

## Questions

1. Should we always display the timestamp information within the information displayed?
2. What can we look into with regard to verification of metadata included within images?
3. Should the options be on the app level or account level when adding updates?
4. Is there a use case for also requesting/including geolocation directly from the device or web browser?
5. How does the information taken from gallery images work within this process?