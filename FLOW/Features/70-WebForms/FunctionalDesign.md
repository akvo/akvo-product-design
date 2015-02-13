# Functional Design document

Web forms
-------------

### Overview
The aim is to enable users to fill in survey forms through a web form

### Marketing description
Using Akvo FLOW webforms, you can let people fill in a FLOW survey through an online web form. Simply send someone the link to the form by email. The web form supports all the functionality of FLOW forms, for example skip logic, photo upload, cascading questions, etc.

### Initial features
* Mark certain forms as 'webform enabled'
* At the form page, get a unique link to this form, which can be send by email
* When the user visits this link, the survey is displayed
* Question groups are rendered as tabs / "previous-next" page
* users can move backward and forward while putting in the information\
* at the end of the survey, a 'submit' button is displayed that submits the info
* skip logic is enabled
* numerical validation is enabled
* Cascasding questions are enabled
* Photo upload is enabled
* mandatory questions are enabled
* when the user goes temporarily offline, this should not affect the data collection, as long as the user doesn't close the tab

### Limitations
* For Monitoring surveys, only the registration form can be used with a web form. The main reason is that we don't want to expose a list of data points, due to security concerns. 
* The survey form will have minimal styling - no logo. This might be added at a later date.
* The web form will not show data entered in a previous form, or any other form of data coupling.

### Scenarios
1. An organisation collects data mainly in the field using the FLOW app, but also has a survey for some financial data, that is present in their offices. In the past, this information was submitted by project managers using an email, or by sending an excel file. Now, they have created a FLOW survey for it using a web form. Using email, they distribute the link. In their 30 field offices, desk officers fill in the required form each quarter.

2. An organisation wants to do a quick satisfaction survey among their staff. To do so, they create a FLOW form, and send the web form to all the staff in the organisation, to collect feedback.

### Technical notes
* The idea is to make this system independent of Google App Engine as much as possible, and to streamline the way clients enter data into the system: preferably the devices and the web form have a common funnel into the FLOW backend.
* A second idea is to make the data as multi-purpose as possible, for example also able to handle a preview of the survey.
* Due to security reasons, it might make sense to let the web form system create zip files in the same way as devices do, upload them to s3 in the same way, and then notify GAE. In this case, that system doesn't need to write to GAE directly.