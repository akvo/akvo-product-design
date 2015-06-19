# Functional Design document

Filtered lists to devices 
-------------

### Overview
Currently the use steps are: a form is published, assigned to a device and data points are created once data is collected. The enumerator then has long list of data points on his app. In many cases the enumerator has to update only a certain number of data points from this long list. Currently there is no way to filter or pre-select which data points should be assigned to which enumerator.

The aim of this feature is to provide the ability to create a group of data points based on a filter which then the project manager can assign to an user or a group of users. This solves the problem of having the search through a long list of data points in order to find the one data point that the enumerator needs to update.

### Marketing description
A marketing description of this feature.

### Initial features
The initial list of functionalities that this feature will contain:
- *Data points to assing*. Enable to select not only the survey and form but also one or multiple data points to assign. 
- *Allow filtering of the data points.* In order to creat specific lists the user can define his selection based on a filter, which represents a property/question from the registration form, or the time spam of last updates
- *History of filtered assignemnts.* Show in a list which data points where assigned to whom and based on what criteria was this list created

**Limitation**

This type of filtered list can only be created once data points are registered. 

### Non goals
Currently we assign lists only to devices. It will be nice to *recognise app users on the dashboard.* In order for the dasboard user to create a customized list of data points to assign, she needs to be able to select not only devices but also the users/enumerators to ensure targeted lists. We currently recognize users on devices in data sets, but do not allow creating assignments for users.
This is a nice to have option which will not be implemented at this stage. 

### Scenarios

An organisation monitors over 200 households in country. They have groups of enumerators collecting the information, who are locally based and responsible to collect the information in their particular village. Because all data points sync with all the devices every enumerator sees the list of all 200 household data points. The data points name are created based on their location, but the list is long to keep track of which data points one enumerator is responsible for. Thus the program manager wants to create lists of data points based on the village their are in to assign only a particular village list to the responsible enumerator. 

### Technical notes
Any technical issues or questions that are already known

### Open issues
1. What happens when an enumerator creates a new data point? 
    - If a list of data points is assigned to a user, he sees the list on his screen. What if he needs to create a new data point? Does this one automatically join his list? Does it join a list based on the inputed information? Is there a list of unassigned data pooints? Does the user on the dashboard need to create an updated version of her assignemnt? How does Flow inform her about this change?
2. Allow also for surveys which do not have monitoring enabled. 
    - This would mean to enable synchronising data points on to the devices also for surveys which do not have monitoring enabled 
3. Define how we specify data points.
    - Currently data points are geographically referenced. We should take into consideration situations when an enumerator gathers information on a repeating bases about something/someone which does not neccessarily have a geographic location, as monitoring distributors in a supply chain, companies in a project, students, health patients. 

### Details
Details, details, details.

Approved and ready for Visual Design by: 
