Cascading question type
------------------------

### Documents
https://github.com/akvo/akvo-product-design/issues/33
https://github.com/akvo/akvo-flow/issues/189

### Overview
The aim is to introduce a question type that can handle hierarchical options. The main purpose of this question type is to enable the enumerator to specify the administrative boundaries of a specific location, such as the Region, District, sub-district, and community. This is usually called 'Cascading questions'. An example in India would be State > District > Block > Gram panchayat

When accurate shapefiles are available for the administrative boundaries, GPS could in theory be used to determine this. However, shapefile are often inaccurate (mainly because of regular new devisions of administrative regions), and often don't go down to the required level (eg. community.)

### Marketing description
#### Cascading questions
In a survey, sometimes a choice for question 1 should determine what options are shown in question 2, and so on. Determining a location is a good example: in a first dropdown question you choose the region, and then in the next dropdown, you can choose from the districts in that region, and so on. We call these 'cascading questions', as effect of a choice on the first question cascades into the next questions. Another example might be one question for the brand of a car, and then the second question the type, and a third the production year.

Restricting the choices in dropdowns to only those that make sense saves time for enumerators and reduces errors. You can accomplish this also by single questions with dependencies, but that approach is very time consuming and prone to error, and leads to huge surveys with hundreds of questions.

Akvo FLOW introduces Cascading Questions, which allow the user to define a cascade structure with a simple web interface. A single cascading question in a form is then enough to generate the necessary dropdowns in the form shown on the device.

Almost all information collected with FLOW has a specific location, a place. That information is geolocation, a latitude/longitude pair, captured by the GPS receiver of the device. But humans have a very different way of classifying places — they talk about regions, districts, sub-districts, communities, villages. When collected data is analysed, these are the units that are used. Using a cascasing question

### Initial features
The functionality should include:

* A way for a user to specify a hierarchy of options. This needs to be done separate from the question, as the hierarchy might be used again. It is a resource for the instance. Ideally, we allow upload of a structure using excel
* We will provide a ready-made list of country hiearchies that a user can choose from or copy and customise
* A way for a user to create a cascading question and select the hiearchy created.
* A way for the enumerator to interact with the hierarchy question and select the required values, in a series of coupled dropdowns
* A way for the resulting data to be stored and meaningfully used and exported in reports, in separate columns

### Scenarios
#### Scenario 1
A project manager wants to collect data in India. The analysis that will be done later will depend on knowing the location of the datapoints within the administrative boundaries. This needs to go community level: State > District > Block > Gram panchayat. The project manager has a list of this hiearchy which he received from the Statistical Bureau of India. 

The project manager goes to the FLOW dashboard and clicks on the tab 'resources'. There, she clicks on the subtab 'cascading questions'. There, she sees a list of existing cascading questions that are in use. The options shown are 'create empty cascade','add country cascade', 'upload cascade defininition'. 

If the user choses 'create empty cascade', she gets a web interface resembling the finder window in a Mac. In there, she can create a cascade structure

If the user choses 'add country cascade', she can choose from a dropdown of countries. When she chooses one, the country cascade structure is copied to her list. The country cascade structure is generated from GAUL / GADM database

If the user choses 'upload cascade definition', she can select an excel or csv file of the following format (data shown is not geographically correct):
* Netherlands,  Utrecht,  Groningen
* Netherlands,  Utrecht,  Overveen
* Netherlands,  Utrecht,  Harlingen
* Netherlands,  Zeeland,  Overbeeke
* Netherlands,  Zeeland,  Gorinchem
* Netherlands,  Zeeland,  Haastrecht

This is then transformed into a cascade definition.

In the form, the project manager then creates a single question of type 'cascade'. From a dropdown, she selects which cascade structure she wants to use for this question.

#### Scenario 2
On the device, an enumerator fills in the form. The cascading question is shown as a series of dropdowns. At the start, only the first dropdown is filled, the others display 'make selection above', or a similar text.

When the enumerator makes a selection in the first dropdown box, the second dropdown is populated with values that are determined by the choice in the first one. This continues until the last level.

#### Scenario 3
When the data has been received in the dashboard, the project manager would like to export a report with it. The exported report shows a single column for each level of the cascade, which makes it easier to process the data later on.

### Technical notes
This tree/hierarchy definition could potentially define very large trees (e.g. 1.5M+ entries) that need to be handled correctly when transferring the data to the device.
