Monitoring Features Functional Design
-------------------------------------

### Documents
Github issues:
https://github.com/akvo/akvo-flow/issues/276
https://github.com/akvo/akvo-flow-mobile/issues/32

### Overview
Monitoring features will enabe users to download data on existing points on their phones, and add information to these points This feature introduces the concept of a 'monitored entity', which has a identity and can be tracked over time. Multiple different surveys can contribute data to a single entity.

This can be visualised by comparing it with record files containing paper forms: one of the forms creates the record file, and other forms can be added to the record file. A special form may also exist which archives or closes the record file. The enumerator has access to a certain set of record files, including the forms contained in them.

### Marketing description
**Track things over time with the new FLOW Monitoring Feature**

Taking a survey of something, be it a water point, a tree, or a school, is usually a one-time thing. You collect data, analyse the data, take action, and that's it. But in many cases, you also want to go back at a later date, and do a follow-up: is this pump still working? Has the tree grown? Has that schools' latrine been repaired? This is what we call monitoring: observing the progress of quality of something, some 'entity', over a period of time.

Using the new *Monitoring features* enables Akvo FLOW users to do this. Regular survey forms can be used to register entities, so they can be retrieved later for further data collection. FLOW users can download existing entities to their phones, and add information using additional survey forms. This makes it possible to see how data has changed over time, or to collect new properties of the same entity.

### Initial features
* Surveys can be grouped in a 'Monitoring group'
* One 'registration' survey has the ability to create new 'monitored entities'
* On the device, users can create new monitored entities, and use the 'registration survey' to add the initial information and metadata
* On the device, users can download existing monitored entities, find a specific entity, see the information contained, and contribute information with the surveys in the monitoring survey group
* Existing information on a monitored entity is never deleted or changed, surveys can only contribute new 'facts'
* On the dashboard, users can see a list of monitored entities, and the filled-in surveys contained in them
* On the dashboard, users can export monitored entity information (both the latest state and historical data) as an excel report.

### Non goals
This version will not include:
* user management from the Dashboard

### Scenarios
**Scenario 1 - Water points**
A government has done a comprehensive baseline inventory of their water points in 2011. They now have a database of 40.000 water point records in FLOW, with identifying information and status information. It is now 2013, and they want to repeat the exersize: create new records for new waterpoints, and update the status of water points already in the database. They used a 'waterpoint survey 2011' survey to do the initial survey. They want to use a 'waterpoint survey 2013', which captures some additional information, to update the existing records and create new records. They want to be able to find existing records based on proximity, or ID.

**Scenario 2 - Water meters**
A municipality in a large city manages a set of 40.000 water meters, which need to be visited every 4 months. They want to use several surveys: a 'register new water meter' survey, that is filled in with customer information when a new water meter is registered, a 'change registration details' survey, which is used when the registration information needs to be changed,  a 'record current meter indication', which is used to capture a reading plus an image of the meter, and a 'decomission water meter', which is filled in when a water meter is broken. They want to be able to see a list of watermeters based on proximity, and to be able to filter on name or street.

**Scenario 3 - Patient in a hospital**
A hospital wants to create a patient database. They want to be able to register patients, and define surveys for the different tests that happen to the patient, such as a blood test, malaria test, etc. They also want to be able to archive patient records by using a 'discharge patient' form. They want to be able to restrict access to the patient information using a username/password combination on the device. They also want the information to be stored on the device in secured form.

### User Experience 
**Survey definition on dashboard**
A Project Manager has used FLOW to do a survey on water points, in 2011. For this purpose, she created a survey 'waterpoint survey 2011' in a survey group 'Liberia water points'. Data was collected for 10.000 points. 

Now, in 2014, she wants to know what the current status of the water points is. She starts by enabling monitoring features on the survey group, by opening the group and selecting 'enable monitoring features on this group'. This triggers a dialog explaining what will happen, and the need to select one survey which will be able to create new records. She selects the initial survey 'waterpoint survey 2011'. She also checks the checkbox 'create records for existing data', which will create the records for the data already collected with the 'waterpoint survey 2011'. She confirms her choice, and the records get created. The survey group is now shown as a 'Monitoring group', by some visual styling.

