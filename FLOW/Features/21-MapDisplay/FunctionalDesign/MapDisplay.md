Map display
-------------

### Overview
Maps are in important way people interact with data. It helps judge progress of data collection, the spatial spread of data, and sometimes clear spatial patterns emerge. To enable users explore data using maps, they need some flexibility in what is displayed. This feature will make it possible to: 1) use street, satellite and terrain backgrounds, 2) show clustered data on different zoom levels, 3) enable filtering of data by survey, 4) styling markers (color, symbol) based on survey, and 3) display detailed data in different langauges, if translations are available.

### Marketing description
**Maps display**
Maps are in important way people interact with data. It helps judge progress of data collection, the spatial spread of data, and sometimes clear spatial patterns emerge. To help people make the most of maps, FLOW makes it possible for users to filter data by survey, and to style data markers according to their survey, for example by color or a special symbol. By default, FLOW clusters datapoints on high zoomlevels, so maps display fast, while still showing hundreds of thousands of points if necessary. When you zoom in, the clusters resolve themselves in the underlying data points. 

### Initial features
In a first implementation, we will introduce:
* Use Mapbox as map provider
* Enable satellite, terrain, street map background maps
* Enable filtering of data by survey
* Enable users to set a color for markers per survey
* Enable users to set a custom symbol per survey
* Translations of questions in pop ups
* Surveys can either be public or private, only public data is shown on public map

### Non goals
What this feature will not contain
* awareness of administrative boundaries

### Scenarios
* **Scenario 1** – A project manager is in charge of a data collection effort, and wants to see progress. She knows that 5 different groups of enumerators are collecting data in different villages, and she wants to keep an eye on things. During the days of the data collection, she has the Akvo FLOW map open, and sees data appearing in each of the 5 villages. For each, she clicks some random points to check on the quality of the data and the photos collected. Because a lot of data has already been collected in that area, she filters the data to only show the survey that is currently being used. 

* **Scenario 2** – A project manager needs to give a presentation on her work. To show the width of the data collection and the current state of affairs, she shows the audience the live FLOW dashboard map, and zooms into different areas. Again, she selects different surveys as she is going through the presentation. Although the data has been collected in Spanish, she shows them in English, because that translation is available on the survey.

* **Scenario 3** - An organisations collects data on schools and waterpoints. They want to show their data on the public map, but want schools to appear with a different symbol and color then the waterpoints. In the FLOW dashboard, they select a color and symbol for each survey.

### User Experience 
* The internal map is a tab on the dashboard. A dropdown for selecting a survey is shown.
* In the survey, there is an extra button 'Manage map display'. Here, users can select a color for the marker, and select a custom icon.
* On the survey, a dropdown allows the selection between 'public' and 'private'. This replaces the current system of choosing between point, household and institution.


### Open issues
Any known issues that need to be decided

### Details
Details, details, details.


