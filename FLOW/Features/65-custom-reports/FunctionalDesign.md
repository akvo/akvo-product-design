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
* Create a new report element (table, chart or map)
* Assign a name, description, and tags to a report element
* Connect to a table element to a data source
* Define custom metrics
* Create report elements, by specifying metrics, attributes and filters.
* Create a report
* Assign a name, description, and tags to a report
* Edit the report to contain text, and a combination of report elements
* Export a report in PDF, CSV or Excel
* Set up automatic creation and distribution of reports on a custom schedule.

### Scenarios
##### Water atlas
A governement uses FLOW to map 100.000 water points in 36 regions. Each region is further divided up in several districts. Each year, this governement wants to create a water atlas in PDF. Part of the atlas is a set of single pages for each region, with an overview of the current status. Each page contains a map of the region, with all the water points. Each water point has a color, determined by the curent status. In addition, each page contains a set of tables, each with different combinations of metrics and attributes. The page also contains a smaller map of the whole country, with the location of the region indicated.

##### ODF report
A NGO monitors the open defecation status of 1000 villages, in 10 regions. The director wants to see a progress report each quarter. For that, she wants to see a table with how many villages are open defacation free (ODF) in each of the 10 regions. In addition, she wants to see the number of ODF villages per year.

##### District water report
A country uses Akvo FLOW to monitor its water infrastructure. Each month, the local district officers want to know what the status of water systems in their distric is. They want to receive an excel file with the latest status of all the water systems, and also a pdf report with map of their region, with the location of all the water points, colored by status. The pdf should also include a table with statistics, for example the total number of water points, and the percentage of broken points.

### Technical notes
CartoDB needs to have its data in the form of a table per data set, with a single column for each data set column. It is likely that this structure can also be used as the basis of the reporting.

