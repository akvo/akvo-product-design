# Functional Design document

JSON serialization for form responses
-------------------------------------

### Overview
The Tab Separated Values(TSV) legacy format has become something very cumbersome to deal with. 
At least when it comes to FLOW features extensibility: appending new columns to the CSV file 
is getting fairly unmaintainable. Furthermore, there are several columns no longer in use, 
but they cannot be removed from the serialization approach, for they will break the format structure.

The long-term approach to fix this problem is to use a more versatile JSON format.

### Initial features
* FLOW app will generate a JSON-based data.txt file
* The app<-->S3 and S3<-->GAE communication remains unchanged
* GAE will unmarshal the JSON string and handle the question responses appropriately
* Responses will still be uniquely identified by their (surveyInstance, questionId) pair
* flow-services will need to parse the JSON data, and accordingly handle the data

