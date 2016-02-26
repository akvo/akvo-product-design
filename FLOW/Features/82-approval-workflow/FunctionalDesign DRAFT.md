Workflow DRAFT
-------------

### Overview
A short overview of what we try to accomplish
- The problem we are solving with this feature is to enable the user to track different phases of a workflow when viewing the data collected with Akvo FLOW.
- Workflow consistest of steps - they translate to statuses on datapoint, which allows you to see which data point is in which step of your workflow. 
- Two types of workflows: ordered and un-ordered.
- User role: to create, edit, delete a workflow - so to have access to the Library tab and Workflows subtab
and to actually apply the workflow and its steps 

### Marketing description 
A marketing description of this feature.

### Initial features

#### Creating a workflow 
- **new tab "Library"** which will hold: Cascade resources (move them away from Data tab here) and "Workflows" 
- in **"Workflows" tab** - title "Workflows" 
- "New workflow" button which enables you to create a new workflow
- "No workflows yet" in the middle of the screen if the user did not create a workflow, if he did > then the list of workflows is shown there
- list of workflows - structure for both header and table: 
   - Name - name of the workflow, clicable link which opens the webform view  
   - Type - ordered or un-ordered 
   - Used in - shows the number of surveys this workflow is added to - 'x surveys', where the number is a clickable link and if the user clicks on it, it shows the list of surveys 
   - Created by - user who created or edited the workflow
   - edit icon - upon mouseover a little info text appears 'Edit workflow'
   - delete icon - upon mouseover a little info text appears 'Delete workflow' 
- **clicking on 'New workflow' button** 
    - opens the workflow edit/create screen
    - page title - 'New workflow' 
    - 'Back to workflows' link - brings user back to the list of workflows
    - 'Name:' + text box 
       - holds the name of the full workflow
       - when empty, in grey 'Workflow name'
    - 'Workflow type:' - user can select from the 2 given types: 
       - 'Ordered' + description text 'A step in the workflow can only be changed to its adjacent steps.' This step is selected by default for each new workflow  
       - 'Un-ordered' + description text 'A step in the workflow can be changed to any other step'
    - 'Steps:' - here the user creates the different steps that make up the workflow
       - in front of the two text boxes - for ordered workflows > show the order number for each step, for un-ordered workflows do not show anything 
       - text box for step code - in the empty box show in grey font 'Code'
       - text box for step name - in the empty box show in grey font 'Step name' 
          - each step name can only have 25 characters - also shown in the empty text box at the far right end '25'
          - when the user starts typing in the name the counter shows with each new character the number of remaining characters 
          - if the user reached 25 characters, the input counter shows 0 and it is not possible to add another one without deleting first
       - between the order number and code text box (or for un-ordered workflows in front of the code text box) icon indicating drag-n-drop > this allows the user to move and shuffle the order of the created steps 
       - 'x' behind the second step and the following ones deletes the step 
       - under the last step 'Add step' - adds a new following step
    - 'Cancel' button - brings users back to the list of workflows
    - 'Save' button - saves the workflow, only enabled once the user adds the workflow name and names at least one step 
- **clicking on 'Save', 'Cancel', 'Back to workflows' when defining a new workflow**
    - **Situation 1: I opened a new empty workflow and I did not add anything:**
       - I hit Back to workflows > I go back to workflow list, nothing changed nor saved
       - I hit Cancel > I go back to workflow list, nothing changed nor saved
       - I hit Save > Cannot. Save button is not enabled without the Name added + 1st step name added by the user 
    - **Situation 2: I open a new emplty workflow, only type in the name, leave the type as selected by default on 'ordered', but do not type in a step name**
       - I hit Back to workflows > an error pop-up is shown asking “Do you want to save the changes you made to this workflow?” + 3 actions:
          - ‘Don’t save’ - nothing is saved and I go to the list of workflows, 
          - ‘Cancel’ - I stay on the workflow, 
          - ‘Save’ - workflow is saved, Save button is disabled (and enabled once I make another change) and I remain on my workflow edit screen as I still need to add the step name
       - I hit Cancel > same applies as for Back
       - I hit Save > Cannot. Save button is not enables without the Name changes and the 1st step name added 
    - **Situation 3: I type in the name, select a type, add the 1st step and leave the 2nd step empty**
       - I hit Back > an error pop-up is shown asking “Do you want to save the changes you made to this workflow?” + 3 actions:
          - ‘Don’t save’ - nothing is saved and I go to the list of workflows, 
          - ‘Cancel’ - I stay on the workflow, 
          - ‘Save’ - workflow is saved, Save button is disabled (and enabled once I make another change) and I remain on my workflow edit screen
       - I hit Cancel > same applies as for Back
       - I hit Save > Save button is now enabled as I have added all the needed fields (name of workflow and name of 1st step). Workflow is saved. The 2nd step, which I kept empty, will not be saved at all. I remain in the edit screen where I have only 1 step to my workflow. Save button is disabled. I can go back to the list of workflows via Back button and I see my new workflow on the top of the list. Or I stay in the edit workflow screen and continue making changes. If so, the Save button gets enabled again with the 1st changes that I make. 
    - **Situation 4: I type in the name, select a type, add the 1st step, 2nd and 3rd** 
       - I hit Back > an error pop-up is shown asking “Do you want to save the changes you made to this workflow?” + 3 actions:
          - ‘Don’t save’ - nothing is saved and I go to the list of workflows, 
          - ‘Cancel’ - I stay on the workflow, 
          - ‘Save’ - workflow is saved, Save button is disabled (and enabled once I make another change) and I remain on my workflow edit screen
       - I hit Cancel > same applies as for Back
       - I hit Save > Save button is enabled and all is saved. I remain in the edit screen where I have all 3 steps. Save button is disabled. I can go back to the list of workflows via Back button and I see my new workflow on the top of the list. Or I stay in the edit workflow screen and continue making changes. If so, the Save button gets enabled again with the 1st changes that I make.   
