# Functional Design
*IATI Export*

## References
https://github.com/akvo/akvo-rsr/issues/334

## Overview
The idea is that the data we have in the database should be mapped to the IATI Standard and an export should be provided which is based on the API that we have implemented in RSR to be able to perform this action on a regular basis.

## Marketing description
Many organisations are looking at becoming more open and transparent. IATI is one of the best ways of contributing to the Open Data and Transparency movement by sharing your information in a standard way.

We have now developed the option for Partners to be able to use RSR for their Project reporting and at the same time have their content be automatically submitted to the IATI Registry without the additional burden of needing to input this information into another system, or even making sure that this file is maintained, as this will all be taken care of by Akvo.

## Initial features
Initially we will be creating an output only containing the information that we currently have available in RSR Projects.

We will be adding further fields into the RSR Database as time progresses to allow us to also include this within the export.

The Export should be designed to be able to cope with further changes to the RSR Database and allow these to be included as needed.

The Export process should contain a list of mandatory fields that must be included in order for the project to be exported in IATI format.

The Export should allow Individual projects or projects belonging to individual organisations to be excluded from the file. This should be based on the Ownership flag that is being introduced in the 2.3.4 release.

The Export may be initially designed to only be carried out by a command line interface, but should be looked at having a UI eventually.

## Non goals
We will not be exporting projects that exist outside of the RSR Database.

## Scenarios
~~Providing IATI Files that organisations submit to the IATI Registry themselves.~~
``this requirement is not needed - the input for this is covered in the below additions of having the links available on the site``

Submissions directly to the IATI Registry on behalf of organisations.

Provide a link on a project page that allows the available data to be provided in an IATI XML format for viewing in the browser or downloading directly. This file should contain the project data available, but is likely to be missing the Reporting organisation and other vital information in order for it to be used to publish.

Provide a link on an organisation page that allows the entire data for that organisation to be provided in an IATI XML format for viewing in the browser or downloading directly. This link should only be available for Organisations that are Support Partners - have Support Partner listed in the ``rsr_organisation_partner_types`` table.

## User Stories

### Creating an IATI XML File

- #339 - As an authorised Member I can create an IATI XML file for a single project
- #340 - As an authorised Member I can create an IATI XML file for all projects from an organisation
- #341 - As an authorised Member I can decide to publish a created IATI XML file
- #342 - As an authorised Member I can see what IATI Mandatory information is missing from the created file
- #343 - As an authorised Member I can preview a created file
 
### Viewing an IATI XML File

- #346 - As a User I can download a public IATI XML file for a single project
- #347 - As a User I can download a public IATI XML file for an organisation
- #348 - As a User I can preview a public IATI XML file in RSR
- #349 - As a User I can find the Published Information for a project or organisation in the IATI Registry
- 
### Publishing an IATI XML File

- #354 - As an authorised Member I can request to have Akvo publish my IATI XML File
- #355 - As an authorised Member I can choose to publish my IATI XML File myself
- #356 - As an authorised Member I can link my published IATYI XML File to my project / organisation pages
- #357 - As an authorised Member I can submit the necessary details needed by the IATI Registry for publication
- #358 - As an authorised Member I can set the publishing frequency

## Known Issues
We need to determine the Reporting organisation to be included within the file.

Need to look at Organisation Identifiers, at the moment we do not hold IATI Ids for most organisations, and we should determine how we tackle this in the short and longer term.

We need to look at the current Categories to determine how we map these to the DAC sector codes. We will be moving to this model entirely within RSR shortly, but this is likely to be after the export functionality has been implemented and started to be used.

## References

IATI File containing RSR Data and comments: https://raw.github.com/akvo/akvo-rsr/wiki-docs/docs/RSR%20Features/API/downloads/RSR_API_IATI_XML_Project_Input_Sample.xml

Implementation Schedule showing the RSR and IATI Fields: https://github.com/akvo/akvo-rsr/blob/wiki-docs/docs/RSR%20Features/API/downloads/RSR_Implementation_Schedule_Oct2013.xlsx?raw=true
