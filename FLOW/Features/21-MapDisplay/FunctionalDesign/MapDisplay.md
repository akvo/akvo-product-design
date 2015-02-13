Map display
-------------

### Overview
Maps are in important way people interact with data. It helps judge progress of data collection, the spatial spread of data, and sometimes clear spatial patterns emerge. To enable users explore data using maps, they need some flexibility in what is displayed. This feature will make it possible to: 1) use street, satellite and terrain backgrounds, 2) show clustered data on different zoom levels, 3) enable filtering of data by survey, 4) styling markers (color, symbol) based on survey, and 3) display detailed data in different langauges, if translations are available.

### Marketing description
**Maps display**
Maps are in important way people interact with data. It helps judge progress of data collection, the spatial spread of data, and sometimes clear spatial patterns emerge. To help people make the most of maps, we have decided to integrate FLOW with the excellent CartoDB mapping tool. This will make it possible for users to create visualisations of survey data, and to style markers according to the data. CartoDB has great performance, meaning maps display fast, while still showing hundreds of thousands of points if necessary.

### Initial features
In the first phase, we will introduce:
* Use mapbox as tile provider for street, satellite and terrain tiles
* display data of individual surveys on map using standard markers
* enable users to specify popup style and content

Phase 2 will introduce:
* enable data-driven styling of markers and custom icons
* awareness of administrative boundaries
* enable filtering of datasets
* enable creation and saving of visualisations
* handle translations of questions

### Scenarios
* **Scenario 1** – A project manager is in charge of a data collection effort, and wants to see progress. She knows that 5 different groups of enumerators are collecting data in different villages, and she wants to keep an eye on things. During the days of the data collection, she has the Akvo FLOW map open, and sees data appearing in each of the 5 villages. For each, she clicks some random points to check on the quality of the data and the photos collected. Because a lot of data has already been collected in that area, she filters the data to only show the survey that is currently being used. 

* **Scenario 2** – A project manager needs to give a presentation on her work. To show the width of the data collection and the current state of affairs, she shows the audience the live FLOW dashboard map, and zooms into different areas. Again, she selects different surveys as she is going through the presentation. Although the data has been collected in Spanish, she shows them in English, because that translation is available on the survey.

* **Scenario 3** - An organisation collects data on schools and waterpoints. They want to show their data on the public map, but want schools to appear with a different symbol and color then the waterpoints. In the FLOW dashboard, they select a color and symbol for each survey.

* **Scenario 4** - An organisation collects data on schools and waterpoints. They want to color their markers according to the status of the pump. In the FLOW dashboard, they select which color should be displayed for which answer to the functionality question.

### User Experience 
* The internal map is a tab on the dashboard. A dropdown for selecting a survey is shown.
* In the survey, there is an extra button 'Manage map display'. Here, users can specify map settings and create visualisations.
* On the survey, a dropdown allows the selection between 'public' and 'private'. This replaces the current system of choosing between point, household and institution.


### Open issues
Any known issues that need to be decided

### Details
Details, details, details.


