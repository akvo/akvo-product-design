# Akvo Graph prototype

## Overview

The purpose of the Akvo Graph prototype is to quickly test a few components and learn how to assemble the right tools and information flow for parts of the Akvo DASH system. If it turns out it is suitable we will reuse some of the components in the Akvo Graph implementation. 

## References

Suggested components to try:

- SpreadJS: http://wijmo.com/widgets/wijmo-enterprise/spreadjs/
- Handsontable: https://github.com/warpech/jquery-handsontable (also has a list of other similar projects)
- Vincent: https://github.com/wrobstory/vincent


## Marketing description

n/a

## Initial features

- Upload data file
- Present data in user friendly format
- Select chart type
- Preview chart type
- Manipulate data
- Save data
- Publish chart

Wishlist items for later:

- Record data manipulations (keep a history)

### First pass

- Go to a web page and select an Excel spreadsheet file or CSV file to upload
- Load the file and have it be presented in online spreadsheet format in a Javascript spreadsheet presentation and manipulation component
- Select a chart type (bar and line chart)
- Add chart access labels
- Preview the chart type

### Second pass

- Allow manipulation of the data
- Save data
- Publish the data through a widget or similar

### Third pass

- Grab data (how many updates have there been per month in Akvo RSR) from an API
- Call an API on a scheduled basis
- Investigate if it is possible to cut and paste data from other sources (such as a spreadsheet) into the browser data presentation.

## Non-goals

n/a

## Scenarios

Scenario 1: A user wants to publish a bar chart from data in a spreadsheet. The user uploads the data, selects the presentation format and produces a widget which can be inserted into a blog post in the form of HTML code or Wordpress code that refers to a Wordpress plugin.

Scenario 2: A user wants to grab data about how many monthly updates there are on the users projects in Akvo RSR and publish this data as a line chart in the users blog. The line chart is inserted into a blog post in the form of HTML code or Wordpress code that refers to a Wordpress plugin.

Scenarios 3: A user wants to visualise the incoming data on a daily basis for an Akvo FLOW instance and publish this data as a bar chart in the users blog. The bar chart is inserted into a blog post in the form of HTML code or Wordpress code that refers to a Wordpress plugin.

## User experience

The application should not emulate a full spreadsheet. It is a data publishing tool. Simple datasets can be hand entered or imported into Akvo Graph and visualised. 

## Technical notes
