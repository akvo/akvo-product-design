Workflow 
-------------

### Overview
A short overview of what we try to accomplish

Many daily tasks are created around the data collected with Akvo FLOW and these tasks are usually part of a larger process where the submitted forms play a crucial role. Currently you cannot see the relationship between the submitted data and the different tasks and processes an organization has in place. Akvo FLOW is a data collection tool and we do not aim to change it to a tool that manages processes in organizations, however, enabling our partners to see in which stage of their process the data currently is will vastly ease the way the data is used. 

With this feature users will be able to add a basic workflow to the Akvo FLOW dashboard and track in which stage of the process the submitted data is currently being used in. 

During our research we have looked into mutliple types of workflows and different situations where processes relate to data. Workflows can be hybrid or linear, the order of the different steps (or workflow stages) can have a defined sequence or not, one user can be responsible for one or multiple steps in the workflow, etc. 

In order to create a feature that can support the widest array of use cases, we focused on three different scenarios. Their simplified version is: 

A) Biogas installation: The biogas installation is first registered using Akvo FLOW. After the form is checked by the programme officer it goes to the technical department as it is ready for technical check, who assesses the submitted data based on the technical criteria. From here the result can either be that the installation has passed the check or did not pass check. The result of the technical check determines whether the biogas installation is being dealt with by another department in the organization, is ready for the external audit or more data needs to be collected. 
   
B) Patient in a hospital: The patient is first admitted at the hospital and his general information is written down. The doctor performs a 1st check and captures this information as well. Then the scan is done, the results come in from the scan and all this information is added to the patient's file. The patient can either be sent home with needing a final check in a week or he needs another scan and further examination. After for example a surgery, he continues being in the hospital and goes through 3 different stages in the workflow (another scan, same test again, further tests, etc.). Many patients die during this process or get sent home for further recovery.  

C) Small farmer applying for micro-loan: The general information about the farmer is first saved in the database. The following step is to inspect the farmers yield and investigate more on the crops he produces. All this data is stored. Then his farm is checked by an external auditor from the bank to see whether he passes the initial bank critetia to be considered for the micro-load. Now a person in the bank looks at all farmers who have passed the first audit and decides whether they pass their second requirements and gives them 3 different stamps on their application: “Passed - ready for trial month”, “Needs follow up check” or “Not accepted”. This stamp then determines what the following procedure is. 

All these cases have a different process around them, but they share common characteristics: 
- the process consistes of different tasks/steps/stages/desks
- the subject's path in the workflow is based on moving from one stage to another (linear) but it came move in a given order or based on the current situation (he can enter in one stage multiple times over the course of time)
- to see in which step of the workflow process the subject currently is it gets a certain mark/stamp/status
- in a different stage of the workflow a new user plays a role and is responsible for completing the task

Based on the initial research we decided to enable two types of worflows: ordered and un-ordered. The user can create an unlimited amount of steps (stages of the workflow/desks/tasks) his worflow consists of and assign responsible users for the steps. A workflow can be reused with multiple surveys. To see in which step of the workflow the submitted form is currently in, we will translate the names of the steps into statuses (stamps/marks) that are given to the submitted data. 

### Marketing description 
A marketing description of this feature.

### Initial features

This feature will bring multiple changes to the Akvo FLOW dashboard, from creating a new main tab called 'Library' holding the cascades and workflows, changing the way submitted data is being viewed, to enlarging survey settings, and creating a new permission. 

#### Creating a workflow 
- **new tab "Library"** which will hold: Cascade resources (move them away from Data tab here) and 'Workflows' 
- in **"Workflows" tab** - title 'Workflows' 
- 'New workflow' button which enables you to create a new workflow
- 'No workflows yet' in the middle of the screen if the user did not create a workflow, if he did > then the list of workflows is shown there
- list of workflows - structure for both header and table: (unify design with Survey list, Custom map list) 
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
    - 'Steps:' + two text boxes - here the user creates the different steps that make up the workflow
       - in front of the two text boxes - for ordered workflows > show the order number for each step, for un-ordered workflows do not show anything 
       - text box for step code - in the empty box show in grey font 'Code'
       - text box for step name - in the empty box show in grey font 'Step name' 
          - each step name can only have 25 characters - also shown in the empty text box at the far right end '25'
          - when the user starts typing in the name the counter shows with each new character the number of remaining characters 
          - if the user reached 25 characters, the input counter shows 0 and it is not possible to add another character without deleting one first
       - between the order number and code text box (or for un-ordered workflows in front of the code text box) icon indicating drag-n-drop > this allows the user to move and shuffle the order of the created steps 
       - 'x' behind the second step and the following ones deletes the step 
       - under the last step 'Add step' - adds a new following step
    - 'Cancel' button - brings users back to the list of workflows
    - 'Save' button - saves the workflow, only enabled once the user adds the workflow name and the name of at least one (the first) step
    - for un-ordered workflows - behind the 1st text box - 'Default status' - this means that this is the 1st status a new datapoint gets by default after submission 
