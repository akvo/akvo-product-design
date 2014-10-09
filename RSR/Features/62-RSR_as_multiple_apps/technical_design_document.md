
# Technical Design document

Multi-tenancy using PostgreSQL
-------------

### Overview

For a functional overview of where this feature would be used [look here](functional_design_document.md).

[TL;DR](#TLDR)

Modern Postgres (preferably ver 9.4 or later) provides for two technologies that are of interest for RSR's version of multi-tenancy: Schemas and Materialized Views. Together they provide the DB infrastructure needed to make Pages sites both more performant and easier to write code for while guaranteeing that a Pages site runs on only the data it "should" have access to.

### Technologies

First a short description of what schemas and materialized views are about.

##### Schemas

Postgres implements a way to organise tables (and other database objects, like views, triggers etc.) in named groups, called schemas. The tables defined in a schema may have the same names as tables in other schemas. It's like namespaces for DB tables.

Example: In the context of RSR we might have a schema named **cordaid** and another named **icco** that both define a table called rsr_project. If we put all of Cordaid's projects in the rsr_project table of the cordaid schema we could get all of Cordaid's projects by running the query:

```sql
SELECT * from cordaid.rsr_project
```

It is possible to set the default schema for a database connection, thereby eliminating the need to include the schema name in the query. If we set the connection schema default to "icco" we can run

```sql
SELECT * from rsr_project
```
and only get data back from the icco schema project table. 

With schemas one can implement classic multi-tenancy where several parallel systems run the same code base, while having separate databases. However RSR Pages does not work that way. While most Pages sites use only a subset of the availble RSR data, the rules that determine what data a site can access allows the same data being used in multiple sites. This is why we need:

##### Materialized views

Materialized views is a way to cache data from a query in a physical table. For example we might create a materialized view that contains all projects that has Cordaid as a partner organisation:

```sql
CREATE MATERIALIZED VIEW cordaid_rsr_project AS SELECT * FROM rsr_project WHERE partner = 273
```
(This isn't strictly how the RSR data structure works, but you get the drift. [See below for something closer to reality](#TL;DR).)

Using this materialized view we can now run Cordaid's Pages site *as if the underlying database contains all the data there is*. The query for the project list of Cordaid's Pages site would be:

```sql
SELECT * FROM cordaid_rsr_project
```

If we create a similar materialized view for Icco it would have some projects in common with the Cordaid view, since there are projects that have both Cordaid and Icco as a partner.

#### Materialized view-driven Pages

While using materialized views as above is nice, the problem is that all materialized views include the name of the organisation. This means all queries have to include the organisation name which is inelegant and would require creating custom Django model managers. Using schemas in combination with materialized views solves this.

A schema is created for each Pages instance. This schema is populated with materialized views of all RSR tables needed to run the Pages. The queries used to populated these views selects *only the data that "belongs" to each Pages instance*. The queries would be similar to the CREATE MATERIALIZED VIEW example above, but with the difference that the query looks the same for each Pages instance (no "cordaid_" prefix), *the difference instead being the schema selected before creating the views*.

When accessing a Pages instance, middleware determines the schema to use based on lookup in a mapping between the Pages' domains and the Pages' schemas. (Today we have middleware that sets the PartnerSite object as an attribute on the request based on such a lookup, and this object is used to construct the site's queries.) This means that the schema is determined at the outset of the request and remains the same throughout. In turn the views of Pages can be constructed with the assumption that the *all the data of the site is in the database and nothing else*.

#### TL;DR

Too much techno babble? Well, this is kinda hard to explain, so let's just look at a real world RSR example: Today when home page of Cordaid's Pages site is called the SQL to construct the project list looks like this (somewhat simplified):

```
SELECT DISTINCT *
FROM   `rsr_project`
    INNER JOIN `rsr_partnership`
        ON ( `rsr_project`.`id` = `rsr_partnership`.`project_id` )
    INNER JOIN `rsr_publishingstatus`
        ON ( `rsr_project`.`id` = `rsr_publishingstatus`.`project_id` )
WHERE  ( `rsr_partnership`.`organisation_id` = 273
    AND `rsr_publishingstatus`.`status` = 'published' )
ORDER  BY `rsr_project`.`id` DESC
```
(In reality it's even more complex, above we ignore the fact we can now also use keywords to further expand or limit the project selection.)

Using schemas and materialized views the same query would be reduced to

```
SELECT * FROM `rsr_project`
```
This is **very** powerful as it drastically simplifies the views of Pages and also should provide a performance boost that is already needed for the larger of our Pages instances.

#### No free lunch
There are of course a couple of drawbacks using materialized views in schemas.

For one materialized views are read-only. This means that *no data entry can happen on Pages*. But we don't have much data entry on Pages today and what little we have can be managed by sending the POST requests to MyRSR or Back-end and redirecting back after the POST is completed. This should be totally transparent to the user.

The other complication is that *all materialized views need to be updated when the underlying data is changed*. This however is largely mitigated by the fact that with Postgres 9.4 updates of materialized views can happen in the background and access to the views is not interrupted. (Earlier versions of Postgres locked the view for the duration of the update.)

### Minimum Viable Product
TBD

### Final Product
TBD

### Documents

#### Postgres

[Postgres docs for Schemas](http://www.postgresql.org/docs/9.4/interactive/ddl-schemas.html)

[Postgres docs for Materialized views](http://www.postgresql.org/docs/9.4/static/sql-creatematerializedview.html)

[Code to refresh all materialized views in a schema](https://github.com/sorokine/RefreshAllMaterializedViews)

#### Django packages that deal with Postgres schemas

I don't think either of these are a perfect fit for our use case, but there's probably quite a lot of code to review and learn from if nothing else.

django-tenant-schemas: [docs](https://django-tenant-schemas.readthedocs.org/en/latest/), [repo](https://github.com/bernardopires/django-tenant-schemas)

django-boardinghouse : [docs](https://readthedocs.org/projects/django-boardinghouse/), [repo](https://bitbucket.org/schinckel/django-boardinghouse)

#### Other 

[Setting Postgres schema search path in Django](http://blog.amvtek.com/posts/2014/Jun/13/accessing-multiple-postgres-schemas-from-django/)

[Blog about using Postgres views in Django](http://schinckel.net/2014/09/01/postgres-view-meet-django-model/)