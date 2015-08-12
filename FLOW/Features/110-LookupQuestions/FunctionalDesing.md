# Functional Design document

Lookup questions 
-------------

### Overview

The lookup question creates relationships between two self standing data sets, two different surveys. When you create a relationship, you tell FLOW to link a record/question field in one form to another record in another form. This relation then links the collected data, which is still stored in two different data sets.

**How does this work?**

Assume that you have project where you monitor biogas installations, which are built around the country by different companies. You create a monitoring survey for biogas installations. This survey contains the registration form and the monitoring form. In the registration form you enter the basic details of the biogas installation and which company constructed the installation. When you enter the details, you find that one or more installations were build by the same company and you have to enter the company name, again and again. This leads to duplication of information and ineffective data collection. In order to avoid this, you will create another survey called Construction Companies to hold information of all the companies and create a relationship between the Company Information form and the Biogas registration form. To create this relationship, you just add a lookup question in the Biogas registration form to import data from the field Construction company name in the Company Information form in the Construction Companies survey.The lookup question will lookup the ID of the record in the source form and it will display a dropdown menu containing items from the source form.  

### Marketing description
A marketing description of this feature.

### Initial features

The initial list of functionalities that this feature will contain:

#### 1. Survey creation level

   - Lookup question = new question type 
   - How:
     1. New question type - lookup question 
     2. Opens lookup question Settings
     3. In Settings select folder > survey > form > question (user selects second form + question, from where the lookup question will reference the collected data) 
     4. In Settings select how it will display on the app: dropdown: if it is a single select or multiselect via check boxes (dropdown with multiselect needs a good UI visalization) 
     5. Confirm/ Save button or Cancel button
   - When previewing the survey user gets a visual confirmation of the added question + dropdown/option list,  where she can see the looked up options from her selected survey > form
   - The question ‘name’ will be by default the same as the name of the lookedup question from the referenced form
   - User can add a lookup question reference from these question types: Free text, number, photo. 
   - Lookup question cannot be used as a ‘data point name’. 
   - Dependecy rule:
     - Lookup question can be dependent on another question.
     - Another question cannot be dependent on a look up question. 
   - Allow to add unlimited look up questions to a form 
   - The user can add the same looked up reference field (company name) to a different question in the same form. We will not inform the user on this repetition. 

**Limitations:** 

Look up questions can only reference: non monitoring forms and registration forms in monitoring surveys, never a monitoring form 

#### 2. Data collection level on the app

- Works as a normal option question - User can select a single option or multiple, what is already pre-set during the survey > form > question creation
   - If we use the dropdown format, we need to figure out how to do multiple select. Perhaps a choose + add to list structure
- What if in my look up dropdown there is an item missing? 
   - The user needs to go out of the survey, select the second referenced form, enter the data, save it, sync, go back to the previous survey data point and finish the data input. 
   - FLOW must be able to synchronise the new data entry from the referenced form and update the look up question list in the first form, for the user to select the newly added option. 
   - However, it may happen that other enumerators might fill in the same new entity at the same time. We cannot prevent this from happening. The users will have to deal with this via data quality and user management processes. 

#### 3. Viewing collected data

- Answer to the look up question appears as an option question - the selected option/options from the list is/are shown as the answer
E- diting the answer acts the same as an option question


#### 4. Exporting collected data in raw data reports

Exporting the collected data will happen in 2 ways: 

**1. Using current raw data report structure** 
   - The selected option from the look up question list appears as the answer in the cell 
   - Following column will provide data point ID/ instance ID from the selected option (to allow the users to compare two raw data reports and see more details from the referenced form)
   - No more data from the referenced form will be provided

**2. Combined report** - which brings together information from two self-standing data sets that are connected via the lookup question 
   - select form (which has the look up question in it) and potential other filters 
   - select to create a ‘combined report’
   - FLOW generates the referenced form name
   - user selects from the referenced form which questions + answers will be in the combined report or all
   - data is generated  in two sheets and are referenced to each other based on the position in a row (row position has and order number = row ID, through which the reference is created)
      - Need to add names to the sheets, or in a different way indicate which sheet is which form 
       - Sheet name = Form name + Form ID

### Non goals

In later iterations we can consider the possibility to allow the user to define a lookup question and add what other information from the 2nd form will be shown in the app in the list 
   - In form A I select “Name” as my reference form form B
   - I add “picture” to be shown next to name in dropdown
   - When collecting data user see a list of Name + picture 

### Scenarios

1. I am a program manager at Waka Waka and we are starting to monitor our distribution network in Rwanda. The network consists of the warehouse, distributors and stores. I have created two different types of surveys with enabled monitoring: distributors and stores. This is because I need to know the basic information about my distributors (name, age, address, contact information, stores he/she distributes to, etc) and my stores (location, contact person, etc.) and I need to update their work on a monthly basis: distributors (the amount of Waka Wakas picked up from the warehouse), stores (the number or devices received from which distributor). This shows that my two data point types are connected in a relationship. I want to create a link between these two data points and their registration forms. I want to be able to link the name of the distributor to the store for two reasons: (1) When I download the collected data, I want to see which store received their stock from which distributor, or which distributor supplied which store. (2) I also want it to be possible for the distributors, when updating the store data point, to chose from a option question their name and add the amount of stock brought in on that day. 

2. I am the local manager at the SNV biogas installation project and I do quality checks on the companies we hired to build the biogas installations. Thus I need to know which biogas installations were built by which company. I wants to download a report which will show me the registration form properties (questions + answers) of all the data points-biogas installations with the company ID as well. Because I chose the company ID as a “look-up” question, I connect the data points to this different form by creating a relation. First I see on the dashboard my report, where every column represents an information from the registration form, the rows are different data points and the last column is the company ID, so I can see which company built which biogas installation. Then I choose to download it to further analyze the performance of the construction companies.   


### Technical notes
Any technical issues or questions that are already known

### Open issues

### Details
Details, details, details.

Approved and ready for Visual Design by: 
