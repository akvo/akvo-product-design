# Technical Design document

## Publishing ReportSever dynamic-list based charts

### Overview

RS creates charts from dynamic list reports using a charting library called [Saiku](http://community.meteorite.bi/) (Saiku is much larger than just charting but that's the part we want to use here). 

The main hitch with the current implememtation of the charting export is that you're handed a full html page. To be able to insert charts arbitrarily in other pages that would mean the use of iframes. We also need a custom solution if we are to be able to extend the charts in any way, like styling modifications or the linking of charts (drill-downs).

A much nicer solution would be to create a javascript widget. Ideally you'd only have to add a small javascript snippet and add an ID to the HTML tag where the chart is to be rendered.

### Minimum Viable Product

I expect creating a widget is a fair amount work, if it is to be universally deployable. Therefore an initial MVP is to create a template in the system where you want to publish charts. This template is used in combination with data provided by RS to render the chart. Suggested initial template is one for Wordpress that can be used on akvo.org and other Akvo sites. The Wordpress implementation would use the JSON plugin to pull and cache the chart data from RS. RSR is also a candidate, by making a Django template.

### Final Product

A javascript widget that renders a chart with data from RS. The minimum interface is (I think) a short JS snippet in combination with an HTML tag with an ID.

### Technologies

The charting library is part of [saiku-ui](https://github.com/OSBI/saiku-ui), which in turn is the client side components of Saiku. RS also uses parts of the Saiku server code, to generate the data in the format that saiku-ui needs. The saiku-ui charts depend on [Jquery](https://jquery.com/), [Backbone](http://backbonejs.org/) and [Protovis](http://mbostock.github.io/protovis/).

[Groovy](http://groovy-lang.org/). RS uses Groovy as its scripting language. Scripts are uploaded to RS and using a hooking mechanism can be integrated in RS to extend its functionality. In this case we have a Groovy script that maps a RS HTTP request to the JSON data saiku-ui needs to render a named dynamic report.

### Testing

### Estimates

Approved and ready for Coding by: 