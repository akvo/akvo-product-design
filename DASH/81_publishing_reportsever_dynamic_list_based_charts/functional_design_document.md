# Functional Design document

## Publishing ReportSever dynamic-list based charts

### Documents

### Overview

ReportServer(RS) provides an interface for creating "pivot table based" charts called dynamic list reports. Dynamic list reports gives the user a fair amount of flexibility in terms of data manipulation, e.g. filtering and aggregation and in combination with the charts that can be rendered seems like good "bang for the buck" in terms of ease of use and the quality of the charts produced. They are a good candidate for chart visualizations all over the Akvo products.

RS provides export functionality of these charts, but only as complete HTML documents. To be able to use the charts in our products we need a more flexible export method.

Ideally charts would be published on other web sites using a widget. The widget would need only a small javascript insert in a template where the chart is to be displayed. 

### Marketing description

To be able to visualize our data universally we use a widget based approach to publishing ReportServer charts. 

### Initial features

A first step is to create templates that can display charts when provided with data from RS. A template based solution is easier to build than a full javascript based widget. In wordpress this would be either a new page in the Akvo theme or a modification/extension of an existing page. Since we might want to show charts in more than one place, a sub-template might be the best solution.

The same goes for RSR. A Django template would be created that assembles all needed dependencies and, when provided with data from RS, renders the corresponding chart.

### Non goals

These charts will only be based on the dynamic list reports in RS, not BIRT reports.

### Scenarios

### Technical notes

### Open issues

### Details

