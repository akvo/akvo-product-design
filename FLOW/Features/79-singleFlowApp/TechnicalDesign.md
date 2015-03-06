
#### Technical design Single FLOW app

#### Dashboard
* On the dashboard, an admin user can create an 8-digit access key, which is formatted like a credit card number
* In addition, the user can specify the details of an admin account, which will be automatically created on the device. (to be decided later)
* On the dashboard the access code can be revoked
* On the dashboard, an admin user can create a 'access file', which is send to the user by email. (similar to 'manual transfer file' for forms))
* Dashboard uses the flow services key api to request a new key when a user creates a key. This key is displayed to the user, who can revoke it
* A way to export an access file

#### Device
* On the device, a user can enter the code, which will download the configuration information for the device
* The phone displays a warning if the number is not a 'valid' key, i.e., if the checksum digit is not correct. 
* Spaces in the entered number are ignored
* Alternatively, the admin user can place the 'access file' in the AkvoFLOW/setup folder via USB. This should be encrypted
* Upon reception of the code, the phone connects to FLOW services, and downloads the configuration information
* If the access file is placed in the setup folder, it is read, stored in the datastore, and deleted.
* After the connection has been made, the admin user account is automatically created on the phone, if this was set up on the dashboard. (to be discussed)

#### FLOW services
* An endpoint that sends JSON-formatted configuration information based on a key
* An endpoint for key management: create new unique code, revoke code, set expiry of code
* sqlite database for key management

Security: 
* this key only determines if a device is allowed to add data to an instance, as the s3 keys that are in the configuration information are created to only allow data upload.
