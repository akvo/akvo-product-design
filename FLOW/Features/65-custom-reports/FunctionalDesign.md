# Functional Design document

Custom reports
---------------

### Documents
Links to relevant issues

### Overview
The purpose of the custom report functionality is to give users the ability to define and run reports containing a combination of metrics and images based on data collected with view, with the ability to export the reports in a number of formats. 

### Marketing description
Collecting data is one thing, turning it into information and sharing it with the world is quite another. Data needs to be added up, averages, plotted in graphs, combined, sliced and diced in different ways. And the end result of that analysis needs to be cast into a format that can be customised, to which context information can be added, and that can be shared easily. This might be an image, that can be inlcuded in a report, or a full pdf file. FLOW custom reports give you the possibility to specify exactly what metrics your report will compute and display, as well as how report metrics will be broken down by attributes that categorize and contextualize your data. 

### Domain language:
* Fact: single piece of raw data, for example '23', or 'Yes'
* Data: multiple pieces of raw data, usually related.
* Data Set: A collection of related facts and attributes typically provided from a single data source. A data set can be pictured as a spreadsheet, with columns describing different fact types and attributes, and rows individual sets of facts.
* Metric: Aggregations of facts or counts of distinct attribute values, which are represented as numbers in reports.Metrics are defined by customizable aggregation formulas. Metrics represent what is being measured in a report.
* Attribute: Descriptors used to break apart metrics and provide context to report data. Attributes dictate how metrics are calculated and represented. Attributes may be text (e.g. region) or numerical (e.g. size, or year) data.
* Filter: method to restrict the data that is used to compute the metrics for a report.
* Report elements: Visualisations of data in the form of a table, chart, or map. All tables and charts contain at least one metric (what is being measured) and often contain one or more attributes (dictating how that metric is broken down).	
* Report : Combinations of tables, charts and maps, combined with context information in the form of text. 


For example, in the table 'number water pumps of type 'Afridev' per region', the metric is 'number of Afridev pumps', and the attribute is 'region'.

### Initial features
The initial list of functionalities that this feature will contain:
* Create a new report element (table, chart or map0
* Assign a name, description, and tags to a report element
* Connect to a table element to a data source
* Create report elements, by specifying metrics, attributes and filters.
* Create a report
* Assign a name, description, and tags to a report
* Edit the report to contain text, and a combination of report elements
* Export a report in PDF, CSV or Excel

### Scenarios
A number of scenarios for how this feature will benefit users

### Technical notes
CartoDB needs to have its data in the form of a table per data set, with a single column for each data set column. It is likely that this structure can also be used as the basis of the reporting.
