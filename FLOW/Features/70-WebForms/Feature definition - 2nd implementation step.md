## Feature definition - 2nd implementation 

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
- **Datapoints x-x of 10,000** - this shows the count of all data points and displayed data poits in the view 
      - x-x - stands for the number of displayed points - example: "Data points 1-20 of 342", if the user clicks on the "next" arrow, the count changes to "Data points 21-40 of 342"
      - 10,000 - shows the total count of data points. If a filter (or group of filters) is applied, the number changes based on the selection 
      - we need to decide the maximum total amount of data points displayed in the view: 20, 50, ? 
      - previous and next arrow buttons
- **datapoint table header:**
   - "Name" = data point name
   - "ID" = data point ID
   - "Last update" - shows the date of the last form submitted per data point, registration or monitoring. Based on this date the data points are ordered in the table view, with the latest submission on the top. In case of the Non-monitored surveys this item is: "Submitted".
   - "Workflow status" - new - see https://github.com/akvo/akvo-product-design/issues/82
- **datapoint table** 
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
What happens after the user clicks on the "New datapoint" button? The webform screen opens holding: 
- survey dropdown selection - remains the same to indicate which survey the user is currently working on
- title: **New datapoint** - not clickable and shown only in this workflow, thus when the user clicks on the "New datapoint" button
- **'Back to datapoints'** - clickable link, acts as a back button, design consistent with the current Assignments workflow, positions in line with 'New datapoint' title 
- **list of forms** - similar as in the app with title 'Forms' 
   - holds the list of all forms for this survey - their name and version
   - the registration form is 1st in the list, it is selected and opened by default
   - the monitoring forms are by default disabled

##### 2.A Registration form opened as a webform 
- placed next to the list of forms, shows the form title + version, * Mandatory question (in red), question groups with questions, cancel button, submit button
- **working with a registration webform:** 
    - if the user does not add any answers to the webform and clicks on 'Go back...' or 'Cancel' then nothing is saved (no new data point is created)
    - if the user adds in an answer (mandatory or not) and clicks on the 'Go back...' or 'Cancel' then nothing is saved
    - if the user does not add any information to the webform, but clicks on 'Submit':
       - if there are mandatory questions, the answer field is outlined in red once the user clicks away from it without adding an answer. By clicking on Submit FLOW brings the user to the 1st not answered mandatory question, which is outlined in red and a sentence is shown under the question title (and question help text if there): "Please fill in the missing mandatory fields to submit this form." This sentence is shown under each question that is mandatory and not filled in
       - if there are no mandatory questions, thus the user is submitting an empty form, then a sentence is shown above the Submit button: "Empty forms cannot be submitted. Please, add the corresponding responses first."
    - if the user adds in one piece of information but does not finish the entire form and hits "Submit"
       - if there are mandatory fields left, the answer field is outlined in red once the user clicks away from it without adding an answer. By clicking on Submit FLOW brings the user to the 1st not answered mandatory question, which is outlined in red and a sentence is shown under the question title (and question help text if there): "Please fill in the missing mandatory fields to submit this form." This sentence is shown under each question that is mandatory and not filled in
       - if there are no mandatory fields open/left, the form is submitted 

##### 2.B After the registration form is submitted
- each submission creates a new data point (as if it was submitted by the app) and this data point can by synced to the app and further monitoring data can be collected
- The page title changes from 'New datapoint' to 'View datapoint'
- A green bar is shown above the 'View datapoint' title taking the full screen width saying 'Datapoint successfully created!'. This bar can be closed by clicking on the 'x' at its end. 
- a new header is shown under the title and 'Back to datapoints' link holding: 
    - datapoint name - rendered from the answers 
    - datapoint ID
    - workflow status changer with 1st status/step opened 
    - delete icon that deletes the full datapoint + warning message for deletion
    - Datapoints 1 of 2123 - counter - after submitting a registration form the number is always 1 (as the newest point is always the 1st in the list) and the total number of points
    - navigation arrows - allow to click through the data points 
