# Functional Design document

Paperless Reporting
-------------

### Overview
There are several terms floating around in the Akvo-sphere surrounding this functionality. Paperless reporting and Customised updates and Reporting over Time are 3, but there may be more.

All of these effectively refer to the same feature - the ability for organisations and governments to replace reports that are generated to report on progress on projects and organisations to other parties. These exist often in PDF format and require a huge amount of work to be provided by all parties involved, generally then followed up by an amalgamation of the information into a new format prepscribed by the funders or organisations that are being reported to.

Once submitted, these reports are often skimmed by the receiving organisation, summarised into their internal systems for their reporting needs and then filed into an archive never to be seen again.

We have an opportunity in RSR to provide an alternative to this. DME is an arm of DGIS in the Netherlands, who have provided us with information about their reporting requirements to the recipients of their funds. Our call to action is to turn this into a set of forms that can be filled out within RSR and then provided in the summarised or required formats removing the need for the PDF generation process.

This has a huge potential for Akvo and in particular RSR. If this could be adopted, then we could be mentioned as a real alterative to the existing reporting process for all Dutch organisations receiving funds from DME and potentially even further afield to be extended to all aid organisations in the Netherlands.

A natural expansion of this would be for other governments to look at and adopt some form of this framework for their aid funding. The potential is only limited by the number of funder countries and organisations.

### Marketing description
Organisations and individuals working on projects want to consolidate the amount of work that they are doing. There are many requirements for individuals to use various numbers of systems to log, record and maintain the information about the work they are doing, in addition to reporting requirements coming from differing donors to their projects that mean they need to put this information into multiple formats before it can be accepted.

Funders and donors provide many different funding streams to their portfolio of supported projects and programs. In order to ensure that they are aware of the progress being made, they set their reporting needs in accordance with their internal requirements and request that all of their recipient organisations fulfill these. Whilst this is standardised as much as possible, differing organisations working within different sectors or countries may complete this information in varying formats. Most commonly however these reports are delivered in paper or pdf format that need to be consumed and then consolidated into larger reports for the donors as a whole.

Often the reports delivered contain only an abstraction of the data collected, which them merged with the portfolio, create a further abstraction of the data which quickly starts to lose is context and accuracy, diminishing the value of the underlying data.

With this Paperless Reporting feature we aim to tackle both of these high level issues at the same time. By looking at consolidating the input of data that project workers and coordinators are required to utilise to present, report and monitor their projects using we hope to reduce their workload and double efforts and in the process improve the accuracy and relevance of information that is collected.

This feature will also work to provide access to both the raw and the consolidated data from a donors entire portfolio within a single consumable format that will allow for clear and precise analysis, deeper diving into individual statistics and aspects without the need for information requests whilst removing the burden of performing the consolidation internally.

### Initial features
We will need additional information gathered from project coordinators and field workers:
- Input of additional project information
- Input of reporting information over time
- Input of ending/closing project information

We will need to provide output reporting for field workers, project coordinators and program and portfolio managers.
- Granular information about individual project reporting
- Consolidated project information
- Consolidated program reporting
- Drill-down into granular or linked data

### Non goals
We will not be providing a perfect reporting system for all sectors and industries.
We will not be customising interfaces for each organisation to access reporting information in their own views.
We will not be providing endless reporting inputs for field organisations.
We will not be reporting on non-public data within RSR.

### Scenarios
HIGH LEVEL: An organisation that needs to report to DGIS and is currently producing an annual pdf report for their progress and results reporting.

HIGH LEVEL: An organisation that needs to improve their internal (network) progress reporting for steering and management.

HIGH LEVEL: An organisation that wants to increase the frequency and quality on progress communication and also generate publicly consumable content.


Preethi needs to provide regular progress updates to Matthijs on the progress of her individual projects.
Preethi needs to report on organisation indicators, funding indicators as well as specific indicators uniquely related to the project.

Anne needs to collect incoming progress reports from individual projects to create a country report for her organisation.

Matthijs needs to collect all country reports and create an overall programme report for his organisation to deliver to funders.

Klaus needs to review incoming country and programme reports to check for highlights and sign off before these are delivered to their funders.
Klaus needs to use progress reports for organisational steering and management.


### Technical notes
Any solution should be incorporated within RSR such that information is accessible from the corresponding RSR Project page(s).

It might be necessary to allow organisations to enter and share private information that is (temporarily) not available to the public.

It should be possible to add all information for a project using the single project entry form (tbd).

It should be possible to add further information over time using additional update forms.

It should be possible to define a programme such that all requirements from bottom-up and top-down are incorporated into the data set.

It should be possible to enable or disable this feature depending on the contract or agreement we have with the partner.


### Open issues
How do we incorporate the use of non-public data within RSR that currently is not present?

How could the Reporting Server project assist in the formulation of this functionality?

What forms solution should be used?

How can this be integrated with the Aid Inc work being carried out by Akvo and Zimmerman & Zimmerman?