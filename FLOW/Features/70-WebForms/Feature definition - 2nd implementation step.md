## Feature definition - 2nd implementation - WORK IN PROGRESS (needs to refelect last design changes) 

Based on the mock ups provided by Kiarii, here is the description of the proposed features and their expected behaviour for the 1st implementation of Webforms, when the webforms are filled in and submitted within the Akvo FLOW dashboard. The 2nd implementation will support the submission of a webform via a link.

### Feature definition - Monitored surveys 

#### 1. Data view - combine Inspect data tab and Monitoring tab into "Data" 
- survey selection dropdown - change, only enabling to select up to survey level, no more form selecion as we are building the data display on data points, which in themselves hold all the forms. Try to have all dropdowns in one line, if the size of screens allows.   
- **title of the page "Data"**
- **search bar**  - user can search by datapoint name or datapoint ID, search is not case sensitive
   - to trigger the search they user types in her text and enter 
   - the search looks through the entire list of datapoints for the selected survey
   - if the user has no filters applied on his list of points and types in his text in th search bar + enter
      - an 'x' appears behind the searched item in the search bar - with this 'x' the user cancels his search that then gives him the full list of points again and the filters are visible 
      - the date picker and filters are hidden from the screen, in there place the number of results found for the searched text - example: 4 results for "House hold" 
      - 'Back to data points' link - same behaviour as the 'x' in the search bar - cancels the search and brings the user back to the full original list with the date picker and filters; same design as in Assignments tab 
      - the list of data points shows only those that fit the search
   - if user has added filters to his list of data points, the search still searches among the entire list of points and the filters are hidden and ignored. Once the search is canceled (either via the 'x' or via 'Back to datapoints') the filters become available again but none are selected and the user has the select them all from the beginning 
- **New datapoint** - new button - opens webform submission screen, with the list of forms and the registration form opened by default
- **date picker** - same behaviour as in current Inspect data tab - user can type in the date or choose from date picker. 
     - in the date field do not say "collected from" and "to", but show the date format: "YYYY/MM/DD"
     - once the date filter is selected show all data points that have either the registration form or any monitoring form submitted within that date range
- **Filter options** - new button - opens the filter selector, in page view (not pop-pu) 
     - title 'Select filters to apply'
     - followed by an indication of the selected filters, by default no filters selected > '(no filters applied)'
     - 'Show datapoints (xx)' link - clickable link that closes the filter selector, xx stand for the number of points in the list 
     - can filter on: Forms, Users, Workflow steps 
     - each filter has and 'all' checkbox in the same line as the filter title and followed by the possible filters (existing forms in the selected survey, app users, created workflow steps and each has the three defauls statuses + all) 
- **Data points x-x of 10,000** - this shows the count of all data points and displayed data poits in the view 
      - x-x - stands for the number of displayed points - example: "Data points 1-20 of 342", if the user clicks on the "next" arrow, the count changes to "Data points 21-40 of 342"
      - 10,000 - shows the total count of data points. If a filter (or group of filters) is applied, the number changes based on the selection 
      - we need to decide the maximum total amount of data points displayed in the view: 20, 50, ? 
      - previous and next arrow buttons
- **datapoint table header:**
   - "Name" = data point name
   - "ID" = data point ID
   - "Last update" - shows the date of the last form submitted per data point, registration or monitoring. Based on this date the data points are ordered in the table view, with the latest submission on the top. In case of the Non-monitored surveys this item is: "Submitted".
   - "Workflow status" - new - see https://github.com/akvo/akvo-product-design/issues/82
- **data point table** 
   - follows the header structure
   - data point name - clickable link, which brings the user inside the data point to view all the submitted forms and to submit a monitoring form
   - data point ID
   - last update date and time 
   - workflow status - here the user can change the status
