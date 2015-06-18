# Functional Design document DRAFT

Viewing and expoting monitored data
-------------

### Overview

Currently, the way data is displayed in the dashboard is not very clear, nor responsive to users' needs. On one hand there is the inspect data tab, on the other the monitoring tab. Secondly, there is no way to export data belonging to a single survey but in different forms. Thirdly, it is unclear how we should deal with forms that have been filled in multiple times, such as with water quality. 

Because of the multiple unclarities related to viewing collected data and exporting it, we have decided that through examining the needs related to monitoring data points we will improve these functionalities.  

### Marketing description
A marketing description of this feature.

### Features

! Need to plan the features. This list summarizes all changes related, but a more prioritized version is needed for planning and development.

There are a few main areas where changes will happen and depending on that the features are:

1. **Creating surveys and forms for monitoring** In the survey creation part there will be these additions: 
  - *Form function - close data point.* Currently once monitoring is enabled a form can reagister a data point or update it. The additional function will be that a form can also close/archive/deactivate a data point. This means that depending on an answer to a chosen question the status of the data point will change to closed/archived/inactive. 
  - *Look-up Relation.* The look-up relation creates relationships between two self standing data sets, two different surveys. When you create a relationship, you tell FLOW to link a record/question field in one form to another record in another form. 
    - How does this work?
    Assume that you have project where you monitor biogas installations, which are built around the country by different companies. You create a monitoring survey for biogas installations. This survey contains the registration form and the monitoring form. In the registration form you enter the basic details of the biogas installation and which company constructed the installation. When you enter the details, you find that one or more installations were build by the same company and you have to enter the company name, again and again. This leads to duplication of information and ineffective data collection. In order to avoid this, you will create another survey called Construction Companies to hold information of all the companies and create a relationship between the Company Information form and the Biogas registration form. To create this relationship, you just add a look-up field in the Biogas registration form to import data from the field Construction company name in the Company Information form in the Construction Companies survey.The lookup field will lookup the ID of the record in the source form and it will display a dropdown menu containing items from the source form.  

    Limitations:
    Look-up questions will only work between registration forms and forms in surveys where monitoring in not enabled. 
  - to be continued..
  
2. **Creating assignments** 
  - *Filtering a set of data points and assigning only that set to a particular user.* Currently we assign a specific survey and form to a device for data collection. All the data points created for that survey then appear on the app.  However, if a project has a vast number of data points spread out through a large location, it happens often that the project manager wants to assing only a certain number of data points to an enumerator, usually based on their location. By providing the ability to create a group of data points based on a filter the project manager can assign only this specific group to a user who will see this group of data points on his/her app. This solves the problem of having the search through a long list of data points in order to find the one data point that the user is to update.     
  
3. **Viewing the data and consequently generating reports on the dashboard**
  - Free text search
  - Data point status  
  - Filtering collected data. (viewing and reporting differentiation - if any) 
    - Filters: time, forms, questions, data points, status of data points, (users who updated the data points)
  - Applying lookup questions in reports/viewing
  - List of previously downloaded reports 

4. **Searching for data points of the app**
  - *Filter the data points list in the app based on time.* This filter is added to simplify the data collection process. When a enumerator is collecting data about households in a village he needs to be able to track which data points he has aldredy updated. By adding a filter based on time, the enumerator can see the remaining not-updated data points. 
  - *Filter data points on a map view based on time.* As stated above.
  - *Filter data points based on status* 
  - *Difference in displaying active and archived data points*
  
### Non goals
In this stage we will not be dealing with the more complex data features as geoshapes, repeatable question groups, etc. because we aim to first create a solid and clear understanding and definition of the basics Monitoring feature and later on build on this understanding and expand it to the more complicated data.

### Scenarios
The user stories and scenarios are located in http://bit.ly/1JXWHka

### Technical notes
Any technical issues or questions that are already known

### Open issues
Any known issues that need to be decided:
- Difference between what the user can do in the 'data' tab and in the 'reporting' tab
- Unified and clear vocabulary

### Details
Details, details, details.

Approved and ready for Visual Design by: 
