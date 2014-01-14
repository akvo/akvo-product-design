Monitoring Features Technical Design
------------------------------------

### Linking questions
* To enable prefilling of data from previous surveys on the device, we need a way to couple questions together.
* In the FLOW 1.0 system, this was handled by using 'metrics', with questions about the 'same' piece of data coupled to a single metric. 	
* In FLOW 1.5, this will be handeled by introducing the concept of a 'source question'. The source question is the question that was created first, and was used to collect the initial data. 
* If we want to express that two questions are connected, we can create a copy of the survey, which creates copies of all the questions, which are then automatically linked to their source question.
* A user may break the link if he/she wants to, this will remove the link to the source question.
* In a future version, we might include the possibility to select, copy, and insert a single question from a previous survey, or establish an other method of creating a link.
* In the device, when information is present in a different surveyInstance with questions corresponding to the source question of the survey being completed, this information can be prefilled.
* The type of a copied question need to be locked, in order to preserve data integretity. Other properties, such as the settings (min, max), quesiton text and tooltip text, and options may be altered.

### Displaying data
* On the data tab, a *Monitoring tab* will be created
* On the *Monitoring tab*, the user can select a survey Group
* When a survey group is selected, a list is shown of the surveyedLocales in the survey group
* When a user clicks on a surveyedLocale, a popup appears which shows all the surveyInstances in that Locale, with all their containing answers. Here, they can be edited. Possibly, we should specify a 'close / open' button for each surveyInstance, with the default being closed, giving the user more overview. We do the same in the translation view.

### Exporting data
* Data that is part of a Monitored survey group can be exported as raw data files. A single survey will be exported as a single file. The surveyedLocale will be included as the first column
* Data can also be exported as a comprehensive report. This will assemble the data from surveyedLocales and bring them together in a single excel file. One option to do this is have a structure such as this:

|localeId|surveyId|surveyName  | Question1 |Question2| ... |Question1|Question2 | ...|Question1| Question2|
|---|----|----|----|----|----|----|---|---|---|---|
|||| Survey 1 |||Survey 2|||Survey 3||
|1|	1|	Registration|	Mark|Westra|||||||
|1|	2|	Bloodtest|	|||12-2-2012|120.5||||
|1|	2|	Bloodtest	||||17-2-2012|110.3||||
|1|	3|	Psych. test	|||||||17-2-2012|a bit stressed|			
|2|	1|	Registration|	Iván|Perdomo|||||||
|2|	2|	Bloodtest	||||13-2-2013|117.5||||
|2|	3|	Psych. test	|||||||18-2-2012|healthy|
