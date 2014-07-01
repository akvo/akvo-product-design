# What is Akvo DASH?

A data mashup system and curated data repository.

Slightly longer description is:

The Akvo Dash big data system we are envisioning will consist of four main components:
 
1) Curated open data sets, including data on populations, income distribution, poverty, access to infrastructure (water, sanitation, agriculture, hydrology, disease statistics, geographic data, maps and more). This data will be constantly updated and improved.
 
2) Your own data, which you can easily load onto the system, like for example open waterpoint monitoring data.
 
3) A data mashup system, which allows you to take data from both the curated data sets and your own data to quickly allow you to produce insightful and useful integrated visualisations.
 
4) A publishing system for the data which will allow you to publish the resulting mashup under your own brand and on your own chosen URL, as well as through apps for mobile phone and tablets. Any publicly published datasets will also be available for the public to see on a central web site, under an open data license.

Compared to other tools it is a bit like:

- Google Login services
- Google Fusion Tables
- Google Maps
- Google Graphs
- Geckoboard, http://www.geckoboard.com
- Klipfolio, http://www.klipfolio.com/features
- http://www.pentaho.com/

Software as Service. But open source.

## Service components

- Login service
- Data import service
- Data storage
- UI to manage my data selection
- Present though
	- Maps
	- Graphs
	- Tables
	- Other visualisations
- Present the material on
	- dash.akvo.org (for everything public)
	- private and public dashboards
	- mydomain.akvodash.org (for your own branding, like Akvo RSR Pages)
	- via widgets
	- via API
	- data export service
	- electronic document (pdf / odf)


## High Level UX 

Admin interface
Add data (CSV, API, Excel)
Process this into standardised format
Produce a library of display options, which allows a user to publish the data visualisations

Links to examples:
- http://www.gooddata.com/
- http://www.tableausoftware.com/trial/tableau-software
- gooddata has a good api: http://docs.gooddata.apiary.io/


##User scenarios

Initial user scenarios.

- WASH Liberia
	- http://wash-liberia.org
	- http://wash-liberia.org/data-maps/
	- http://wash-liberia.org/wp-content/blogs.dir/6/files/sites/6/2013/01/Final_Review_Version_-_Waterpoint_Atlas___Investment_Plan_x1.pdf
- SmarterWASH Ghana
- Akvo - See it happen & pushing data to Akvo Sites.
- Narrowcasting


## Tool prototyping / exploration

### Database.
PostgreSQL http://www.postgresql.org

### Visualisations
Vincent: https://github.com/wrobstory/vincent
Visualisations on top of D3 with Vega. Vincent makes it easy to build Vega with Python.

### Graphs
SpreadJS: http://wijmo.com/widgets/wijmo-enterprise/spreadjs/
Excel-compatible HTML5 spreadsheet component

### Data structure
Pandas: http://pandas.pydata.org/
High-performance, easy-to-use data structures and data analysis tools for Python.

### Data store
Datastore: Worldbank API, Gooddata API
