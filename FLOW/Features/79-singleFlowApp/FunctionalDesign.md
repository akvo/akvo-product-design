# Functional Design document

Single app for Akvo FLOW
------------------------

### Overview
The aim is to create a single app for FLOW

### Initial features
The feature will contain:
* The FLOW app will be hosted on Google Play and Fdroid
* Everybody can download the app and install it
* A phone user can enter a code on the device, which triggers download of configuration information
* A user can connect the device to multiple FLOW instances. In this case forms and collected data are separated
* If a device is connected to multiple instances, there is a way for a user to switch between instances.

### Benefits
* The Apps are always available (~100% uptime) to download
* The Apps have automatic update functionality
* Ability to search and find the app using Akvo and/or product name
* Not requiring a particular account for downloading (e.g. Google Account)
* Ability to install the app easily on a batch/collection of devices by an organisation
* Easy interface to download
* Ability to all Akvo Android apps to be hosted together
* Not necessary to download additional software to download/update

### Scenarios
* An organisation uses FLOW and buys a new device. The Field manager calls the dashboard manager 
and ask for the key. The dashboard manager sends the key to the field manager by email. The field 
manager downloads the FLOW app from the app store, installs it, and types in the access key. The FLOW
App contacts the FLOW backend and downloads the configuration information. It is now attached to a single instance.
In addition, the App has created a mobile admin account, as this was specified in the dashboard. The field manager logs
into the admin account of the FLOW app, and downloads the needed forms manually.

* An organisation needs to setup 20 new devices offline. They download the apk file from fdroid, and put it on all 20 
devices via USB cable, and install it. After installation, they put the access file that they created earlier, and put
it in the AkvoFLOW/setup/ folder, and start the app. In addition, she puts the form bootstrap file in the /inbox folder. The app installs and reads the access file, and creates the admin account.
The field manager can now log into the device. The forms are loaded from the bootstrap folder.