- **clicking on 'Save', 'Cancel', 'Back to workflows' when defining a new workflow**
    - **Situation 1: I opened a new empty workflow and I did not add anything:**
       - I hit 'Back to workflows' > I go back to workflow list, nothing changed nor saved
       - I hit 'Cancel' > I go back to workflow list, nothing changed nor saved
       - I hit 'Save' > Cannot. 'Save' button is not enabled without the Name added + 1st step name added by the user 
    - **Situation 2: I open a new emplty workflow, only type in the name, leave the type as selected by default on 'ordered', but do not type in a step name**
       - I hit 'Back to workflows' > an error pop-up is shown asking 'Do you want to save the changes you made to this workflow?' + 2 actions:
          - ‘Don’t save’ - nothing is saved and I go to the list of workflows, 
          - ‘Save’ - workflow is saved, I go back to the list of workflows and my workflow is on the top of the list 
       - I hit 'Cancel' > same applies as for 'Back...'
       - I hit 'Save' > Cannot. 'Save' button is not enabled without the Name being changed and the 1st step name added 
    - **Situation 3: I type in the name, select a type, add the 1st step and leave the 2nd step empty**
       - I hit 'Back...' > an error pop-up is shown asking 'Do you want to save the changes you made to this workflow?' + 2 actions:
          - ‘Don’t save’ - nothing is saved and I go to the list of workflows, 
          - ‘Save’ - workflow is saved, I go back to the list of workflows and my workflow in on the top of the list
       - I hit 'Cancel' > same applies as for 'Back...'
       - I hit 'Save' > 'Save' button is now enabled as I have added all the needed fields (name of workflow and name of 1st step). Workflow is saved. The 2nd step, which I kept empty, will not be saved at all. I remain in the edit screen where I have only 1 step to my workflow. 'Save' button is disabled. I can go back to the list of workflows via 'Back...' button and I see my new workflow on the top of the list. Or I stay in the edit workflow screen and continue making changes. If so, the 'Save' button gets enabled again with the 1st changes that I make. 
    - **Situation 4: I type in the name, select a type, add the 1st step, 2nd and 3rd** 
       - I hit 'Back...' > an error pop-up is shown asking 'Do you want to save the changes you made to this workflow?' + 2 actions:
          - ‘Don’t save’ - nothing is saved and I go to the list of workflows, 
          - ‘Save’ - workflow is saved, I go back to the list of workflows and my workflow in on the top of the list
       - I hit 'Cancel' > same applies as for Back
       - I hit 'Save' > 'Save' button is enabled and all is saved. I remain in the edit screen where I have all 3 steps. 'Save' button is disabled. I can go back to the list of workflows via 'Back...' button and I see my new workflow on the top of the list. Or I stay in the edit workflow screen and continue making changes. If so, the 'Save' button gets enabled again with the 1st changes that I make.   
- **clicking on the workflow name in the list of workflows**
    - opens view workflow screen - title 'View workflow'
    - 'Back to workflows' link
    - name of the workflow + type located under
    - 'edit' icon > opens the edit workflow screen 
    - 'delete' icon > clicking on the icon a warning pop-up message is shown in the screen (same pattern as when deleting a form). The message contains: 
       - Question: 'Are you sure you want to delete this workflow?' 
       - 2 Actions: 
          - 'OK' - if selected, workflow is deleted and the user goes back to the list of workflows 
          - 'Cancel' - if selected, workflow is not deleted and the user remains viewing the workflow
    - 'Steps' title
    - list of steps - if this is an ordered workflow, then shows also the order number. If it is an un-ordered workflow, shows just the list as it was created
