# Functional Design document

Custom maps - 1st implementation
-------------

### Documents
Product design issue: https://github.com/akvo/akvo-product-design/issues/133
FLOW issue: https://github.com/akvo/akvo-flow/issues/1407

### Overview
The custom maps will enable data-driven styling of markers and custom icons on the Akvo FLOW maps. This will expand the basic map functionality to the current FLOW maps and will give the users a chance to understand their collected data better in geographic context. We will implement this feature in separate steps, starting with the most basic functionality and supporting the simplest data structure, followed by tackling more complex items (as monitoring and repeated question groups for example). The users will be able to save their created maps and publish them on their website or share with other partners.

The initial implementation will enable to base a map only on option questions per selected registration form and on a selected geographic shape question. No custom icons will be supported and the user can only save the visualisations (no publishing). We will also add a set of permissions covering this new feature.

### Marketing description
A marketing description of this feature.

### Initial features

**1. Create 2 subtabs under main Maps tab:**
    - **Data map** - subtab - will open by default once user selects the main Maps tab. This holds the current Akvo FLOW map, where user selects her survey and sees (and inspects) the submitted data points. No funtionality change to this map.
    - **Custom maps** - subtab - is the place where the users see her list of created custom maps, creates new maps, edits them, deletes them

**2. List of created custom maps** 
- holds all previously saved maps, maps are ordered by the date, when map was saved (also edited and saved) 
- with the latest map on the top 
- the design of the list of maps copies the design of the list of surveys. 
- **If there is no maps created**
    - Page header: Custom maps
    - 'New map' button - located on the top right side of the screen
    - 'No maps yet' text in the middle of the screen
- **If there are already maps created** 
    - page header: Custom maps
    - 'New map' button - which brings the user to a new empty custom map screen, button is located in the top right of the screen
    - List header: Name, Survey, Modified, Created by
       - Title: holdes the map title ( = clickable link that brings the user to the map view), map description (not compulsory field) is located below the title
       - Survey: Name of the survey the user based this map on
       - Modified: date of when the map was either created or edited
       - Created by: name of the dashboard user 
       - two action icons 
            - edit - brings user to the map edit screen (identical with the new map screen with all the settings already selected)
            - delete - a warning pop-up message is shown in the screen (same pattern as when deleting a form or a workflow). The message contains: 
               - Question: 'Are you sure you want to delete this map?'
               - 2 Actions: 
                    - 'OK' - if selected, map is deleted 
                    - 'Cancel' - if selected, map stays in the list
  
**3. Creating a New map**
- after user clicks on the 'New map' button, he enters the map editing screen. This is ideantical for also editing the map (after clicking on the 'edit' icon) only the page titles differ
- Page titple - 'New map' 
- 'Back to maps' link (same design as in the Assignments sub-tab) - brings the user back to the list of maps. 
- 'Save' button - becomes active only once the user makes a change in the map name. Saves the new map and shows it on the top of the list of maps. 
- 'Cancel button' - this button is originally not in the mockups, however - if we look at the mockups of Worflow and Webforms (which hold the newset design changes) there is also a 'Cancel' button besides the 'save and 'back' buttons. The location of all 3 action buttons needs review, so they are placed all in the same location - in order to start introducing more consistency in the dashabord with these new changes. 
- Map name text field - holds in the name of the new map. When empty, in grey - 'Map name'. If user clicks into the text field, this sentence disappears and the user can start typing directly
- Map description text field - same behaviour as map title, When empty, in grey - 'Map description (optional)'
- 'Map settings icon' - opens and closes the 'Map settings' menu
- empty map tiles, note the change of the location of the icon for map layers and zooming in and out if the map
- 'Map settings' menu - here is where the user selects the data she wants to base her map on, colours, manages the legend, filters on time and in the future decides other settigns for the map