- **delete icon** upon mouseover on the data point row a delete icon is shown at the far right. It deletes the data point and all its data. If the user clicks on the icon a warning pop-up message is shown in the screen (same pattern as when deleting a form). The message contains:
   - Question: "Are you sure you want to delete this item? This cannot be undone." 
   - 2 Actions: - "OK" - if selected, the data point is deleted - "Cancel" - if selected, stays in the list  
   - once a point is deleted the total count of points needs to change respectively 

#### 2. Webform view 
What happens after the user clicks on the "New datapoint" button? The webfrom screen opens holding: 
- survey dropdown selection - remains the same to indicate which survey the user is currently working on
- title: **New datapoint** - not clickable and shown only in this workflow, thus when the user clicks on the "New datapoint" button
- **'Go back to datapoints'** - clickable link, acts as a back button, design consistent with the current Assignments workflow, positions in line with 'New datapoint' title 
- **list of forms** - similar as in the app with title 'Forms' 
   - holds the list of all forms for this survey - their name and version
   - the registration form is 1st in the list, it is selected and opened by default
   - the monitoring forms are by default disabled
- **registration form opened as a webform** - placed next to the list of forms, shows the form title + version, * Mandatory question (in red), question groups with questions, cancel button, submit button


-------------------
   - if the user only opens the webform but does not add in any information and goes back via the "Go back to datapoints list" link, nothing is saved (no new data point is created)
   - if the user adds in an answer (mandatory or not) and clicks on the "Go back to datapoints list" list, nothing is saved 
   - if the user does not add any information to the webform, but clicks on "Submit":
      - if there are mandatory questions, the answer field is outlined in red once the user clicks away from it without adding an answer. By clicking on Submit a sentence is shown above the Submit button: "Please fill in the missing mandatory fields to submit this form."  
      - if there are no mandatory questions, thus the user is submitting an emplty form, then a sentence is shown above the Submit button: "Empty forms cannot be submitted. Please, add the corresponding responses first."   
   - if the user adds in one piece of information but does not finish the entire form and hits "Submit"
      - if there are mandatory fields left, the answer field is outlined in red once the user clicks away from it without adding an answer. By clicking on Submit a sentence is shown above the Submit button: "Please fill in the missing mandatory fields to submit this form."  
      - if there are no mandatory fields open/left, the form is submitted > in place of the webform a info message is show: "Form was successfully submitted." and a new data point is placed on the top of the list
- after the form is submitted 4 things change in the screen: 
    - the data point name and ID are rendered upon the submission of the registration form and placed under the title "New datapoint"
    - the registration form in the list of form becomes disabled and "Submitted 2016-01-18 11:64" (date and time of submission) is rendered below the form name 
    - the monitoring forms are now enabled to be selected
    - in place of the registration webform a message is shown: "Form was successfully submitted." 

#### 3. Workflow after submitting a registration form
##### 3A. User leaves this page by clicking on "Go back to datapoints list"
- the newly created data point is on top of the data points list and the data point name is a clickable link, which opens the data point information - see **4. View datapoint** 

##### 3B. User continues with submitting monitoring forms for this data point
- user selects a monitoring form from the list of forms > the monitoring webform is opened
- all rules apply as with the registration form
- after submitting a monitoring form, under the name of the form show: "Last submitted 2016-01-19 10:45"  

#### 4. View datapoint
What happens if a user is in the list of datapoints and clicks on a datapoint's name? The View data point screen opens: 
- **"View datapoint"** title
- **"Go back to datapoints list"** - clickable link, acts as a back button, design consistent with the current Assignments workflow, positions in line with "View datapoint" title 
- **Data point name** and **data point ID**
- **delete icon** - deletes the entire data point and all the submitted forms within. Once clicked on a warning message is shown:
    - Question: "Are you sure you want to delete this data point and all its data records? This cannot be undone." 
    - 2 Actions: - 'OK' - if selected, selected data point is deleted - 'Cancel' - if selected, nothing happens 
