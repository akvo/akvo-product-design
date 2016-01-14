## Feature definition

Based on the mock ups provided by Kiarii, here is the description of the proposed features and their expected behaviour for the 1st implementation of Webforms, when the webforms are filled in and submitted within the Akvo FLOW dashboard. The 2nd implementation will support the submission of a webform via a link.

### Feature definition - Monitored surveys

#### 1. Data view 
1st page in the Monitored surveys mock up
- combine Inspect data tab and Monitoring tab into "Inspect data" 
- survey selection dropdown - change, only enabling to select up to survey level, no more form selecion as we are building the data display on data points, which in themselves hold all the forms. Try to have all dropdowns in one line, if the size of screens allows.   
- new button - **"New datapoint"** - opens webform submission screen, with the list of forms and the registration form opened by default
- **row of filters and bulk actions:** 
    - dropdown of Bulk actions list: now only "delete", later also data approval functionality will be added to it
    - "Apply" button
    - Workflow: 
       - user selects the data points by clicking on the checkbox in each row
       - user selects delete from Bulk actions dropdown
       - after user clicks on apply > a warning pop-up message is shown in the screen (same pattern as when deleting a form). The message contains: 
          - Question: 'Are you sure you want to delete these XY items?' where XY shows the total count of the selected data points
          - 2 Actions: - 'OK' - if selected, selected items are deleted - 'Cancel' - if selected, map stays in the list
       - After deleting the number of all data points (the last item in the row of filters) needs to change to show the current amount 
   - search - user can search based on data point name and data point ID, not case sensitive. Once item is found it is displayed in the list and the other data points are not shown 
   - date filter - same behaviour as in current Inspect data tab - user can type in the date or choose from date picker. 
     - in the date field do not say "collected from" and "to", but show the date format: "YYYY/MM/DD"
     - Workflow: Once the date filter is selected show all data points that have either the registration form or any monitoring form submitted within that date range
   - form dropdown - this is available only for monitored surveys. 
      - dropdown holds a list of forms in the survey. The first item and by default selected item is "All forms", followed by the list of forms 
      - Workflow:
         - if the user selects a registration form, the number of data points and list does not change
         - if the user selects a monitored form, the list only shows those data points that have this form submitted at least once
   - users dropdown - allows to filter based on app users. The first item and by default selected item is "All submitters", followed by the list of submitters = app users  
      - Workflow: once a user is selected, the data points for which this user submitted either a regsitration form or a monitoring formare shown
   - "Data points x-x of 10,000" - this shows the count of all data points and displayed data poits in the view 
      - x-x - stands for the number of displayed points - example: "Data points 1-20 of 342", if the user clicks on the "next" arrow, the count changes to "Data points 21-40 of 342"
      - 10,000 - shows the total count of data points. If a filter (or group of filters) is applied, the number changes based on the selection 
      - we need to decide the maximum total amount of data points displayed in the view: 20, 50, ? 
   - previous and next arrow buttons
- **table header:**
   - checkbox to select all - see question 1 in **Unanswered questions** 
   - "Name" = data point name
   - "ID" = data point ID
   - "Last update" - shows the data of the last form submitted per data point, registration of monitoring. Based on this date the data points are ordered in the table view, with the latest submission on the top. In case of the Non-monitored surveys this item is: "Submitted".
   - "Submitter" - app user
- **data point table** 
   - follows the header structure
   - data point name - clickable link, which brings the user inside the data point to view all the submitted forms and to submit a monitoring form
   - data point ID
   - last update date and time in the format YYYY/MM/DD
   - app user name

#### 2. Webform view 
What happens after the user click on the "New datapoint" button? 

### Feature definition - Non-Monitored surveys
Differences in the workflow and items between monitored and non-monitored surveys

#### To be added:

*Permissions*
- Submit data via webform

### Unanswered questions
**A: Related to Data View**

1. **Bulk actions** We currently do not have a way to select all the data points in the list. Proposal: add a checkbox in the table header alligned with the individual checkboxes per data point, in front of the "Name". If user clicks on the checkbox, all the items in the list are checked. If the user clicks on the checkbox again, all the items in the list get deselected. (same behaviour as gmail has) 
2. **Instance ID** What shall we do with it? Currently we show the instance id with each form and users can filter on it in the Inspect data tab
3. **Device ID** What shall we do with Device ID? Currently the user can filter on it the Inspect data tab, but the items are not shown in the data view list. Considering this is an item we will move away from we can decide not to add it in at all. However, if we want to keep the existing filtering functionality, we can add the "Device ID" as the last item in the table of data points and a filter dropdown after the user filter, which will filter based on device ID and the by default selected item will be "All device IDs" 