**4. 'Map settings' menu**
- title 'Map settings'
- 'Data' setting: 
    - dropdown - choose folder or survey > once first item selected further dropdowns are generated (same behaviour as in Data tab for example). The last level  to select is questions. The folders and surveys visible are in respect to the users permissions and given resource access. 
    - Limitations: 
       - only support registration forms in the 1st implementation. If a survey with monitoring is selected, both types of forms are given, but only one the registration form is selected, the dropdown with the questions opens. If a monitoring form is selected, no dropdown with questions is shown. Datapoints are shown on the map for the monitored form, but you cannot colour code as you cannot specify the question.
       - in the dropdown list holding the questions, only questions that are not in repeated groups are shown 
       - and only option questions are listed - can colour code the points depending on the selected answers. 
       - We still need to solve how to deal with multiple select options?
    - once the user selects an **option question**:
       - data points are generated on the map 
       - the options are listed down 
       - each option get by default a color - indicated next to the options and data points are colored respectively. The color picker is located in the same spot. (This differs from Kiarii's mockups and follows the colour picker Charles has already implemented) 
       - each option also shows in brackets the number of data points, where this particular option was selected 
       - if the option question has 'allow other' > 'other' is listed as the last option with a given color and data point count 
       - if the option question has codes to the values as well, codes follow the same pattern as in the Inspect data tab
- 'Time range': filters the data points on submission date. 
    - if no form and question are selected, the dates are blank
    - if a form and question are selected, the dates show by default the submission time range (date of the first submitted form on one end and last submitted form on the other) 
- 'Legend': allows user to select whether she wants a legend to be shown on her map and what fields it contains. She has 4 items to select from in the form of checkboxes.
    - Show legend - selected by default with all new maps 
    - Title + a text box (holding 'New legend' as default name) 
    - Show question - by default selected with all new maps
    - Show the total number of data points 
- 'Theme' - this was originally proposed by Kiarii in the mockups as the place where users can select the colours. Charles has implemented this in a different way which allows the user change the colour in the options list

**5. clicking on 'Save', 'Cancel', 'Back to maps' when creating a new map** 
- **Situation 1: I opened a new empty map and I did not add anything:**
    - I hit 'Back to maps' > I go back to maps list, nothing changed nor saved
    - I hit 'Cancel' > I go back to maps list, nothing changed nor saved
    - I hit 'Save' > Cannot. 'Save' button is not enabled without the Name added  
- **Situation 2: I open a new emplty map, only type in the name, but make no changes to the map settings**
    - I hit 'Back to maps' > an error pop-up is shown asking 'Do you want to save the changes you made to this map?' + 2 actions:
       - ‘Don’t save’ - nothing is saved and I go to the list of maps, 
       - ‘Save’ - map is saved, I go back to the list of maps and my map is on the top of the list 
    - I hit 'Cancel' > same applies as for 'Back...'
    - I hit 'Save' > 'Save' button is now enabled as I have added all the name field. Map is saved. I remain in the edit screen where I can continue working on my map. 'Save' button is disabled. I can go back to the list of maps via 'Back...' button and I see my new map on the top of the list. Or I stay in the edit map screen and continue making changes. If so, the 'Save' button gets enabled again with the 1st changes that I make. 
- **Situation 3: I type in the name and adjust many settings to the map** 
    - I hit 'Back...' > an error pop-up is shown asking 'Do you want to save the changes you made to this map?' + 2 actions:
          - ‘Don’t save’ - nothing is saved and I go to the list of maps, 
          - ‘Save’ - map is saved, I go back to the list of maps and my map in on the top of the list
       - I hit 'Cancel' > same applies as for Back
       - I hit 'Save' > 'Save' button is enabled and all is saved. I remain in the edit screen. 'Save' button is disabled. I can go back to the list of maps via 'Back...' button and I see my new map on the top of the list. Or I stay in the edit map screen and continue making changes. If so, the 'Save' button gets enabled again with the 1st changes that I make.   

**6. Viewing a saved custom map**
- user clicks on the map name in the list of maps and is re-directed to the View map screen 
- holds the map title, description, 3 actions: 'Back to maps', 'edit icon', 'delete icon' 
    - edit icon brings her to the same screen as when creating a new map, but all the settings are already defined and the screen title is not 'New map' but 'Edit map' 
    - delete icon - a warning pop-up message is shown in the screen (same pattern as when deleting a form or a workflow). The message contains: 
       - Question: 'Are you sure you want to delete this map?'
       - 2 Actions: 
          - 'OK' - if selected, map is deleted and the user is brought back to the list of maps, where this map is no longer in the list
          - 'Cancel' - if selected, map stays in the list

**6. Needed permissions**
- for this 1st implementation we propose to create only 1 new permission: 'Manage custom maps' which will give the user full access to the tab. If the permission is not given to the user, she does not see this tab. Same behaviour as with cascade resources or assignments.
   
### Non goals
What this feature will not contain:
- map will only be based on registration forms > with surveys where monitoring is enabled, only after clicking on the registration forms the question dropdown will be shown
- option questions located in a repeated question group will not be supported either (following implementation) 
- to base map on number question, geoshape, photo (following implementation) 
- publishing the saved map via url and/or iframe code
- to define the size of markers 
- to change the shape of markers 
- to use the map as the public facing map of the dashboard 

### Scenarios
A number of scenarios for how this feature will benefit users - this feature is based on the maps Charles and others are creating for partners from the data collected with FLOW. These maps are created using CartoDB map features. 

### Technical notes
Any technical issues or questions that are already known

### Open issues
Any known issues that need to be decided

1. User permissions 
    - If we create only the permission to Manage maps, we are not covering the issue that will arise with users being albe to see data only for specific surveys. 
    - Lets take an example case: a user has access (View data permission) to only Survey Demo. He can only view data for this particular survey in the Data tab, select it in the dropdown in the current reports tab, cascades, etc. Thus, in the Custom maps tab he should only see the maps created for that survey and when creating a new map he should also only be able to select that survey in the Map settings dropdown. --> there should be a dropdown selection before the list of maps which works as in the Data tab (part of the mockups)
    - if the user has the right to view all data from all surveys, then he should also be able to select All surveys in the dropdown in the Map settings part, which will give him all the data points on the map

2. In the list of maps - will the Created by refer to the user who created the map or to the user who has done the latest edit + save of the map? 

3. What to do with multi select option questions? - "pie chart style" color coding of data points? 

4. If option question has allow other, do we need to list which 'others' were submitted by the users, or is just giving the other a color enough? 

### Details
Details, details, details.

Approved and ready for Visual Design by: 
