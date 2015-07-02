# Functional Design document

Visualize non-published cascades 
-------------

### Documents
Links to relevant issues
https://github.com/akvo/akvo-flow/issues/1309

### Overview

Currently when the user decides to select an existing cascade in the cascade resource tab, there is no indication on which of these cascades are published and which are still in the editing state. Secondly, when the user selects a cascade while creating a new question in a form, the cascades which are not published yet are not listed in the dropdown, what creates confusion among users. 

We need to create a visual cue to indicate the “editing” status to the user in the Cascade resource tab and when creating a Cascade question. 

In the question creation, an idea is to show the full list of all cascades and distinguish the non-published ones as grey. When creating a new question, the user will not be able to select the grey cascades. 

In the list under Cascade resource tab, there will be a visual indication showing the difference between published and the ones still in “editing” state. 


### Marketing description
A marketing description of this feature.

### Initial features


**When adding a cascade question type in a form**

- Show all cascades in the dropdown list
- Visually distinguish the non-published cascades - grey color
- Disable non-published cascade - do not allow users to select them as their question type
- Update the in-line help button. 
  - Need to add in the text that the grey cascades are not published yet and the user has to publish them in the Cascade resource tab in order to add them as a new question.

**In the Cascade resource tab**
- Visually distinguish published cascades and the ones in “editing” state in the dropdown list
- Allow the user to choose any cascades from the dropdown list (no changes to the functionality here) 

### Non goals
What this feature will not contain

### Scenarios

1. A user creates a new cascade in the Cascade resource tab but forgets to publish it. When creating a new form, he wants to add this cascade as a new question. The dropdown list shows him all the cascades, even the non-published ones, so he does not have to fear that he lost his work on the cascade, but does not allow him to chose the non-published cascade. He then has to go back to the Cascade resource tab, select his cascade and publish it. 

2. A user creates two new cascades in the Cascade resource tab, however the names of the cascades are quite similar. One she publishes and the other she does not, because it is not ready. When she returns back to FLOW to finish the work on her second cascade she sees in the list that one cascade is published and one is not. She easily selects the one she needs, despite the fact that the names are similar.
 
### Technical notes
Any technical issues or questions that are already known

### Open issues
Any known issues that need to be decided

### Details
Details, details, details.

Approved and ready for Visual Design by:

