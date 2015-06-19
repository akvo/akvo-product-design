# Functional Design document

Look-up relations
-------------

### Overview

The look-up question creates relationships between two self standing data sets, two different surveys. When you create a relationship, you tell FLOW to link a record/question field in one form to another record in another form. This relation then link the collected data, which is still stored in two different data sets.

How does this work?

Assume that you have project where you monitor biogas installations, which are built around the country by different companies. You create a monitoring survey for biogas installations. This survey contains the registration form and the monitoring form. In the registration form you enter the basic details of the biogas installation and which company constructed the installation. When you enter the details, you find that one or more installations were build by the same company and you have to enter the company name, again and again. This leads to duplication of information and ineffective data collection. In order to avoid this, you will create another survey called Construction Companies to hold information of all the companies and create a relationship between the Company Information form and the Biogas registration form. To create this relationship, you just add a look-up field in the Biogas registration form to import data from the field Construction company name in the Company Information form in the Construction Companies survey.The lookup field will lookup the ID of the record in the source form and it will display a dropdown menu containing items from the source form.  

### Marketing description
A marketing description of this feature.

### Initial features
The initial list of functionalities that this feature will contain:
- *Look-up relation dialogue.* This will enable the user to add new a look-up relation filed in the form to the specific question. The user selects the second existing survey, form and question he/she wants to import the data from. The display type of this relation will be dropdown. 
- *Visual confirmation of creating the relation.* After saving the relation there will be a 'note' next to the created question informing about the created relation and its details.
- *Viewing relations on the dashboard.* After data is collected enable the user to see the link and related property when viewing the collected data.
- *Combined reports.* The user can create combined reports that display the required fields from related forms. The user will select which questions/properties from the looked-up form he want to add to the report. The exported report will then contain the customized selection of questions/properties.   

### Non goals

Look-up questions will only work between registration forms in surveys with enabled monitoring and/or forms in surveys where monitoring in not enabled. 

### Scenarios

User story #1
I want to create a relationship between different forms to maintain an overview of our distribution network, while not having to duplicate data.
 
User scenario #1
I am a program manager at Waka Waka and we are starting to monitor our distribution network in Rwanda. The network consists of the warehouse, distributors and stores. I have created two different types of surveys with enabled monitoring: distributors and stores. This is because I need to know the basic information about my distributors (name, age, address, contact information, stores he/she distributes to, etc) and my stores (location, contact person, etc.) and I need to update their work on a monthly basis: distributors (the amount of Waka Wakas picked up from the warehouse), stores (the number or devices received from which distributor). This shows that my two data point types are connected in a relationship. I want to create a link between these two data points and their registration forms. I want to be able to link the name of the distributor to the store for two reasons: (1) When I download the collected data, I want to see which store received their stock from which distributor, or which distributor supplied which store. (2) I also want it to be possible for the distributors, when updating the store data point, to chose from a option question their name and add the amount of stock brought in on that day. 

User story #2 
I want to see which construction company built which biogas installation to keep track of their work. 

User scenario #2
I am the local manager at the SNV biogas installation project and I do quality checks on the companies we hired to build the biogas installations. Thus I need to know which biogas installations were built by which company. I wants to download a report which will show me the registration form properties (questions + answers) of all the data points-biogas installations with the company ID as well. Because I chose the company ID as a “look-up” question, I connect the data points to this different form by creating a relation. First I see on the dashboard my report, where every column represents an information from the registration form, the rows are different data points and the last column is the company ID, so I can see which company built which biogas installation. Then I choose to download it to further analyze the performance of the construction companies.   


### Technical notes
Any technical issues or questions that are already known

### Open issues
1. Need to decide wheather we will allow only a single select or multi select option. Will we allow the user to link only one propety or multiple?
2. How many look-up relations can a user create in one form? 

### Details
Details, details, details.

Approved and ready for Visual Design by: 