- in the forms list: 
    - registration form - gets a time stamp holding: Submitted + date + time; and is selected in the list
    - monitoring forms are enabled 
- the submitted registration form is opened, showing the questions + answers + edit link; in the title of the form - form name + version that is submitted + Submitted date and time + user name who submitted the form 
- the user can now decide, if she wants to submit a monitoring webform, change the workflow status, delete the point, go back to the list of points or view other points 

##### 2.C User leaves this page by clicking on "Back to datapoints"
- the newly created data point is on top of the data points list and the data point name is a clickable link, which opens the data point information 

##### 2.D User continues with submitting monitoring forms for this data point
- user selects a monitoring form from the list of forms: 
    - Form name stands as header
    - as there are no submissions for this monitoring form yet, the list of submissions which would be there is empty and only and info message is shown saying: "No submissions yet" 
    - new button above the list of submissions in the same line as the Form name header: New submission - which openes the monitoring webform > 
- **submitting a monitoring form** 
    - all rules apply as with the registration form, 
    - the title of the page changes to 'Update datapoint' 

##### 2.E After submitting a monitoring form 
- page title changes to 'View datapoint' 
- under the name of the monitoring form in the list of forms: "Last submitted 2016-01-19 10:45"  
- Form name title remains 
- subtitle: 1 submission - the number shows the total number of submissions per that form 
- 'New submission' button remains
- green bar under the subtitle taking the full width of the page - 'Datapoint successfully updated!' + 'x' to close the bar
- submission table header: #, Submitted, User 
    - the first submission is shown in the table
    - the table is organized by the newest submission first 
    - all submissions are shown - user needs to scroll to see the older submissions 
    - to open a submission click on the row
    - on row mouseover show 'delete' icon in the far right of the row which allows to delete the form. If the user clicks on the icon a warning pop-up message is shown in the screen (same pattern as when deleting a form). The message contains:
       - Question: "Are you sure you want to delete this item? This cannot be undone." 
       - 2 Actions: - "OK" - if selected, the form is deleted - "Cancel" - if selected, stays in the list  
       - once a form is deleted the total count of forms needs to change respectively 

##### 2.F User leaves this page by clicking on "Back to datapoints"
- the newly updated data point is on top of the data points list and the data point name is a clickable link, which opens the data point information 

#### 3. View datapoint
What happens if a user is in the list of datapoints and clicks on a datapoint's name? The View data point screen opens: 
- **"View datapoint"** title
- **"Back to datapoints"** - clickable link, acts as a back button, design consistent with the current Assignments workflow, positions in line with "View datapoint" title 
- **Data point name** and **data point ID**
- **workflow status changer**
- **delete icon** - deletes the entire data point and all the submitted forms within + warning message for deletion 
- **"Data points 1 of 2123"** - shows the order of the data point the user is currently previewing
    - if a data point is deleted in this view, the total count changes respectively
    - if the user selects another point the order changes and shows "2 of 342" etc
- **navigation arrows** to click to the next and previous data point
- **Forms** - list of forms - shows all the forms and their version for this survey, and when the registration form was submitted (first one in the list) and when the last form for each monitoring form was submitted
   - by default opens the registration form in preview - showing 'Submitted + date + time', name of user who submitted, the submitted answers and possibility to edit 
- if the user clicks on a monitoring form in the list > opens a **list of all submitted monitoring forms** and **"New submisssion"** button
    - table header: #, Submitted, User 
    - the first submission is shown in the table
    - the table is organized by the newest submission first 
    - all submissions are shown - user needs to scroll to see the older submissions 
    - to open a submission click on the row
    - on row mouseover show 'delete' icon in the far right of the row which allows to delete the form. If the user clicks on the icon a warning pop-up message is shown in the screen (same pattern as when deleting a form). The message contains:
       - Question: "Are you sure you want to delete this item? This cannot be undone." 
       - 2 Actions: - "OK" - if selected, the form is deleted - "Cancel" - if selected, stays in the list  
       - once a form is deleted the total count of forms needs to change respectively 
            - submission date of the form - clickable link which opens the form preview 

