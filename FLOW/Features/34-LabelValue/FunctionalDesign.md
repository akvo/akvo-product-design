# Functional Design document

Adding label value to questions options
-------------

### Documents
Links to relevant issues

### Overview
The aim is to add labels to question options. The options will then have a label/code and the value/name of the option. The main purpose for this is to make it easier to import FLOW data into existing databases. 


### Marketing description
A marketing description of this feature.

### Initial features

1. User interface when creating a new option question 
  - Textfield where to type in the code and a second one next to it to type in the "Item name (mandatory)"
  - Add button to add a new option 
  - Once created show both fields for visual confirmation
  - Resuse the cascading question UI
2. In the app not visualize the code, only the item name
3. Viewing the data on the dashboard
  - Show both code and item name in the answer column
  - Need to define a way how to clearly visualize this - copy the way we will use for cascade codes
4. In reports
  - Two options: 
    - Show both code and item name/value 
    - Enable user to select how they want to export such data- if they want to have only the code, only the value, both (how to visualize in a spread sheet?)

### Non goals
What this feature will not contain

### Scenarios
A number of scenarios for how this feature will benefit users

### Technical notes
Any technical issues or questions that are already known

### Open issues
Any known issues that need to be decided

### Details
Details, details, details.

Approved and ready for Visual Design by: 
