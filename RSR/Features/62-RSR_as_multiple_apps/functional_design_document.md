# Functional Design document

Split RSR into a number of components
-------------

### Overview

This is a high-level exploration of an idea. The basic idea is to split RSR into a number of smaller systems that, while still relying on each other, provide for a better separation of concerns, thus allowing for easier development and maintenance of the individual parts as well as better performance when scaling.

### Marketing description

To allow RSR to grow and to provide for a more structured foundation for further development it is time to divide RSR into functional elements that can develop individually depending on future needs of the system.

### Features overview

The idea is to split RSR into three Django apps:

1. The full Back-end
2. The user facing back-end a.k.a. MyRSR
3. The Pages sites

The full Back-end is mainly the Django admin interface to the full database. The Back-end provides access for the Akvo staff to the full database to manage the RSR data in ways that we don't expose to partners. The Back-end may also contain "legacy" parts of current RSR, like the donation engine.

MyRSR runs the new, partner-user facing admin interface. 

The Pages app runs ...Pages! The Pages sites will be read-only, with high performance and separation of data.

### Non goals

RSR will probably still be one code base. It doesn't seem useful to create fully stand-alone Django apps of the parts since they will share the same models and thus won't function on their own. (One could however imagine Pages running fully separated, using the Universal Log as data source. This implementation might not even be Django-based.)

### Technical notes

The current RSR codebase is rather large and most of it is in one app, rsr. Smaller more focused apps would be a benefit in itself in terms of encapsulation and easier maintenance, even if they cannot be used individually. The main common interface of the apps are the RSR models that are imported into the other apps from Back-end. It would also pave the way for running Pages using Postgres materialized views and schemas.

#### The Back-end

The Back-end is the core of RSR. It runs on rsr.akvo.org. The code included here are the RSR models, the admin. Migrations are run here. In addition to running the admin, the Back-end is responsible for the populating of the multi-tenant databases (schemas actually) that are used to run Pages.

#### MyRSR

MyRSR imports the RSR models from the Back-end, but uses its own urls, views, forms, templates etc to build the site used by our partners to administer "their" data. It runs on myrsr.akvo.org. MyRSR has full access to the database, but individual user's access is limited by permissions. An idea that Adrian had is that a user logging in to MyRSR from a Pages site keeps the look and feel of that site. Most users will only interact with one Pages site so it will be natural if MyRSR looks similar.

#### Pages

The Pages sites run on *.akvoapp.org (and CNAME domains). Pages imports the models from Back-end but the data available to a Pages site is limited to only the objects used on that particular site. Pages has its own set of urls, views and templates. Pages is __read-only__. A Pages site may include an API that only provides the data that is used to populate that site. For a more in-depth description of the underlying technology see [the technical design document](technical_design_document.md).

### Open issues

Both authentication/authorization and the full read/write API may be separate apps. Both the old Tastypie-based and the newer DRF-based APIs are already more or less apps of their own.

### Details

Oh ya, there's lots of 'em!



