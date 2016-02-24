## Feature definition - 1st implementation step 

Based on the mock ups provided by Kiarii, here is the description of the proposed features and their expected behaviour for the 1st implementation of Webforms, when the webforms are filled in and submitted within the Akvo FLOW dashboard. This implementation is the 1st step towards the full webform functionality which will cover the both use cases. 

### Feature definition 
- user selects a survey and form in the dropdowns > clicks find > sees list of submissions
   - if the user selects a monitoring form - no changes 
   - **if the user selects a registration form in a monitored survey or a non-monitored survey form then the below changes apply:**
- 'New submission' button - opens the webform for submission
- Choose survey to display + dropdown with selected survey and form - remain in the screen
- Title 'New Datapoint' 
- 'Go back to Datapoints list' link - enables the user to go back to the previous page (the list of submissions) without submitting a webform, same styling as in the Assignments tab 
- opened webform
   - Title of the form and version in the brackets 
   - '* Mandatory question' (in red)
   - Questions groups and questions 
   - 'Submit' button in the bottow right corner 
- **working with webforms:** 
   - if the user does not add any answers to the webform and clicks on 'Go back...' then nothing is saved (no new data point is created)
   - if the user adds in an answer (mandatory or not) and clicks on the 'Go back...' then nothing is saved
   - if the user does not add any information to the webform, but clicks on 'Submit':
      - if there are mandatory questions, the answer field is outlined in red once the user clicks away from it without adding an answer. By clicking on Submit FLOW brings the user to the 1st not answered mandatory question, which is outlined in red and a sentence is shown under the question title (and question help text if there): "Please fill in the missing mandatory fields to submit this form." This sentence is shown under each question that is mandatory and not filled in
      - if there are no mandatory questions, thus the user is submitting an empty form, then a sentence is shown above the Submit button: "Empty forms cannot be submitted. Please, add the corresponding responses first."
   -  if the user adds in one piece of information but does not finish the entire form and hits "Submit"
      - if there are mandatory fields left, the answer field is outlined in red once the user clicks away from it without adding an answer. By clicking on Submit FLOW brings the user to the 1st not answered mandatory question, which is outlined in red and a sentence is shown under the question title (and question help text if there): "Please fill in the missing mandatory fields to submit this form." This sentence is shown under each question that is mandatory and not filled in
      - if there are no mandatory fields open/left, the form is submitted 
- after the form is submitted:
   - the user is brought back to the screen with the survey dropdowns, current filterd, find, new submission, list of submission
    - A green bar is show above the 'New submission' button taking the full screen width saying "Form was successfully submitted."  
    - the submission is shown on the top of the list and acts as a regular submission via the app
       - Submitter holds the user name of the logged in user on the dashboard 
       - Device - 'webform'
- each submission creates a new data point (as if it was submitted by the app) and if the registration form is part of a monitored survey, thi data point can by synced to the app and further monitoring data can be collected

### Limitations 
- this implementation will not allow to submit a webform for monitoring forms 
- it will be only possible to submit a registration form as a webform

### Validations
1. For number questions to check if the format typed in is a number and if it is in order with all the possible selected settings 
2. Caddisfly question in the form (even if mandatory), the question needs to be disabled (visible but not possible to answer) but it still must be possible to submit the form 
3. Photo upload should check that it is a suported file type 
4. Same with video upload 


### Questions
1. We are adding geotagging to photos - how will this work with photos uploaded with a webform? 
2. Need to confirm error messages for validations 