She now creates the new survey, that will be used to update existing points, and create new ones. Because she wants the existing information of a water point, that was collected in 2011, to be automatically taken over in the new 2014 survey, she creates a copy of the original 2011 survey, and renames it to 'water point survey 2014'. Because it is created as a copy, the individual questions will be linked to their originals, which will enable prefilling information across surveys on the device, and will also play a role in timeline analysis. The type and settings of the copied questions are locked, because they need to be the same as the originals. They can be unlinked to their originals by clicking a 'lock' icon on the individual question. Questions can also be linked by hand, in case a linkage is broken by accident. In that case, the type and settings of a question and what it is linked to need to be the same.

Using a survey assignment, she sends the surveys to devices. In the future dashboard, she assigns which users have access to these surveys. She also can specify if a user can download existing records, or only contribute new ones.

**Fill in surveys on device**
An Enumerator opens the app on a device, and logs in. He syncs the app, which will cause the device to download any survey groups and surveys assigned to him. He selects the survey group that he knows contains the survey he will be working with. 

With the proper survey group selected, the device displays a list of current known records. If there are none, a message is displayed. The enumerator can start a new record by clicking a 'plus' icon in the action bar of the device, or, perhaps, by clicking a 'create new record' button on top of the list of records.

When the enumerator starts a new record, the registration form is immediately opened. The enumerator fills in the form and submits it. He then returns to the screen showing the record id, which now also shows the meta-data taken from the filled-in survey, plus the other available surveys. Now, the registration survey is not available any more, and is grayed out. The rest is available. 

If the enumerator wants to change the information filled in using the registration form, another 'update registration information' form needs to be present.

The enumerator can now either fill in a survey within this record, or leave the record and create a new one, or select an other existing one.

When the enumerator selects an existing record, the registration survey is greyed out, and the others are available. In a separate tab, the responses are also available as read-only or saved surveys. The enumerator can enter a survey, fill it in, and submit it. This survey then becomes part of the record from which it was entered.

The enumerator can download existing records by going to the record list screen, and clicking the sync button. The device will then attempt to download records belonging to this survey group.

**View data on dashboard**
When data has come in, the field manager can go to the data tab, and select the 'Records' subtab. On this tab, she first needs to select a survey group. This will display a list of records that have been created by the registration survey in that group. When clicking on one of the records, she can see which surveys have contributed data to this record.

She can also go to the Export tab, and export the records for a certain monitored survey group. She can choose between showing only the latest state of the information in the record, or include historic information. 

### Technical notes
To allow different surveys to add information to the 'same' piece of information, we need a way to identify couple individual questions. This can be accomplished in two ways:

1.  give each question a 'question identifier', or 'property name'. For example, the question 'What is the status of the water point?', could have the property name 'status_water_point'. If you then want to have a question in a different survey to have access to this piece of information, either to display it or to update it, that question can be given the same property name.
2.  questions could refer back to a 'source question', to which they are linked. For example, if a survey is copied, the questions could be automatically coupled to their 'source' questions, so information can be shared. Linked questions need to have the same type and settings. They could also be unlinked by the user.

### Open issues
* historic reporting  - how to visualise the history of a record, for example water meter reading, or status of a water point?

### Domain language
To clarify what we mean by terms, here is a list of domain language:

1. **Data** is collected on **entities**
2. Data is collected with **forms**
3. To users, an entity is identified by means of some **identifying data**, which is collected using a the **registration form** form, and which is saved as a single **meta-data** string on the entity record
4. The combination of the registration form plus other forms is called **entity record**

### Workflow details
* The simplest case: use a single form to collect data about an entity in a single point in time
* The complex case: use multiple forms to collect data about an entity accross time
* The only purpose of the registration form is to start collecting data on the entity across time. If in a later stage an enumerator wants to change the registration information, a separate form is needed. By creating the update survey as a copy of the registration survey, the update survey can prefill the values from a registration survey.
