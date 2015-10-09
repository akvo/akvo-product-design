Geoshape visualization and export on dashboard
-------------

### Overview

Currently the geographic shape feature, geoshape, is fully operational on the data collection side of FLOW, on the app. This allows users to define within a survey form a geoshape question type and on the device they create the shape in the field. However, attention is needed to visualize and automate this process on the FLOW dashboard in order to finalize this feature.

### Marketing description

A marketing description of this feature.

###Feature background

We plan to approach this feature in two phases.

**Phase #1**

In the 1st phase of the development the initial requirements are:
  
   1) Visualize geoshapes on the map. Currently only data points are shown on the map with the properties (question + answer) in the sidebar. When a user selects a specific point, which contains a geoshape, it will be shown as a layer on the map in addition to the current view.
  
   2) Ability to open and view multiple geoshapes on the map by freezing the first geoshape, followed by opening a second data point. Every time a user selects a new data point, the previous information is not visible anymore. By allowing the user to freeze the geoshape view, it will be possible to visually compare for example two farmers plots and the collected data.
  
   3) Ability to show all the geoshapes on the map at the same time. 
   
   4) In the data tab, when a single data point is opened, a small map with the geoshape layer will be shown as an answer to the geoshape question. 
  
   5) Export the geoshape. 

**Non goals for Phase #1**

Currently in Phase 1, we will focus on creating a simple and straightforward user experience when visualizing and exporting created geoshapes based on the current functionality of the FLOW map. No editing will be possible in this phase of the development.

**Phase #2**

The 2nd phase will potentially bring additional functions as:
   
   1) Enable editing of the geoshapes on the map on the dashboard. 
   
   2) Enable customized styling of the geoshapes on the map by choosing the color of the polygon
   
   3) Visualizing monitored geoshapes.    
   
   4) On the app allow satellite layering – When the users create the geoshapes they will have the option to view the map with a satellite layer to make it easier and more precise to create geoshapes.
   
   5) Investigate possibility to show high-res satellite imagery on cartoDB (people will need to pay for this)

### Initial features

**Step 1: Visualize geoshapes on the map. “One by one”**

1. Showing the geoshape as a layer on the map
   - user selects a specific data point
   - by default the geoshape is rendered as a layer on the map
   - in the side bar a preview of the questions and answers is generated
2. Showing computed values related to the geoshape 
   - computed values will stand as an answer to the geoshape question:
        - Total size of the geoshape: xyz
        - Lenght of the geoshape: xyz
        - Total number of points: xyz

**Step 2: Visualize geoshapes on the map. “Multiple shapes at once”** 

**Step 3: Visualization in the Inspect data tab**

1. In the answer field show a map box with the geoshape layer rendered on it.
   - automatically visualize the map and geoshape as an answer
   - map is zoomed in to show the geoshape in a visible size
   - map enables zooming in and out and the geoshape respectively grows or shrinks
2. Showing computed values related to the geoshape next to the map box
   - computed values will stand as an answer to the geoshape question:
      - Total size of the geoshape:
      - Length of the geoshape:
      - Total number of points:

**Step 4: Exporting geoshapes**

1. exporting geo shapes within data reports - as a geoJSON string as the answer in the cell 
2. exporting geo shapes as a self standing answer
   - location of the export button with format selection - preferably when viewing the geo shape: on the map and in the data tab
   - type of export file - shapefile - .shp and/or kml file - .kml
   - requested, if exported file can also bring all the attributes that have been surveys (nice to have)

**Limitations**

- we will not allow to import a shape back, only export possible
- we will NOT allow for a user to import and edited shape back into FLOW, too complex

**Step 5: Minor UX fixes and improvements on the app** 

###Scenarios

1) We are an organization which collects information on farms in Indonesia. We have a set of questions about the farmer, what items they grow and produce, and the last question maps out their farm and surrounded lands. This is a non monitoring survey with only one form in it. Our 10 enumerators visited 50 farms each. Now I want to preview the collected data on all 500 farms. I want to see the shape of one specific farm as a layer on the map in the dashboard with the other collected data as well. I want to be able to compare these farms as well

2) We are collecting information on types of vegetables schools grow in rural Zambia. This is a one time data collection initiative. With every school we want to know some basic information, as number of pupils, teachers, headmaster information, when they started with their vegetable gardens, etc. We also want to know which vegetables they grow and how big is the respective plot per vegetable. This means that our one form holds up to 5 geo shape questions.  I want to be able to see all 5 geo shapes for one school on the map at the same time to see the shape, size and location on each vegetable plot plus which vegetable the plot refers to. I want to see only the shapes for two schools which show only the plots for a specific vegetable. 

3) We are an organization mapping out deforestation in one of Brazil’s states. Every week our enumerators go back to a set location (one location per enumerator) and map out the deforestation growth. Sometimes the area expands and sometimes it does not, or it shrinks because new trees are planted. We want to see this change over time and therefore we use the monitoring feature together with the geoshape question type. We want to  be able to see the different layers based on time on the map, as well as filter out the layers based on when they were collected.   

### Technical notes
Any technical issues or questions that are already known


###Details
Details, details, details.

Approved and ready for Visual Design by:
 
 

