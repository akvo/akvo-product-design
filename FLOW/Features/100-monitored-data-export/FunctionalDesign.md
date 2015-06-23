# Functional Design document DRAFT

Viewing and exporting monitored data
-------------

### Overview

Currently, the way data is displayed in the dashboard is not very clear, nor responsive to users' needs. On one hand there is the inspect data tab, on the other the monitoring tab. Secondly, there is no way to export data belonging to a single survey but in different forms. Thirdly, it is unclear how we should deal with forms that have been filled in multiple times, such as with water quality. 

Because of the multiple unclarities related to viewing collected data and exporting it, we have decided that through examining the needs related to monitoring data points we will improve these functionalities.  

### Marketing description
A marketing description of this feature.

### Initial features

**On the dashboard** 

- *Data point status* In monitoring we recognize two functions a form has and how they relate to data points: one form registers a data point and other update/monitor a data point. We can translate this into a data point status which is registered and active. Because this information is vital for the users when it comes to maintaining a clear overview of all the data points related to a survey, we will visualize the data point status on the dashboard when viewing the data. 
  - *Form function - close data point.* In addition to the two above mentioned form functions we will add an additional one, which is to close [archive or deactivate] a data point. A data point will be closed when an answer to a chosen question is selected in a form. Thus we will have three functions of forms and three types of status for data points: registered, active, archived.
  - NEED TO CREATE A SEPARATE ISSUE FOR THIS CHANGE

- **Viewing data on the dashboard.** 
There are three ways of viewing the data points and collected data: (1) all data points, (2) one specific data point, (3) a selected group of data points. 
  - *1. Viewing all data points.* When the user decides to view the collected data on a monitoring survey he will see the list of all the data points with information on the latests update as: 
    - Data point information: id, name, status, 
    - Last updated information: date + time, enumerator, which form was updated, if that data is approved or not
    - History of data point: when the registration form was submitted and by whom 
  - *2. One specific data point* The user has two ways of selecting a specific data point. (1) Either by finding it in the initial overview list, or (2) searching for it in the search box, which enables free text search of the data point name.
    - Note: data point name can only be defined by a property/question in the registration form. 
  - *3. Selected group of data points by applying filters.* Based on time, answers, status of data points, and enumerator who updated the data points the user will be able to filter the data points and collected data to view and inspect. 
- *Viewing collected information of one specific data point.* The user can select which data point she wants to inspect and view the collected data. Here she sees the forms filled in and all the collected data per form. 

- **Applying filters and specifying view** 
The user defines filters in order to decrease the number of data points and data sets she want to view or report. As a second step to narrow down her view she defines what data she wants to see in this filtered group by selecting forms or questions. To clarify, filters narrow down the data sets and view specification defines what type of information the user wants. Thus filters apply on data points and collected data and view specification on the survey structure.
  - *Filters* Time of update (from the beginning of time, type in period), answer property (all data, only those where the answer to question X is Y), user who updated. A combination of multiple filters will be enabled. 
    - Examples: 
    - I want to see only the data points updated from June 1 till June 17 2015. 
    - I want to see only the data where the answer to What is your favourite fruit? is Apple. 
    - I want to see only the data collected by John. 
    - I want to see only the data points updated from June 1 till June 17 2015 and only updated by John.
  - *Specifying the view of collected data.* In many cases, after user filters which data she wants to see, she also wants to specify more what she sees. She can define that by selecting which forms, or sets of questions and related answers she wants to view. 
    - Examples: 
    - I have filtered the data points that were updated from June 1 till June 17 2015. Now I want to view only the properties from the Registration form.  
    - I have filtered the data collected by John. Now I want to see only the answers from question 1 from form A; from questions 5,6,10 from form B; and from all the questions from form C.  

- **Generating a report** 
- *Creating a new report.* TO BE DISCUSSED
- *Generating a report from viewing data* TO BE DISCUSSED 
- *History list of generated reports* This list shows the user all the reports she has generated up till now. With every report the user sees the date when it was generated, by whom, and she can either view, download or delete the report. Editing a report from this list will not be possible. Then the user needs to generate a new report again. After defining a new report she clicks on 'Generate a report' and the screen with the list of reports will appear showing the new report in the list and that it is being generated. Once the report is ready, the view, download, and delete buttons will be active. 
- *Combined reports.* Applying lookup questions in reports and in viewing

**In the app** 

- *Assign a filtered list of data points* Enable the dashboard user to create a filtered list of data points to assign to a device. For more information see https://github.com/akvo/akvo-product-design/issues/111 
- *On the device filter the data points list based on time.* This filter is added to simplify the data collection process. When an enumerator is collecting data about households in a village he needs to be able to track which data points he has already updated. By adding a filter based on time, the enumerator can see the remaining not-updated data points. 
- *On the device filter data points on a map view based on time.* As stated above.
- *On the device filter data points based on status* 
- *Difference in displaying active and archived data points*

### Non goals

### Scenarios
The user stories and scenarios are located in http://bit.ly/1JXWHka

### Technical notes
Any technical issues or questions that are already known

### Open issues
Any known issues that need to be decided:

### Details
Details, details, details.

Approved and ready for Visual Design by: 