- **clicking on the 'edit' icon in the list of workflows**
    - brings user to the worflow edit screen > identical with the new workflow screen, but the title of the page is 'Edit workflow'
    - all the settings (name, type, steps) are already selected and defined for that workflow 
    - **When editing a workflow and nothing is changed:** 
       - I hit on 'Back to workflows' > nothing is changed and I return back to the list of workflows
       - I hit on 'Cancel' > nothing is changed and I return back to the list of workflows 
       - 'Save' - as no changes were made, 'Save' is not enabled. 
    - **When something is changed:**
       - I hit 'Back...' > an error pop-up is shown asking 'Do you want to save the changes you made to this workflow? + 2 actions:
          - ‘Don’t save’ - nothing is saved and I go to the list of workflows, 
          - ‘Save’ - workflow is saved, I go back to the list of workflows and my edited workflow is on top of the list 
       - I hit 'Cancel' > same applies as for 'Back...'
       - I hit 'Save' > 'Save' button is enabled and all is saved. I remain in the edit screen. 'Save' button is disabled. I can go back to the list of workflows via 'Back...' button and I see my workflow on the top of the list. Or I stay in the edit workflow screen and continue making changes. If so, the 'Save' button gets enabled again with the 1st changes that I make.   
- **clicking on the 'delete' icon in the list of workflows** 
    - a warning pop-up message is shown in the screen (same pattern as when deleting a form). The message contains: 
       - Question: 'Are you sure you want to delete this workflow?' 
       - 2 Actions: 
          - 'OK' - if selected, workflow is deleted and the user remains in the list of workflows 
          - 'Cancel' - if selected, workflow stays in the list 

#### Adding a workflow to a survey 
- to add a workflow to a survey, the user needs to be in the survey edit screen and click on 'Advanced settings' in the survey edit screen (same location as where monitoring is enabled and same design) 
- checkbox (not selected by default) + 'Enable workflow features' + '?' with help text: "With enabling workflow features you... **needs to be written** 
- once checkbox is selected a dropdown is shown - the 1st line in the dropdown says 'Select workflow' and holds the list of all existing workflows - here is where the use selects which workflow she wants to add to this survey 
- under the dropdown 'Show workflow' link 
    - shown at the same time the dropdown in shown = once the user selects the checkbox
    - by default disabled - is activated once a workflow is selected from the dropdown
- if user clicks on 'Show workflow' link > a in-page view of the workflow is shown
    - workflow name + type
    - steps - name + users added to the particular step
    - 'Responsible users' - clickable link with which the survey creator can decide who from the dashboard users is to apply the workflow step
- the 'Show workflow' changes to 'Hide workflow' - clicking on hide, the workflow view is folded back in and 'Hide workflow' changes back to 'Show workflow'

#### Adding users to a workflow 
- once a workflow is added to a survey no users are assigned to actually implement the workflow steps, thus the survey editor needs to decide who is responsible for which step in the workflow
- ! without adding users to the worflow steps, the workflow statuses cannot be applied on the datapoints, thus the workflow cannot be used !  
- to add users to a workflow, the survey editor must go to Advanced settings and click on Show workflow
- for each workflow step there is a link available 'Responsible users' 
    - in the case of a un-ordered workflow the 'default' status cannot have a responsible user as the datapoint is automatically given this status once submitted 
- after clicking on the link a pop-up opens
    - 'O users selected' - counts the number of users selected to be responsible for this step
    - 'Done' - confirms the selection and closes the pop-up
    - search bar which lets you to search the user list by user name, is not case sentitive 
    - list of users with checkboxes - users are organized alphabetically, show max 10 users and then you need to scroll in the pop-up to see the following users 
- the users shown in the list of users are only those users who have the permission to 'view data' for that specific survey 
- once users are added to a workflow, they are shown under the workflow name and if the list is too long '+number more' is used to sum up the following users for that step. The '+number more' is a clicable link which shows the users who are not visible already (so those who belong under the '+number') 

#### Changing a workflow status for a data point 
Each workflow consists of steps. You can imagine workflow steps as a desk. Once your form is submitted it goes to one desk. Once the work there is done the form moves to another desk. We identify two types of worflows - ordereded and unordered. The difference between the two is in the way how steps can happen, so how can a form move through the desks. For an ordered workflow the steps happen in a specific order and you cannot skip from one desk to a third one, for example. With the un-ordered workflow the sequence of the desks is not pre-set. In order to see which submission (data point) is in which stage/step of the workflow you mark the datapoint with a status. The status is derived from the workflow step.