- **clicking on the workflow name in the list of workflows**
    - opens view workflow screen - title 'View workflow'
    - 'Back to workflows' link
    - name of the workflow + type under
    - 'edit' icon > opens the edit workflow screen 
    - 'delete' icon > clicking on the icon a warning pop-up message is shown in the screen (same pattern as when deleting a form). The message contains: 
       - Question: 'Are you sure you want to delete this workflow?' 
       - 2 Actions: - 'OK' - if selected, workflow is deleted - 'Cancel' - if selected, workflow stays in the list 
    - 'Steps' title
    - list of steps - if this is an ordered workflow, then shows also the order number. If it is an un-ordered workflow, shows just the list as it was created
- **clicking on the 'edit' icon in the list of workflows**
    - brings user to the worflow edit screen >
    - identical with the new workflow screen 
    - the title of the page is 'Edit workflow'
    - all the settings (name, type, steps) are already selected for that workflow 
    - **When editing a workflow and nothing is changed:** 
       - I hit on 'Back to workflows" > nothing is changed and I return back to the list of workflows
       - I hit on 'Cancel' > nothing is changed and I return back to the list of workflows 
       - 'Save' - if no changes were made, Save is not enabled 
    - **When something is changed:**
       - I hit Back > an error pop-up is shown asking “Do you want to save the changes you made to this workflow?” + 3 actions:
          - ‘Don’t save’ - nothing is saved and I go to the list of workflows, 
          - ‘Cancel’ - I stay on the workflow, 
          - ‘Save’ - workflow is saved, Save button is disabled (and enabled once I make another change) and I remain on my workflow edit screen
       - I hit Cancel > same applies as for Back
       - I hit Save > Save button is enabled and all is saved. I remain in the edit screen. Save button is disabled. I can go back to the list of workflows via Back button and I see my new workflow on the top of the list. Or I stay in the edit workflow screen and continue making changes. If so, the Save button gets enabled again with the 1st changes that I make.   
- **clicking on the 'delete' icon in the list of workflows** 
    - a warning pop-up message is shown in the screen (same pattern as when deleting a form). The message contains: 
       - Question: 'Are you sure you want to delete this workflow?' 
       - 2 Actions: - 'OK' - if selected, workflow is deleted - 'Cancel' - if selected, workflow stays in the list 

#### Adding a workflow to a survey 
- to add a workflow to a survey, the user needs to click on 'Advanced settings' in the survey edit screen (same location as where monitoring is enabled and same design) 
- checkbox (not selected by default) + 'Enable workflow features' + '?' with help text: "With enabling workflow features you... **BLA BLA BLA - TO BE ADDED**
- once checkbox is selected a dropdown in shown - the 1st line in the dropdown says 'Select workflow' and holds the list of all existing workflows
- under the dropdown 'Show workflow' link 
    - shown at the same time the dropdown in shown = once the user selects the checkbox
    - by default de-active - is activated once a workflow is selected from the dropdown
- if user clicks on 'Show workflow' link > a in-page view of the workflow is shown
    - workflow name + type
    - steps - name + users added to the particular step
    - 'Responsible users' - clickable link with which the survey creator can decide who from the dashboard users is to apply the workflow step
- the 'Show workflow' changes to 'Hide workflow' - clicking on hide, the workflow view if folded back in and 'Hide workflow' changes back to 'Show workflow'

