Data cleaning
-------------

### Documents
akvo/akvo-flow#419

### Acknowledgement
We would like to thank the contribution of Keri Kugler of Water for People, who shared her thoughts and materials on data cleaning with us.

### Overview
Data cleaning refers to the proces of editing survey data after it has been collected, usually in bulk. Common data cleaning processes include correcting grammar, punctuation, capitalization and spelling, normalizing similar responses such as "don't know" and "I don't know", finding explicit errors such as wrong dates, and adding additional information such as water quality results.

In the FLOW 1.5 system, data cleaning can be done by exporting the data of a particular survey to an Excel file, and use Excel functionality such as filters, sorting, and search-and-replace to do the data cleaning. After the cleaning, the Excel file is uploaded to the FLOW system again. However, this process carries the very real risk of data corruption, as Excel does not force keeping rows of data together, making it possible to sort one column without sorting the others. 

For Akvo FLOW, we will create data cleaning tools that are part of the Dashboard, and that ensure data integrity by constraining the cleaning operations. In addition, we will add an audit system, which will log all changes made to data, recording the previous value, the user that made the change, and the time the change was made.

As a matter of data integrety, it is important to keep in mind that data should only be changed in the dashboard if 

* it does not change the meaning of the data (such as changing "Yes" to "yes"
* if there is clear documentation to support the change, such as a photo 
* if the new data is re-collected or provided by contact with an appropriate member of the community

### Marketing description
**Powerfull tools to clean data**

After data has been collected, you will notice that it usually needs a bit of cleaning up. You might need to correct grammar, punctuation, capitalization and spelling of the answers, normalize similar responses such as "don't know" and "I don't know", find explicit errors such as wrong dates, or add additional information such as water quality results, which might only come available later. 

As data cleaning involves changing data, it is a process that needs to be carried out with great care. Features in Akvo FLOW allow you to easily and safely work with large amounts of data, for example by sorting, finding unique values in a column, filter columns on certain values, perform search-and-replace in a column, and capitalize columns. 

As a safety precaution, original values are never discared - you will always be able to see what the original answer to a question was, and go back to it if needed. You will also be able to see who has made what changes, and when. 

### Initial features
In a first implementation, we will introduce:

* fast display and sorting of restricted number of columns
* display unique values in a column
* capitalize columns
* changing option questions only allows options defined in the question
* search-and-replace in a column
* filter a column
* capture change audit information 
* edit individual cells

### Non goals
What this feature will not contain

### Scenarios
**Scenarios - commong cases for changing data**

* **Completing missing data** - Sometimes data is not wrong but missing, and the missing data becomes available on a later date. An example might be financial data which might be kept by the government or a different agency, or water quality testing results, which migh become available after water has been tested in a lab. It is important to document somewhere where the additional data has been retrieved from. An option might be to use an additional question 

* **Normalizing free text responses** - Free text responses can occur as answers to 'other' questions in option questions, or as responses to free text questions. To facilitate analysis using graphs and charts both in the dashboard and in external programmes, it is usually important to normalize such answers. An example might be to change answers like “tastes bad”, “bad taste”, and “I don’t like the taste” to “bad taste”. If numbers are entered as free text, they have to be normalized as well — "1", "1.0" and "1.00" should all be changed to 1, otherwise they will be seen as different. 

* **Capitalization** - Often, whole columns of data need to be capitalized, for example all the proper names in a "What is your name?" question. These can be changed by the Capitalization functionality.

* **Spelling, grammer, punctuation** - The correct spelling, grammar and punctuation can usually only be corrected by direct inspection.

* **Outliers** - An outlier is a numerical value which is way outside the distribution of the other numbers. For example, in a set of numbers that are mostly 1, 2 or 3, a number of 1,000,000 would be clearly wrong and should be considered an outlier. Usually, outliers need to be deleted as they would drastically throw off any statistics.

* **Classification errors** – Many errors occur where an enumerator needs to make some kind of classification, such as a type of technology used for a water point. This can be corrected if a photo of the object is also available in the same survey, as the photo can then act as supporting documentation to make the change. If there is no photo available, sometimes existing records or a contact in the community can provide the necessary information and supporting documentation for the change. 

* **Date Errors** – Sometimes entered dates are clearly wrong, either dates in the distant past (the year 1789) or the future (2114). They can be changed to the correct dates if there is supporting documentation, or deleted if the actual values is unknown.
	
* **Logical Errors and Common Sense Mistakes** – You may come across errors that are logically impossible or can be corrected using inarguable common sense. In those cases the errors can be corrected without documentation. For example, in a survey a household with an unimproved pit latrine has a response that the latrine is connected to a sewer system. Since that is not possible that answer can be changed without documentation. 


### User Experience 
How the user experiences the feature, what is the workflow


### Technical notes
* Data will only be appended to, never deleted
* Auditing information should be saved when data is changed.

### Open issues
Any known issues that need to be decided

### Details
Details, details, details.


