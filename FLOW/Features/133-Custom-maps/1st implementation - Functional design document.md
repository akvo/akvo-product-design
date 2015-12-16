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
   - Data map
   - Custom maps / Map visualisations 
   
   **Data map subtab** will open by default once user selects the main Maps tab. This holds the current Akvo FLOW map, where user selects her survey and sees (and inspects) the submitted data points. No funtionality change to this map.
   **Custom maps subtab** is the place where the users see her list of created custom maps, creates new maps, edits them, deletes them

**2. List of created custom maps** - holds all previously saved maps, maps are ordered by the date, when map was saved (also edited and saved) - with the latest map on the top
   - Title, Survey, Modified, Created by, Actions - list headers 
      - Title: holdes the map title ( = clickable link that brings the user to the map view), map description (not compulsory field)
      - Created by: name of the dashboard user 
      - Actions: 
            - edit - brings user to the map edit screen (identical with the new map screen with all the settings already selected)
            - delete - a warning pop-up message is shown in the screen (same pattern as when deleting a form). The message contains: 
               - Question: 'Are you sure you want to delete this map?'
               - 2 Actions: 
                    - 'OK' - if selected, map is deleted 
                    - 'Cancel' - if selected, map stays in the list
   - 'New map' button - which brings the user to a new empty csutom map screen
   - Dropdown for folder > Survey selection - same behaviour as in Data tab
      - shows only the list of surveys which the user has permissions to 
   - Search bar - user can search the list of maps based on name - not case sensitive
   - If no maps are created yet, user only has access to 'New map' button + in the middle of the screen the text: Please create a new custom map or map visualisation (this depends on how we name the sub-tab)
  
**3. Creating a New map**
   - after user clicks on the 'New map' button, he enters the map editing screen. This is ideantical for also editing the map (after clicking on the 'edit' icon) only the page titles differ
   - 'New map' - page title
   - 'Go back to map list' link (same design as in the Assignments sub-tab) - brings the user back to the list of maps. 
      - If the user has many any changes to the new map a warning must be given once he click on this item. After clicking on it a pop-up message is shown:
         - Text: 'Do you want to save the changes you made to this map?' 
         - 3 action buttons: 
            - 'Don't save' - if selected, the map is not saved, user is re-directed back to the list of data points
            - 'Cancel' - if selected, users stay on the map 
            - 'Save' - if selected, map is saved with the Map title given, user is re-directed to the list of maps, and map comes on the top of the list of maps. 
               - if there is no map title given, FLOW saves maps with a default name: New map 1, New map 2, etc
   - 'Save' button - becomes active only once the user makes a change in the given fields and settings, saves the new map and shows it on the top of the list of maps. If there is not map title given by the user, see above.
   - Map title text field - holds in the text 'New map - please change name', if user clicks into the text field, this sentence disappears and the user can start typing directly
   - Map description text field - same behaviour as map title
   - 'Map settings icon' - opens and closes the 'Map settings' menu
   - empty map tiles, note the change of the location of the icon for map layers 
   - 'Map settings' menu - here is where the user selects the data she wants to base her map on, colours, manages the legend, filters on time and in the future decides other settigns for the map

**4. 'Map settings' menu**
- title Map settings
- 'Data': dropdown - choose folder or survey > once first item selected further dropdowns are generated (same behaviour as in Data tab for example). The last level  to select is questions. The folders and surveys visible are in respect to the users permissions and given resource access. 
    - Limitations: 
       - only support registration forms in the 1st implementation. If a survey with monitoring is selected, only registration form is selectable.  
       - in the dropdown list holding the questions, only option questions and geographic share questions are provided from the selected form
    - once the user selects an **option question**:
       - data points are generated on the map 
       - the options are listed down 
       - each option get by default a color - indicated next to the options and data points are colored respectively. The color mirrors the first color theme provided lower in the Settings
       - each option also shows in brackets the number of data points, where this particular option was selected 
       - if the option question has 'allow other' > 'other' is listed as the last option with a given color and data point count 
       - if the option question has codes to the values as well, codes follow the same pattern as in the Inspect data tab
    - once the user selects a **geographic shape question**
       - all the geoshapes from this question are rendered on the map (instead of data poitns)
       - all shapes have the same colour
       - instead of the options - the 'Geographic shape (35)' is written. If the geographic shape was limited to only one particular shape type, then the text would be: 'Geographic shape - lines (35)'
       - the number in the brackets indicates the number of submitted geographic shapes
- 'Time range': filters the data points on submission date. 
    - if no form and question are selected, the dates are blank
    - if a form and question are selected, the dates show by default the submission time range (date of the first submitted form on one end and last submitted form on the other) 
- 'Legend': allows user to select whether she wants a legend to be shown on her map and what fields it contains. She has 4 items to select from in the form of checkboxes.
    - Show legend - selected by default with all new maps 
    - Title + a text box (holding 'New legend - please change name' as default name) 
    - Show question - by default selected with all new maps
    - Show the total number of data points 
- 'Theme': here the user can select from 3 given color themes to style the data points and the 4th can be custom defined
    - each color picker in the custom defined color theme opens a color palet for the user to select from 

**5. Viewing a saved custom map**
- user clicks on the map name in the list of forms and is re-directed to the View map screen 
- holds the map title, description, 3 actions: 'Go back to map list', 'edit icon', 'delete icon' 
    - edit icon brings her to the same screen as when creating a new map, but all the settings are already defined and the screen title is not 'New map' but 'Edit map' 
    - delete icon - see above in 2.

**6. Needed permissions**
- for this 1st implementation we propose to create only 1 new permission: 'Manage custom maps' (name depends on how we call the sub-tab) which will give the user full access to the tab. If the permission is not given to the user, she does not see this tab. Same behaviour as with cascade resources or assignments.
   
### Non goals
What this feature will not contain

### Scenarios
A number of scenarios for how this feature will benefit users

### Technical notes
Any technical issues or questions that are already known

### Open issues
Any known issues that need to be decided
1. 2 new subtabs need to be named properly - to be consulted with Comms team 
2. In the list of maps - will the Created by refer to the user who created the map or to the user who has done the latest edit + save of the map? 
3. What to do with multi select option questions? - "pie chart style" color coding of data points? 
4. If option question has allow other, do we need to list which 'others' were submitted by the users? 



### Details
Details, details, details.

Approved and ready for Visual Design by: 