#### Adding users to a workflow 
- once a workflow is added to a survey no users are assigned to actually implement the workflow steps, thus the survey editor needs to decide who is responsible for which step in the workflow 
- to add users to a workflow, the survey editor must go to Advanced settings and click on Show workflow
- for each workflow step there is a link available 'Responsible users' 
- after clicking on the link a pop-up opens
    - 'O users selected' - counts the number of users selected to be responsible for this step
    - 'Done' - confirms the selection and closes the pop-up
    - search bar which serached the user list by user name, is not case sentitive 
    - list of users with checkboxes - users are organized alphabetically, show max 10 users and then you need to scroll the see the following ones 
- the users shown in the list of users are only those users who have the permission to 'view data' for that specific survey 
- once users are added to a workflow, they are shown under the workflow name and is the list is too long '+number more' is used to sum up the following users for that step. The '+number more' is a clicable link which shows the users who are not visible already (so those who belong under the '+number') 

#### Changing a workflow status for a data point 
Each workflow consists of steps. You can imagine workflow steps as a desk. Once your form is submitted it goes to one desk. Once the work there is done the form moves to another desk. We identify two types of worflows - ordereded and unordered. The difference between the two is in the way how steps can happen, so how can to form move through the desks. For an ordered workflow the steps happen in a specific order and you cannot skip from one desk to a third one, for example. With the un-ordered workflow the consequesnce of the desk is not pre set. In order to see which submission (data point) is in which stage/step of the workflow you mark the datapoint with a status. The status is derived from the workflow step.

##### Changing an ordered workflow status 
- the order of steps is defined when the user creates the workflow
- ordered steps can have 3 statuses: 'Pending', 'Approved', 'Rejected'
    - a new data point by default gets into the 1st step with the status 'pending' 
    - 'Pending' - means that the data point is in the workflow step, but the work is not finalized, thus the step in not marked as apporoved and the datapoint remains in this step. Pending means in a current workflow step.
    - 'Approved' - once the point is given the status 'approved' for a workflow step, the work for this step in done and the point moved to the following step in the workflow and gets by default the status 'pending'. Approved mean moveing forward in the workflow.   
    - 'Rejected' - once the point is marked in a workflow step as 'rejected' the workflow comes to an end and no more movement to the following steps is enabled. Rejected means the workflow came to a halt. 

There are two places where the responsible user can change the workflow for the particular data point: when viewing the datapoints in the new Data tab or when directly checking one specific data point. 


##### Changing an un-ordered workflow

##### Where can the workflow be applied on a datapoint/workflow status can be changed? 

##### Responsible users and applying workflow steps
- Example: workflow of 5 steps: 1 (default), 2, 3, 4, 5 - unordered 
    - situation A: Jana is responsible for step 2 > Jana can only select step 2 in the dropdown when changing the workflow status
    - situation B: Jana is responsible for status 1,3,4 > Jana can only select step 1,3,4 in the dropdown
- Example: workflow of 5 steps: 1 (default), 2, 3, 4, 5 - ordered
   - situation: Jana is responsible for step 2. Datapoint was just marked as ‘approved’ in step 1, so now it is in step 2 as pending. Jana has the edit rights. Jana can change pending into approved (or rejected) > datapoint moved to step 3 - pending. How can Jana change it back to step 2 pending, because she made a mistake? Cannot. Not supported in this implementation. If Jana selected 'rejected', she can then change it to 'pending' or 'apporved' again, as she is still in the step that she has rights for.
- all changes made to the workflow status for a datapoint are logged in and shown (with timestamp and the user who has made the change) 

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

### Non goals
What this feature will not contain: 
- reports containing worflow? 
- selecting first the type of workflow and then the respective workflow when adding a workflow to a survey
    - this is something that will come in hand once the users have a longer list of workflows
    - for the time being the user will get directly the full list of workflows 
- backwards movement when changing a datapoint workflow status - in the cases that I make a mistake and what to move the status from a step I have no responsibity assigned back one step

### Scenarios
- User stories - https://drive.google.com/open?id=1BKJCBYmlgrgVcJ4W7FzLLQQCxPJVm-A0NofiAW4pZVY
- Mockups feedback - https://docs.google.com/document/d/1aIxMnMP4SFePy4uvkUtZp6yfjKSoRFMur-KgiD9wNPc/edit

### Technical notes
Any technical issues or questions that are already known

### Open issues
Any known issues that need to be decided:
- Do we need to add a short text explaining what workflows are into the Workflows tab in the dashboard? 
- If we have a workflow that is added to multiple surveys and the user edits this workflow - this means that all the changes need to apply backwards for the existing suvreys and their points. Should be add some sorf of warning about this action before saving the edits or is this implied? 

### Details
Details, details, details.

Approved and ready for Visual Design by: 