#### 4. Previewing a submitted form
##### 4A. Previewing a submitted registration form
Once the user clicks on a data point in the list of points, the registration form is opened by default in the View datapoint screen. All the question groups, questions and answers are shown and if the user has the right to edit the edit link is also provided. The user can also view the registration form after viewing monitoring forms by clicking on the registration form in the list of forms. 
##### 4B. Previewing a submitted monitoring form
Once the user selects a monitoring form in the form list, the list of all submitted forms is shown. Here she can select a specific monitoring form which is opened in the same style as the registration form. To open a submitted monitoring form she clicks on the rom. The difference is, that there is a header above the submitted form consisting of: order number of the form, 'Submitted + date + time', submitter and 'Back to form submissions' link (which brings the user back to the list of submissions for that monitoring form)

### Feature definition - Non-Monitored surveys

Differences in the workflow and items between monitored and non-monitored surveys
- in the Data view the table header is not "Last update" but "Created"
- after the user clicks on "New datapoint" > the form opens directly, without a list of forms
   - "New datapoint" title
   - "Back to datapoints list" back link
   - webform
   - Submit button 
   - Cancel button
   - submission rules are the same as for monitored webforms 
- once the user successfully submits a new webform > the Data view is opened
   - top green header: "Data point successfully created!" 
   - the new datapoint is first in the list 
- if the user clicks on a datapoint from the list > the submitted form is opened, no list of forms needed
   - "View datapoint" title
   - "Back to datapoints" 
   - datapoint name and ID
   - workflow status/step change
   - delete icon
   - Datapoints 1 of 342
   - navigation arrows to go to the next or previous data point
   - registration form name, version, Submitted 2016-01-18 11:45, user name 
   - question groups, questions, answers and edit icon
   - no submit or cancel button

#### To be added:

*Permissions*
- Submit data via webform

### Unanswered questions
- How many data points will be shown in the list of data points? 20? 
- Permission: user needs to have 'view data' permission added to his role to be able to submit a webform
    - What if we do not want the user to view the data but only submit a webform for non-monitoring forms - fine - the data is not shown in the list of data points in the Data tab. For monitoring form - is it possible? 
- To delete a full data point do I have to first delete all the forms in it separately (to empty the data point) first? We have the same pattern with surveys, that you cannot delete a survey, only if you first delete all its forms ..

### Next steps and desicions taken
- next step - create a way to submit a webform using an external link for registration forms 
- after that - investigate and create a way to submit a webform using an external link for monitoring forms
- not allow bulk deletion of data points, nor form submissions at this point of time - will implement later in the future once we have a 'tash can' functionality that will allow users to revive their deleted data. At this moment, we found deleting in bulk a too risky operation. 
- for the future consider capturing the version of the submission (for both webforms and app submitted forms) and show the version number in the lists. This will allow user to keep track and see who has (or has not) submitted the latest version of the form
- **Instance ID** Will not be one of the filters and the user cannot search on it either
    - the instance ID now acts as a way to find a specific submission
    - we are moving towards searching for submissions using datapoint name/ID or filters
    - instance ID is something FLOW gives - so it is not something users determine themselves and are generally unaware of its role and purpose. Moving towards focusing on datapoint name and ID is more simpler for the users, as they create the name themselves, are familiar with it in the app and come more in contact with both 
- **Device ID** 
    - currently the user can filter on it the Inspect data tab, but the items are not shown in the data view list. 
    - this is an item we will move away from with the single app 
    - will not be added to the new filters but we will use the user name 
    - this can be reconsidered after the implementation 
