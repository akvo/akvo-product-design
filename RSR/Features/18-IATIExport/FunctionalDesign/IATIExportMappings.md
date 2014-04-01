# IATI Export: Mappings

## Overview

In this document, all IATI elements of the [IATI Activities standard](http://iatistandard.org/activities-standard) are discussed in relation to Akvo RSR.

For each of the elements it is shown whether the element is included in the IATI Export, thereby showing which elements are currently missing from the export as well.

### [IATI Activities](http://iatistandard.org/activities-standard/iati-activities/)

<span style="color:green;">**Included**</span>

Every IATI file has the top node *iati-activities* included.

#### @version

<span style="color:green;">**Included**</span>

Currently, the *@version* attribute is always included and set to '1.03'.

#### @generated-datetime

<span style="color:green;">**Included**</span>

The *@generated-datetime* attribute is always included and set to the date and time of file generation.

#### @linked-data-uri

<span style="color:red;">**Not included**</span>

No Linked Data URIs are stored in RSR and therefore also not taken into account when exporting a IATI file.

### [IATI Activity](http://iatistandard.org/activities-standard/iati-activity/)

<span style="color:green;">**Included**</span>

Every RSR Project is indicated by the node *iati-activity* in the IATI file.

#### @version

<span style="color:red;">**Not included**</span>

The *@version* attribute is not included on activity level, since it is already specified in the top node.

#### @last-updated-datetime

<span style="color:red;">**Not included**</span>

Currently, the *@last-updated-datetime* attribute is not included in the IATI export. This information, however, is available in RSR and can therefore easily be added to the export.

#### [@default-currency](http://iatistandard.org/codelists/currency/)

<span style="color:green;">**Included**</span>

The *@default-currency* is set to the currency being used by an RSR project.

#### @hierarchy

<span style="color:red;">**Not included**</span>

There is currently no hierarchy in RSR projects, therefore this attribute is not included in the IATI export.

#### @linked-data-uri

<span style="color:red;">**Not included**</span>

No Linked Data URIs are stored in RSR and therefore also not taken into account when exporting a IATI file.

#### @xml:lang

<span style="color:green;">**Included**</span>

The *@xml:lang* attribute is set to the language being used in the RSR project.

### [Reporting Organisation](http://iatistandard.org/activities-standard/reporting-org/)

<span style="color:green;">**Included**</span>

The organisation requesting their IATI file is marked as the *reporting-org* in all of their activities in the generated IATI file. 

This means that potentially an organisation could solely be the sponsor partner of a project in RSR, but will be reported as the reporting organisation in their IATI file nonetheless.

The long name of the organisation is used as the value of the node. If an organisation does not have a long, their short name is used.

#### @ref

<span style="color:green;">**Included**</span>, <span style="color:orange;">**Data missing**</span>

The *@ref* attribute is included in the IATI export. However, currently only 3 out of 1843 organisations have a valid IATI Organisation ID in RSR.

#### [@type](http://iatistandard.org/codelists/organisation_type/)

<span style="color:red;">**Not included**</span>

The *@type* attribute is not included in the IATI export.  The RSR database currentlt does not support categories of organisations.

### [IATI Identifier](http://iatistandard.org/activities-standard/iati-identifier/)

<span style="color:green;">**Included**</span>

The IATI identifier is added to the IATI file, when available. Because an organisation can have different partnerships and partner types for one project, and the IATI identifier is stored on partnership level, the first IATI identifier that is found will be used in the IATI file.

To clarify; an organisation can be the support partner for a project and have only the projects for which they are support partner in their IATI file, but the support partnership relation does not have a IATI identifier. However, the same organisation is also funding partner of a project and that partnership does have a IATI identifier. Then this identifier is used in the export.

### [Other Identifier](http://iatistandard.org/activities-standard/other-identifier/)

<span style="color:red;">**Not included**</span>

Currently this node is not included. However, this node might be used to indicate the internal organisation id field in RSR.

### [Activity Website](http://iatistandard.org/activities-standard/activity-website/)

<span style="color:green;">**Included**</span>

For each of the RSR links belonging to a project, a *iati-website* node is added to the IATI file.

### [Title](http://iatistandard.org/activities-standard/title/)

<span style="color:green;">**Included**</span>

The title of an RSR project corresponds to the *title* node in the IATI file.

### [Description](http://iatistandard.org/activities-standard/description/)

<span style="color:green;">**Included**</span>

Generally, a IATI file generated from RSR will have many descriptions. The following fields from RSR are mapped to a IATI description:

- Subtitle
- Project plan summary
- Background
- Project plan
- Current status
- Sustainability
- Goals overview

#### [@type](http://iatistandard.org/codelists/description_type/)

<span style="color:green;">**Included**</span>

Description type 1 is used for all descriptions except for the Goals overview, which is indicated by type 2.

### [Activity Status](http://iatistandard.org/activities-standard/activity-status/)

<span style="color:green;">**Included**</span>

The activity status is included in the IATI Export, using the following mapping from RSR to IATI:

- Needs Funding --> Pipeline/identification
- Active --> Implementation
- Completion --> Completed
- Completed --> Post-completion
- Cancelled --> Cancelled

#### [@code](http://iatistandard.org/codelists/activity_status/)

<span style="color:green;">**Included**</span>

The corresponding status codes of a project are included in the IATI export.

### [Activity Date](http://iatistandard.org/activities-standard/activity-date/)

<span style="color:green;">**Included**</span>

Two dates are included in the IATI export: the start of the activity and the planned end date.

#### [@type](http://iatistandard.org/codelists/activity_date_type/)

<span style="color:green;">**Included**</span>

The *@type* argument is either *start-actual*, which is linked to the *date_request_posted* field in RSR, or *end-planned*, which is linked to the *date_complete* field in RSR.

### [Contact info](http://iatistandard.org/activities-standard/contact-info/)

<span style="color:red;">**Not included**</span>

The *contact-info* node is not added in the IATI export. However, contact information is available in RSR, so this can be added in a later stadium.

### [Participating Organisation](http://iatistandard.org/activities-standard/participating-org/)

<span style="color:green;">**Included**</span>

Each organisation linked to the RSR project is added as a participating organisation in the IATI export. So each organisation has its' own *participating-org* node.

The long name of the organisation is used as the value of the node. If an organisation does not have a long, their short name is used.

#### @ref

<span style="color:green;">**Included**</span>, <span style="color:orange;">**Data missing**</span>

The *@ref* attribute is included in the IATI export. However, currently only 3 out of 1843 organisations have a valid IATI Organisation ID in RSR.

#### [@type](http://iatistandard.org/codelists/organisation_type/)

<span style="color:red;">**Not included**</span>

The *@type* attribute is not included in the IATI export.  The RSR database currentlt does not support categories of organisations.

#### [@role](http://iatistandard.org/codelists/organisation_role/)

<span style="color:green;">**Included**</span>

Each *participating-org* node has a *@role* attribute. The mapping from RSR to IATI is as follows:

- Support --> Accountable
- Field --> Implementing
- Funding --> Funding
- Sponsor --> Extending

### [Activity Scope](http://iatistandard.org/activities-standard/activity-scope/)

<span style="color:red;">**Not included**</span>

Activity scopes are not included in the IATI export.

### [Recipient Country](http://iatistandard.org/activities-standard/recipient-country/)

<span style="color:green;">**Included**</span>

Each project in RSR has a location with a country, which is mapped to the *recipient-country* node. The value of the node is the name of the country as specified in RSR.

#### [@code](http://iatistandard.org/codelists/country/)

<span style="color:green;">**Included**</span>

ISO codes for the countries are included in the IATI export.

#### @percentage

<span style="color:red;">**Not included**</span>

The *@percentage* argument is not included, since RSR only allows for one country to be specified. Therefore the percentage is always the default value of 100%.

### [Recipient Region](http://iatistandard.org/activities-standard/recipient-region/)

<span style="color:red;">**Not included**</span>

Regions are not specified in RSR and therefore not included in the IATI export.

### [Location](http://iatistandard.org/activities-standard/location/)

<span style="color:green;">**Included**</span>

Every RSR project has a location specified, which is included in the IATI export.

#### @percentage

<span style="color:red;">**Not included**</span>

The *@percentage* argument is not included, since RSR only allows for one location to be specified. Therefore the percentage is always the default value of 100%.

#### [Location Type](http://iatistandard.org/activities-standard/location/location-type/)

<span style="color:green;">**Included**</span>

Locations in RSR are either specified on city or state level. If the city is known, the location type is specified as 'PPL', whereas the type is 'ADM1' when only the state is known.

#### [Name](http://iatistandard.org/activities-standard/location/name/)

<span style="color:green;">**Included**</span>

The name of the location is a combination of the city and state name.

#### [Description](http://iatistandard.org/activities-standard/location/description/)

<span style="color:red;">**Not included**</span>

In RSR, no descriptions for locations are available and therefore the descriptions are not included in the IATI export.

#### [Administrative](http://iatistandard.org/activities-standard/location/administrative/)

<span style="color:green;">**Included**</span>

Similar to the *recipient-country* tag, the ISO code of a country and the name of the country as known in the RSR system are provided in the IATI export.

#### [Coordinates](http://iatistandard.org/activities-standard/location/coordinates/)

<span style="color:green;">**Included**</span>

Since every location in RSR has a longitude and a latitude, these coordinates are included. However, the *@precision* attribute is not.

#### [Gazetteer Entry](http://iatistandard.org/activities-standard/location/gazetteer-entry/)

<span style="color:red;">**Not included**</span>

Gazetteer entries are not stored in RSR and therefore not included in the IATI export.

### [Sector](http://iatistandard.org/activities-standard/sector/)

<span style="color:green;">**Included**</span>

An extensive mapping between RSR benchmarks and IATI sectors has been made, which allows to include the *sector* node to be added in the IATI export.

The value of the node corresponds to the name of the code.

#### [@code](http://iatistandard.org/codelists/sector/)

<span style="color:green;">**Included**</span>

The code of the sector is specified based on the mapping with RSR. In some cases the 3-digit code of the category is used.

#### [@vocabulary](http://iatistandard.org/codelists/vocabulary/)

<span style="color:red;">**Not included**</span>

The *@vocabulary* attribute is not used, since the DAC vocabulary is used as codes which is the default.

#### @percentage

<span style="color:red;">**Not included**</span>

Currently we only specify one sector code, so the percentage is always 100%.

### [Country Budget Items](http://iatistandard.org/activities-standard/country-budget-items/)

<span style="color:red;">**Not included**</span>

The *country-budget-items* node are not included. Budgets are in RSR, but not specified per country, which is why this node is not included in the IATI export.

### [Policy Marker](http://iatistandard.org/activities-standard/policy-marker/)

<span style="color:red;">**Not included**</span>

There is currently no mapping between RSR indicators or benchmarks and IATI policy markers, therefore it is not included in the IATI export.

### [Collaboration Type](http://iatistandard.org/activities-standard/collaboration-type/)

<span style="color:red;">**Not included**</span>

There is currently no information in RSR concerning collaboration types, therefore it is not included in the IATI export.

### [Default Finance Type](http://iatistandard.org/activities-standard/default-finance-type/)

<span style="color:red;">**Not included**</span>

There is currently no information in RSR concerning finance types, therefore it is not included in the IATI export.

### [Default Flow Type](http://iatistandard.org/activities-standard/default-flow-type/)

<span style="color:red;">**Not included**</span>

There is currently no information in RSR concerning flow types, therefore it is not included in the IATI export.

### [Default Aid Type](http://iatistandard.org/activities-standard/default-aid-type/)

<span style="color:red;">**Not included**</span>

There is currently no information in RSR concerning aid types, therefore it is not included in the IATI export.

### [Default Tied Status](http://iatistandard.org/activities-standard/default-tied-status/)

<span style="color:red;">**Not included**</span>

There is currently no information in RSR concerning the tied status of a project, therefore it is not included in the IATI export.

### [Budget](http://iatistandard.org/activities-standard/budget/)

<span style="color:green;">**Included**</span>

Multiple budgets can be specified in RSR. For each budget a *budget* node is added in the IATI file.

#### [@type](http://iatistandard.org/codelists/budget_type/)

<span style="color:red;">**Not included**</span>

The *@type* attribute is not included in the IATI export, every budget is an original budget.

#### [Period Start](http://iatistandard.org/activities-standard/budget/period-start/)

<span style="color:red;">**Not included**</span>

Budgets in RSR do not have a date specified and therefore the *period-start* node is not in the IATI export.

#### [Period End](http://iatistandard.org/activities-standard/budget/period-end/)

<span style="color:red;">**Not included**</span>

Budgets in RSR do not have a date specified and therefore the *period-end* node is not in the IATI export.

#### [Value](http://iatistandard.org/activities-standard/budget/value/)

<span style="color:green;">**Included**</span>

The *value* node is included in the IATI export to show the value of the budget. However, the corresponding *@currency* and *@value-date* attributes are not. 

The currency can be retrieved from the top *iati-activity* node, where the default currency of the activity is indicated.

### [Planned Disbursement](http://iatistandard.org/activities-standard/planned-disbursement/)

<span style="color:red;">**Not included**</span>

RSR only allows for budgets to be specified and not planned disbursements or transactions, therefore these are not included in the IATI export.

### [Capital Spend](http://iatistandard.org/activities-standard/capital-spend/)

<span style="color:red;">**Not included**</span>

No information on the capital spend is available in RSR, so it is not available in the IATI export either.

### [Transaction](http://iatistandard.org/activities-standard/transaction/)

<span style="color:red;">**Not included**</span>

RSR only allows for budgets to be specified and not planned disbursements or transactions, therefore these are not included in the IATI export.

### [Document Link](http://iatistandard.org/activities-standard/document-link/)

<span style="color:green;">**Included**</span>

Each RSR project has an image, which is included in the IATI export in the *document-link* node.

#### @url

<span style="color:green;">**Included**</span>

The *@url* attribute points to the location of the image.

#### [@format](http://iatistandard.org/codelists/file_format/)

<span style="color:green;">**Included**</span>

The *@format* attribute is included in the IATI export. However, since there it is not possible to indicate images in the current codelists, the export uses *image/* and the extension of the image to indicate the format.

#### [Title](http://iatistandard.org/activities-standard/document-link/title/)

<span style="color:red;">**Not included**</span>

The title of is not included in the *document-link* node. However, often a caption of the image is available in RSR, so this could be added as the title.

#### [Category](http://iatistandard.org/activities-standard/document-link/category/)

<span style="color:red;">**Not included**</span>

The category of an image is not available in RSR and is therefore not included in the IATI export.

#### [Language](http://iatistandard.org/activities-standard/document-link/language/)

<span style="color:red;">**Not included**</span>

Since we only use the *document-link* to indicate images, we do not use the *language* node in the IATI export.

### [Related Activity](http://iatistandard.org/activities-standard/related-activity/)

<span style="color:red;">**Not included**</span>

The *related-activity* node is not included in the IATI export, since there are currently no relations between activities in RSR.

### [Conditions](http://iatistandard.org/activities-standard/conditions/)

<span style="color:red;">**Not included**</span>

Conditions are not specified in RSR and therefore also not in the IATI export.

### [Result](http://iatistandard.org/activities-standard/result/)

<span style="color:green;">**Included**</span>

Results are included in the IATI export, based on RSR goals and benchmarks.

#### [@type](http://iatistandard.org/codelists/result_type/)

<span style="color:green;">**Included**</span>

The *@type* attribute is added in the IATI export based on RSR; if the result stems from a goal, the type is 'output' and if it stems from an benchmark it is of type 'outcome'.

#### @aggregation-status

<span style="color:red;">**Not included**</span>

Information on the *@aggregation-status* is not available in RSR and therefore not added in the IATI export.

#### [Title](http://iatistandard.org/activities-standard/result/title/)

<span style="color:green;">**Included**</span>

The name of the RSR goal or the category of the RSR benchmark is included in the *title* node.

#### [Description](http://iatistandard.org/activities-standard/result/description/)

<span style="color:green;">**Included**</span>

For RSR benchmarks, the complete benchmark description is added as the *description* node.

#### [Indicator](http://iatistandard.org/activities-standard/result/indicator/)

<span style="color:red;">**Not included**</span>

Indicators are not included in the IATI export. RSR does have indicators, but these cannot be related to individual RSR goals or benchmarks.

### [Legacy Data](http://iatistandard.org/activities-standard/legacy-data/)

<span style="color:red;">**Not included**</span>

Legacy data is not included in the IATI export.

### [CRS Add](http://iatistandard.org/activities-standard/crs-add/)

<span style="color:red;">**Not included**</span>

CRS++ reporting is not included in RSR and therefore not added to the IATI export.

### [FSS](http://iatistandard.org/activities-standard/fss/)

<span style="color:red;">**Not included**</span>

FSS is not included in RSR and therefore not added to the IATI export.
