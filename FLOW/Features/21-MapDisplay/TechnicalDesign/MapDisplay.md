CartoDB integration
-------------------

Breakdown of CartoDB integration work:

CartoDB work:

Phase 1a
1) get cartodb instance up and running on Akvo dev server
2) get postgres instance up and running on Akvo dev server
3) set up unified log tables in postgres
4) let GAE write messages to unified log on changes to surveys
5) figure out table structure CartoDb uses to store data
6) find out how new tables are made by cartoDB  - ie. what happens when a new survey is created
7) figure out how to deal with private / public data - private/public tables
8) find out how table columns are administrated in Cartodb
9) find out best way to put data in cartodb tables: let cartodb handle database creation, or do it manually.
10) create a proces that consumes unified log messages, and creates required survey changes to the cartodb tables

Phase 1b
12) let GAE write messages to unified log with collected data
13) create proces that consumes unified log data messages, and puts them in cartodb datastore

Phase 1c
14) implement visualisation with Cartodb showing only points using the javascript Map API
15) integrate this visualisation in the FLOW dashboard

Phase 2a
16) find out how to create popup/info screens programatically
17) implement popup screen creation in FLOW dashboard

Phase 2b
18) find out how to use data-driven styling in cartoDB / carto CSS
19) implement data-driven styling of points in cartoDB

Phase 2c
20) find out how filtering is used in cartoDB (sql api)
21) implement filtering in FLOW dashboard

Phase 2d
22) find out how to create visualisations using cartoDB.js
23) Implement visualisation creation and storage in FLOW dashboard
