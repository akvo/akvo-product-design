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

### Details
Details, details, details.

Approved and ready for Visual Design by: 
