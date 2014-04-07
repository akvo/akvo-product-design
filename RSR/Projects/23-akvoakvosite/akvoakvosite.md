# Functional Design document

Akvo Site for Akvo
-------------

### Overview
We want to look into the option of creating an Akvo Site for use within Akvo itself. This would be in place of the current setup as listed at http://rsr.akvo.org.

We would need to ensure that all the current functionality is taken care of within this new setup.

We could look into making this a generic open source project that users could take and install with their own styling for their own websites built on RSR projects.

We could use the existing Akvo Sites code as a base for the development in terms of templates and add additional templates for the missing functionality or we could utilise existing code for this implementation.

The installation would be the default place where projects in RSR are visualised and viewed. This could (and maybe should) take the http://rsr.akvo.org domain to be hosted in when live.

### Marketing description
If you want to view RSR project within a fully functional site then Akvo Sites are the solution. They can be designed to suit any style, look, feel and colour palette whilst ensuring that the latest information from RSR projects is available to users.

With this new style of Akvo Site, it'll be possible to view not just a sub-set of projects within your Site, but the entire portfolio, or any subset of projects in a simple and straightforward implementation.

### Features
Recreate all front end aspects of RSR functionality that are needed by users.

#### Pages:

Project Pages
- [Main](http://rsr.akvo.org/project/2/)
- [Partners](http://rsr.akvo.org/project/2/partners/)
- [Funding](http://rsr.akvo.org/project/2/funding/)
- IATI Details - not existing currently
- [Update list](http://rsr.akvo.org/project/2/updates/)
- [Updates](http://rsr.akvo.org/project/2/update/5012/)
- [Comments](http://rsr.akvo.org/project/2/comments/)
- [Get Widgets](http://rsr.akvo.org/project/2/get-a-widget/)

[Organisation Page](http://rsr.akvo.org/organisation/42/)
[Project List](http://rsr.akvo.org/projects/all/)
[Organisation List](http://rsr.akvo.org/organisations/all/)
[Global Map - Projects](http://rsr.akvo.org/maps/projects/all/)
[Global Map - Organisations](http://rsr.akvo.org/maps/organisations/all/)

#### Additional Functionality (to consider):
[RSS Feeds](http://rsr.akvo.org/rss/updates/2/)
[Donation Process](http://rsr.akvo.org/project/2/donate/)
[Widgets](http://rsr.akvo.org/widget/project-list/organisation/42/?bgcolor=B50000&textcolor=FFFFFF)
Embedded Maps

### Non goals
We will not recreate the RSR Admin.
We will not recreate or replace Akvo Pages.

### Scenarios
Users of Akvo.org would like to be able to see some of the projects that Akvo Partners are working on.

Organisations with projects within RSR would like for their projects to be visible within Akvo.

Akvo needs to have it's own visualisation portal to all the projects within RSR.

### User Experience 
Users should be able to navigate from Akvo.org to find projects within RSR.

Users should be able to utilise any existing links to projects to access content.

### Technical notes
We should build this site within Wordpress.

We should make the site OpenSource and available for the public to download and use.

We should determine what plugins are needed to provide all the necessary functionality.

We should build additional plugins or adapt existing plugins should we need to fulfill additional functionality.