##### Changing an ordered workflow status 
- the order of steps is defined when the user creates the workflow
- ordered steps can have 3 statuses: 'Pending', 'Approved', 'Rejected' (or 'Disapproved')
    - a new data point by default gets into the 1st step with the status 'pending' 
    - 'Pending' - means that the data point is in the workflow step, but the work is not finalized, thus the step in not marked as 'apporoved' and the datapoint remains in this step. 'Pending' means being in a current workflow step.
    - 'Approved' - once the point is given the status 'approved' for a workflow step, the work for this step in done and the point moves to the following step in the workflow and gets by default the status 'pending'. 'Approved' means moving forward in the workflow.   
    - 'Rejected' - once the point is marked in a workflow step as 'rejected' the workflow comes to an end and no more movement to the following steps is enabled. 'Rejected' means the workflow came to a halt. 

##### Changing an un-ordered workflow
- the order for un-ordered workflows is not important. The datapoint can move from desk A to B, then to F and to A again. 
- when creating the un-ordered workflow the user does not define the sequence and only the existing steps
- this means that un-ordered workflows have only one status = same as the name of the step
- the status indicates that the datapoing is currently in that step/stage of the workflow 

##### How does the data point status change with the approval steps? 
- surveys that have a workflow added to them will also have an extra column in the data preview (as well as in reports) which will show the current status of the data point
- the status is based on the approval given (or not given) to a data point 
- **Unordered workflow** 
    - for an unordered workflow the status change is straigforward. 
    - if there are 6 possible levels in the approval workflow, and the user selects 'level 3' when approving the data point in the Data tab > 'level - 3' is also the status of the data point 
- **Ordered approval workflow**
    - Example case: data approval holding 5 steps and each step has a different user responsible 
    - data point is submitted and by default gets the status: 'step 1 - pending'
    - user 1 deliberately selects pending > point status: 'step 1 - pending' + history log - timestamp - user 1 - step 1 - pending - comment
    - user 1 approves step 1 > point status: 'step 2 - pending' + history log with timestamap - user 1 - step 1 - approved - comment 
    - user 1 disapproves step 1 > point status: 'step 1 - disapproved' + history log with timestamp - user 1 - step 1 - disapproved - comment
    - user 3 opens point that was approved by user 2 in step 2 and now has the status 'step 3 - pending'
    - user 3 approves step 3 > point status: 'step 4 - pending' + history log with timestamp - user 3 - step 3 - approved - comment 
    - user 3 disapproves step 3 > point status: 'step 2 - pending' + history log with timestamp - user 3 - step 3 - disapproved - comment
    - user 5 opens point that was approved by user 4 in step 4 and how has the status 'step - 5 pending'
    - user 5 approves step 5 (last step) > point status: 'step 5 - approved' + history log with timestamp - user 5 - step 5 - approved - comment 
    - user 5 disapproves step 5 > point status: 'step 4 - pending' + history log with timestamp - user 5 - step 5 - disapproved - comment
- This needs to be discussed within the team 

##### Where can the workflow be applied on a datapoint/workflow status can be changed? 
- There are two places where the responsible user can change the workflow for the particular data point: 
    - when viewing the datapoints in the new Data tab 
    - when directly checking one specific data point
- **in the list of datapoints**
    - the new 'Data' tab shows the list of datapoints for a selected survey and in there is a column 'Workflow status'
    - this column indicates the current workflow status for the datapoint = in which step/stage of the workflow the specific point is 
    - for ordered workflows - next to the workflow status three possible indications:
       - a tick - for datapoints where the step is 'approved'
       - a dropdown arrow - for datapoints where the step is in 'pending'
       - a circle - for datapoints where the step in in 'rejected' 
    - the workflow status is a clickable link that opens a pop-up
    - in this pop-up the user sees what is the current status, what the following status can be, and the history of all the statuses given to the datapoint so far (status name + time stamp when it was submitted + user who made the change) 
    - **for an ordered workflow**
       - title of pop-up window: 'Workflow status'
       - 1st step of the workflow consists of: 
          - '1.' 
          - name of workflow step
          - status dropdown: 'Pending'; 'Approved'; 'Rejected' - where 'pending' is set by default for each new data point and every time the uses selects 'approved' for a step, the new workflow step opens up and starts with the 'pending' status  
          - comment text + 'Comment' in the box - for the user to type in 
          - 'Submit' button with which the user confirms the status change 
       - following steps hold the same sturcture 
       - once the status is 'Approved' - a tick is shown and a line indicating the next step is shown, the next step gets 'pending' 
       - once the status is 'Rejected' - no line to the next step as the workflow has ended + the new step is not opened nor given the status 'pending' 
    - **for an un-ordered workflow** 
       - title of pop-up window: 'Workflow status' 
       - Dropdown with 'Select new status' - gives the list of all the steps in the workflow which are used as workflow statuses on the datapoint to indicate in which step/stage of the workflow the point is/has currently fulfilled 
       - text box with 'Comment' 
       - 'Submit' button - user confirms the status and it is added to the workflow once clicked on
       - followed by the history - with the latest on the top - status name + time stamp + user + comment 