- **"Data points 1 of 342"** - shows the order of the data point the user is currently previewing
    - if a data point is deleted in this view, the total count (in this case 342) changes respectively (in this case to 341)
    - if the user selects another point the order changes and shows "2 of 342" etc
- **navigation arrows** to click to the next and previous data point
- **List of forms** - shows all the forms and their version for this survey, and when the registration form was submitted (first one in the list) and when the last form for each monitoring form was submitted
   - by default opens the registration form in preview 
   - if the user clicks on a monitoring form in the list > opens a list of all submitted monitoring forms and "New submisssion" button
      - checkbox - if selected a "delete" icon is shown
      - submission date of the form - clickable link which opens the form preview 
      - submitter's name
      - **Outstanding questions**: Do we need to show here the Instance ID for each form? Filters as in the Data point list? Bulk actions?
      - "New submission" button > brings the user to the same screen as when submitting a new data point, thus the webform screen with these differences:
         - Title: "Update datapoint"
         - holds the data point name and ID
         - registration form is disabled
         - the monitoring form is selected and opened by default

#### 5. Previewing a submitted form
##### 5A. Previewing a submitted registration form
Once the user clicks on a data point in the list of points, the registration form is opened by default in the View datapoint screen. All the question groups, questions and answers are shown and if the user has the right to edit the edit link is also provided.
##### 5B. Previewing a submitted monitoring form
Once the user selects a monitoring form in the form list, the list of all submitted forms is shown. Here she can select a specific monitoring form which is opened in the same style as the registration form. The difference is, that there is a header above the submitted form consisting of: delete icon (instead of the 21 number in the mockups to enable deleting the form), submission date, submitter and "Back to form submissions" link (which brings the user back to the list of submissions for that monitoring form)


### Feature definition - Non-Monitored surveys

Differences in the workflow and items between monitored and non-monitored surveys
- in the Data view the table header is not "Last update" but "Submitted"
- after the user clicks on "New datapoint" > the form opens directly, without a list of forms
   - "New datapoint" title
   - "Go back to datapoints list" back link
   - webform
   - Submit button 
   - Cancel button
   - submission rules are the same as for monitored webforms 
- once the user successfully submits a new webform > the Data view is opened
   - top green header: "Form was successfully submitted." 
- if the user clicks on a datapoint from the list > the submitted form is opened, no list of needed
   - "View datapoint" title
   - "Go back to datapoints list" 
   - datapoint name and ID
   - delete icon
   - Datapoints 1 of 342
   - navigation arrows to go to the next or previous data point
   - registration form name, version, Submitted 2016-01-18 11:45
   - question groups, questions, answers and edit icon
   - no submit button

#### To be added:

*Permissions*
- Submit data via webform

### Unanswered questions
**1: Related to Data View**
   - How many data points will be shown in the list of data points? 20? 
   - 
### Next steps
### Decisions differing from current functionality in Inspect data tab and Monitoring tab 

2. **Instance ID** What shall we do with it? Currently we show the instance id with each form and users can filter on it in the Inspect data tab
3. **Device ID** What shall we do with Device ID? Currently the user can filter on it the Inspect data tab, but the items are not shown in the data view list. Considering this is an item we will move away from we can decide not to add it in at all. However, if we want to keep the existing filtering functionality, we can add the "Device ID" as the last item in the table of data points and a filter dropdown after the user filter, which will filter based on device ID and the by default selected item will be "All device IDs" 

**4: Related to View data point**
1. Do we need to add the full row of filters and bulk actions to the list of submitted monitoring forms? 
2. Instance ID? 
3. Device ID? 

**5. Previewing a submitted form**
1. There is not way to navigate from one monitoring form submission to another

**6. Caddifly questions**
We are currently integrating Caddisfly tests as another question type. In the situation that a webform holds a Caddisfly question and this is set as a mandatory question, the webform needs to 'overrule' this setting and disable the question entirely, while still making it possible to submit the webform without the Caddisfly data
