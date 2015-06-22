# Functional Design document DRAFT

Viewing and expoting monitored data
-------------

### Overview

Currently, the way data is displayed in the dashboard is not very clear, nor responsive to users' needs. On one hand there is the inspect data tab, on the other the monitoring tab. Secondly, there is no way to export data belonging to a single survey but in different forms. Thirdly, it is unclear how we should deal with forms that have been filled in multiple times, such as with water quality. 

Because of the multiple unclarities related to viewing collected data and exporting it, we have decided that through examining the needs related to monitoring data points we will improve these functionalities.  

### Marketing description
A marketing description of this feature.

### Initial features

**On the dahsboard** 

- *Form function - close data point.* Currently once monitoring is enabled a form can reagister a data point or update it. The additional function will be that a form can also close [archive or deactivate] a data point. This means that depending on an answer to a chosen question the status of the data point will change to closed [archived or inactive]. 

- *Viewing data on the dashboard.* There are three ways of viewing the data points and collected data, 1-all data points, 2-one specific data point, 3-a selected group of data points. 
  - *Viewing all datapoints.* When the user decides to view the collected data on a monitoring survey he will see the list of all the data points with information on the latests update as: 
    - Data point information: id, name, status, 
    - Last update information: date + time, enumerator, which form was updated, if that data is approved or not
    - History of data point: when the registration form was submitted and by whom 
  - *One specific data point* The user has two ways of selecting a specific data point. (1) Either by finding it in the intial overview list, or (2) searching for it in the search box, which enables free text search of the data point name.
    - Note: data point name can only be defined by a property/question in the registration form. 
  - *Selected group of data points by applying filters.* Based on time, answers, status of data points, and enumerator who updated the data points the user will be able to filter the data points and collected data to view and inspect. 
- *Viewing collected information of one specific data point.* The user can select which data point she wants to inspect and view the collected data. Here she sees the forms filled in a the collected data per form. 
- *Specifying the view of collected data.* In many cases, after user filters which data points she wants to see, she also wants to specify more what she sees. She can define that by selecting which forms, or sets of questions and related answers she wants to view.  

- *Generating a report* 
- *Creating a new report.* This will be possible either to generate a report from the predefined view, via a 'Generate a report' button or by creating a new report in the report tab. The user can name the report the way he wants in a text bar. The user can filter which data points he wants to report and also specify his view, same as in the viewing function. Once the report is ready he clicks on 'generate report' button.
- *List of generated reports* This list shows the user all the reports she has generated up till now. With every report the user sees the date when it was generated, by whom, and he can either view, download or delete the report. Editing a report from this list will not be possible. Then the user needs to generate a new report again. Once he clicks on 'Generate a report' the screen with the list of reports will appear showing the new report in the list and that it is being generated. Once the report is ready, the view, download, and delete buttons will be active. 
- *Combined reports.* Applying lookup questions in reports and in viewing
- to be continued

**In the app** 

- *Filter the data points list in the app based on time.* This filter is added to simplify the data collection process. When a enumerator is collecting data about households in a village he needs to be able to track which data points he has aldredy updated. By adding a filter based on time, the enumerator can see the remaining not-updated data points. 
- *Filter data points on a map view based on time.* As stated above.
- *Filter data points based on status* 
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
