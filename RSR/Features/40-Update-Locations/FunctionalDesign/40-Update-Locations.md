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
~~With the release of RSR Up we've brought project updating to the field on your Android device, but now we will be expanding the reach and effectiveness of both this and direct web updating by including the Geolocation from your uploaded images within the information stored and visualised on RSR.~~

~~When you take an image, most devices capture and store the geolocation of where the image was taken within the hidden meta-data. Previously this information is lost within the uploading process, but with this neew feature we'll be capturing and storing both the geo-coordinates and the timestamp of when an image is taken so that this can be used wherever you wish.~~

With the release of RSR Up we've brought project updating to the field on your Android device, but now we will be expanding the reach and effectiveness of both this and direct web updating by including location information from users who are submitting updates.

This information will come in 2 streams providing a clear picture of where updates are being created and reported from.

Firstly, we will provide an option to users to enter their current location when they are creating their updates. The button will utilise the device GPS functionality to log where they are at that time. This will be stored in RSR and visualised as a physical location on the map.

Secondly, we will be scanning incoming image files that are uploaded to RSR using RSR Up or via the web view. If the image contains geolocation meta data then we will store and display this below the image along with the image caption and credit information completed by the user.

## Initial features
#### Collecting data
- Provide a "Get my location" button to be displayed on the Add an Update screen in RSR Web.
- Provide a "Get my location" button to be displayed on the Add an Update screen in RSR Up. 
- Collect Geolocation and Timestamp from Images added to updates using RSR Web view
- Collect Geolocation and Tiemstamp from Images added to updates using RSR Up
- Allow the user to prevent the Geolocation and Timestamp information to be delivered with their updates

#### Displaying Data
- Visualise the Update Geolocation informaiton on the Update view in RSR, e.g:
	- http://rsr.akvo.org/project/2/update/5012/
	- http://akvo.akvoapp.org/en/project/2/update/5012/
- Visualise the Update Geolocation information on the Project page maps
	- With a distinguished pin for project and update locations
- Visualise Update locations within a Global map (within the Project Global or on it's own Update Global)
- Visualise on the Akvo Pages heading map (with distinguished pins): http://akvo.akvoapp.org
- Visualise within Project and Update widgets
- Visualise the Geolocation Coordinates and Timestamp obtained from Images below the images alongside the Caption and Credit information

## Non Goals
- Initially we will not be fully validating that the data picked up from images uploaded has not been tampered with.
- ~~We will not be allowing partners to manually enter their Geolocation using RSR Up or RSR Web View~~
- ~~We will not be allowing a Geolocation to be added using a Devices GPS functionality.~~

## User Experience

#### 1 - Web view updating
- An RSR user visits the project they would like to update and clicks on the Add Update button
- The user writes their text and uploads an image to their update.
- RSR collects the geolocation and timestamp information from the image and displays this.
- The user can choose to remove this information while retaining the image before submitting the update.
- The user decides if they would like to add their current location using the browser location service.


#### 2 - RSR Up updating 
- An RSR user visits the project they would like to update within RSR Up and selects to Add an update.
- The user is presented with a "Get My Location" button.
- When pressed this button collects the current location of the device and includes this within the information delivered with the update.
- The user writes their text and opens the device camera to take a new image.
- If the Geolocation adn Timestamp information is present in the image meta data then RSR Up captures this during the resizing process.
- Once the image is added to the update, the user can see the location and timestamp information next to the thumbnail.
- The user can decide if they would like to include or remove this information when posting the image.
- ~~RSR Up checks if the device has GPS enabled and provides the user with the option to turn this on if they would like to add location and timestamp information to their image.~~


#### ~~3 - RSR Up updating - existing image~~
~~An RSR user visits the project they would like to update within RSR Up and selects to add an update.
The user writes their text and selects to add an existing image from their device library.
RSR Up checks to see if the location and timestamp information is present within the image metadata.
If present RSR Up asks the user whether they would like to include this information within the update being submitted.~~


#### 4 - RSR Up location option
- An RSR user does not want to include any location information within their updates.
- Within the settings on the app, the user can select an option to remove the Button and also remove all location information from Images uploaded.
- ~~The user can choose to include update information: always, never or ask for each update.~~

## Questions

1. Should we always display the timestamp information within the information displayed?
Yes, this should be displayed alongside the other data like credit and caption
2. What can we look into with regard to verification of metadata included within images?
Not needed at this time, the manually collected location is leading in terms of display. Will look into this option later on.
3. Should the options be on the app level or account level when adding updates?
4. Is there a use case for also requesting/including geolocation directly from the device or web browser?
Yes - based on further user discussion, adding location from the device directly is a more appropriate solution to implement, whilst also capturing the geolocation information from images uploaded rather than losing this information in the resizing process.
5. How does the information taken from gallery images work within this process?