- **in the datapoint view** 
- the same pattern applies as above 

##### Responsible users and applying workflow steps
- Example: workflow of 5 steps: 1 (default), 2, 3, 4, 5 - unordered 
    - situation A: Jana is responsible for step 2 > Jana can only select step 2 in the dropdown when changing the workflow status
    - situation B: Jana is responsible for status 1, 3, 4 > Jana can only select steps 1, 3, 4 in the dropdown
- Example: workflow of 5 steps: 1 (default), 2, 3, 4, 5 - ordered
   - situation: Jana is responsible for step 2. Datapoint was just marked as ‘approved’ in step 1, so now it is in step 2 as pending. Jana has the edit rights. Jana can change pending into approved (or rejected) > datapoint moved to step 3 - pending. How can Jana change it back to step 2 pending, because she made a mistake? Cannot. Not supported in this implementation. If Jana selected 'rejected', she can then change it to 'pending' or 'apporved' again, as she is still in the step that she has rights for.
- all changes made to the workflow status for a datapoint are logged in and shown (with timestamp and the user who has made the change) 

#### New permission - Manage workflows
- a new user permission will be added to he current list of permission called 'Manage workflows'
- if a user has this permission assigned, then he will see the main tab 'Library', its subtab 'Workflows' and will have full view, create, edit and delete rights in this subtab
- if a user does not have this permission assigned, then he will not see the 'Workflows' subtab in his dashboard
- in order to be able to add a workflow to a survey, the user needs to have 'Edit folder' permissions linked to the particular survey (or to all surveys) 
    - with 'Edit folder' permission the user can make changes on the survey level and can view the form, but cannot edit the form 
- in order to be able to add the 'Responsible users' to a survey step, the user needs to have 'Edit folder' permission and 'Administrator - Create, Modify and Delete users' as well
    - the user who has only the 'Edit folder' permission can add a workflow to a survey, but he cannot add users to the workflow steps. He does not see the 'Responsible users' links at each step
    - the users who can be assigned as 'Responsible users' for that workflow step, are selected in the dropdown per each step separately, and these users have at least the permissions to 'view data' for the particular survey
- viewing the workflow status on a data point is part of the 'view data' permission 
- however, only users who were assigned as 'responsible users' in the survey for a particular workflow step, will have the right to change the status of the data point for this step 

#### Changed Data tab + search + filters 
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
- When adding a workflow to a survey - selecting first the type of workflow and then the respective workflow 
    - this is something that will come in hand once the users have a longer list of workflows
    - for the time being the user will get directly the full list of workflows 
- backwards movement when changing a datapoint workflow status - in the cases that I make a mistake and what to move the status from a step I have no responsibity assigned back one step
- at this point it will not be possible to see in the User tab as part of the user information if he/she is a 'responsible user' for a workflow step for a survey 

### Scenarios
- User stories - https://drive.google.com/open?id=1BKJCBYmlgrgVcJ4W7FzLLQQCxPJVm-A0NofiAW4pZVY
- Mockups feedback - https://docs.google.com/document/d/1aIxMnMP4SFePy4uvkUtZp6yfjKSoRFMur-KgiD9wNPc/edit

### Technical notes
Any technical issues or questions that are already known

### Open issues
Any known issues that need to be decided:
- Do we need to add a short text explaining what workflows are into the Workflows tab in the dashboard? 
- If we have a workflow that is added to multiple surveys and the user edits this workflow - this means that all the changes need to apply backwards for the existing suvreys and their points. Should be add some sorf of warning about this action before saving the edits or is this implied? 
- We need to look into displaying the workflow status in a raw data report, if this is needed then how and when will we implement? 

### Details
Details, details, details.

Approved and ready for Visual Design by: 
