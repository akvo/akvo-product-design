# Functional Design
*IATI Export*

## References
https://github.com/akvo/akvo-rsr/issues/334

## Overview
We have been mentioning for some time that we are working on an Export of IATI Data of RSR Projects for some time. This is something that we need to work on.

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
Providing IATI Files that organisations submit to the IATI Registry themselves.

Submissions directly to the IATI Registry on behalf of organisations.

## Known Issues
We need to determine the Reporting organisation to be included within the file.

## References

IATI File containing RSR Data and comments: https://raw.github.com/akvo/akvo-rsr/wiki-docs/docs/RSR%20Features/API/downloads/RSR_API_IATI_XML_Project_Input_Sample.xml

Implementation Schedule showing the RSR and IATI Fields: https://github.com/akvo/akvo-rsr/blob/wiki-docs/docs/RSR%20Features/API/downloads/RSR_Implementation_Schedule_Oct2013.xlsx?raw=true