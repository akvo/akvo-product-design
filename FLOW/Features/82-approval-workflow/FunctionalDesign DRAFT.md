Workflow DRAFT
-------------

### Documents
User stories - https://drive.google.com/open?id=1BKJCBYmlgrgVcJ4W7FzLLQQCxPJVm-A0NofiAW4pZVY

Mockups feedback - https://docs.google.com/document/d/1aIxMnMP4SFePy4uvkUtZp6yfjKSoRFMur-KgiD9wNPc/edit

### Overview
A short overview of what we try to accomplish

Two types of workflows: ordered and un-ordered. 

### Marketing description
A marketing description of this feature.

### Initial features

#### Creating a workflow 
- **new tab "Library"** which will hold: Cascade resources (move them away from Data tab here) and "Workflows" 
- in **"Workflows" tab** - title "Workflows" 
- "New workflow" button which enables you to create a new workflow
- "No workflows yet" in the middle of the screen if the user did not create a workflow, if he did then the list of workflows is shown there
- list of workflows - header: 
   - Name - name of the workflow, clicable link which opens the webform view  
   - Type - ordered or un-ordered 
   - Used in - shows the number of surveys this workflow is added to - 'x surveys', where the number is a clickable link and if the user clicks on it, it shows the list of surveys 
   - Created by - user who created or edited the workflow
   - edit icon - upon mouseover a little info text appears 'Edit workflow'
   - delete icon - upon mouseover a little info text appears 'Delete workflow' 
- **clicking on 'New workflow' button** 
- **clicking on the workflow name in the list of workflows**
- **clicking on the 'edit' icon in the list of workflows**
- **clicking on the 'delete' icon in the list of workflows** 

#### Adding a workflow to a survey 
#### Adding users to a workflow 

#### Changing a workflow for a data point 

##### Changing an ordered workflow
##### Changing an un-ordered workflow

##### Changed Data tab + search + filters 
- new subtab that is the result of the combination of the Inspect data tab and Monitoring tab. Viewing data will be based on data points for both types of surveys. Name of the tab 'Data'
- in 'Choose a survey to display' - change, only enabling to select up to survey level, no more form selecion as we are building the data display on data points, which in themselves hold all the forms. Try to have all dropdowns in one line, if the size of screens allows.
- **title of the page "Data"**
- **search bar** - search from the full list of datapoints based on data point name or data point ID, not case sensitive 
   - user can search by datapoint name or datapoint ID, search is not case sensitive
   - to trigger the search they user types in her text and enter 
   - the search looks through the entire list of datapoints for the selected survey
   - if the user has no filters applied on his list of points and types in his text in th search bar + enter
      - an 'x' appears behind the searched item in the search bar - with this 'x' the user cancels his search that then gives him the full list of points again and the filters are visible 
      - the date picker and filters are hidden from the screen, in there place the number of results found for the searched text - example: 4 results for "House hold" 
      - 'Back to data points' link - same behaviour as the 'x' in the search bar - cancels the search and brings the user back to the full original list with the date picker and filters; same design as in Assignments tab 
      - the list of data points shows only those that fit the search
   - if user has added filters to his list of data points, the search still searches among the entire list of points and the filters are hidden and ignored. Once the search is canceled (either via the 'x' or via 'Back to datapoints') the filters become available again but none are selected and the user has the select them all from the beginning 
- **New datapoint** - new button - opens webform submission screen
- **date picker** - same behaviour as in current Inspect data tab - user can type in the date or choose from date picker. 
     - in the date field do not say "collected from" and "to", but show the date format: "YYYY/MM/DD"
     - once the date filter is selected show all data points that have either the registration form or any monitoring form submitted within that date range
- **Filter options** - opens the filter selector, in page view (not pop-up), once user clicks on it:  
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
   - "Last update" - shows the date of the last form submitted per data point, registration or monitoring. Based on this date the data points are ordered in the table view, with the latest submission on the top. In case of the Non-monitored surveys this item is: "Created".
   - "Workflow status" 
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

##### Chaning the workflow status in the list of datapoints
##### Changing the workflow status when in one particular datapoint 

### Non goals
What this feature will not contain: 
- reports containing worflow? 

### Scenarios
A number of scenarios for how this feature will benefit users

### Technical notes
Any technical issues or questions that are already known

### Open issues
Any known issues that need to be decided:
- do we need to add a short text explaining what workflows are into the Workflows tab in the dashboard? 

### Details
Details, details, details.

Approved and ready for Visual Design by: 
