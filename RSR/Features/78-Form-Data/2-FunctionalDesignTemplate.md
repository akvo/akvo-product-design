# Functional Design document

RSR / IATI Data Management
-------------

### Documents
Github Issue: https://github.com/akvo/akvo-product-design/issues/77


Additional Github issues relevant:

Issue to replace the functionality we are providing within Adobe Froms Central that will be depreciated Summer 2015: https://github.com/akvo/akvo-product-design/issues/78

Issue to introduce M&E functionality within RSR utilising a form based solution: https://github.com/akvo/akvo-product-design/issues/76

### Overview
We currently utilise a combination of custom and generic PDF forms and the Django Admin to collect and manage data within RSR.

Users are provided with a PDF form that they can distribute to their organisation for the purpose of collecting initial project information.

This form is then delivered to the Partner Team in Akvo where the details are added to the Django Admin.

When changes are required on the project content, many partners send these changes in to the Partner team either manually, or through the use of the PDF form. These changes are then made within the Django Admin so that they are reflected within the public view of the project.

A few of our partners are trained and do utilise the Django Admin directly for the entry and management of project data. These partners often still use a PDF form to collect the data from their colleagues initially, but they perform the addition to the Admin directly without support from the Akvo Partner Team.

In order to streamline this process, we need to be able to meet the requirements and needs of our partner users to facilitate the entry and management of project data within a system or collection of systems where data is only needed to be entered once and can be carried through the process to be automatically added or edited within RSR.

### Marketing description
Implementing RSR within your organisation has never been easier than it is today.

We understand that additional or separate processes can be cumbersome and expemnsive to run within your organisation, so we have been working on introducing the right functionality to ensure that the process can be streamlined from one end of the organisation to the other.

Enter once and use multiple times is a great strategy that we promote, and with this new feature in RSR, this can be achieved easily.

When collecting information to publish your projects in RSR, you want to make sure that you collect all of the necessary information from the individuals at once.

Using RSR Data Management, you can achieve this by generating a form that you can roll out to your organisation and partners. This form can contain all the necessary information that is required for entering RSR projects and for publishing this data to the IATI Registry, whilst also giving the possibility to add your own internal data fields to capture financial, steering or other important information at the same time.

These forms can be filled in directly online using any modern web browser or device, and can even be saved for offline entry and partially completed forms can be shared between colleagues where collaboration is needed.

You can setup an approval process for incoming form submissions if this is needed by your organisation so that when forms are entered by your colleagues or partners, the right people are notified and can take the necessary action to check and approve the content for publication.

Once the data is ready to be published, the data management system will push  this information directly into RSR where it can be seen and accessed by the public.

At the same time, you can download a copy of this data in a variety of useful formats that will allow this to be uploaded or added to any internal reporting or management system.

Once your data is live, of course there are times when you need to edit or update it. It's possible to do this either by using the original or creating a new editing form. From the interface you can retrieve existing data to prepoppulate the form fields to make it easy for this to be modified and resubmitted.

### Features
- Create a form containing RSR (incl IATI) fields to populate a project
- Save form offline for entry without connectivity
- Share partially completed form for collaboration
- Add organisation specific fields to form field set
- Set privacy of custom fields
- Add existing field data sets such as DGIS Reporting to the form fields
- Modify the form layout, pagination and order
- Setup approval process <sup>1</sup>
- Data Export formats in XML, JSON, CSV/XLS, PDF (not to include IATI XML) <sup>2</sup>
- Device size responsive UI
- Customisable partner branding for forms
- Single sign on with RSR
- Prepopulation of form with existing project data
- Resubmission to edit existing projects <sup>3</sup>
- Creation of update forms to modfy or add to existing project data

### User Stories

#### Create Forms for Data Entry

- #363 - As an authorised Member I can create a form that allows people to enter RSR data <sup>4</sup>
- #364 - As an authorised Member I can create a form that allows people to enter IATI data <sup>5</sup>
- #365 - As an authorised Member I can create a form with my own organisation branding
- #377 - As an authorised Member I can specify default values for any field or data value in forms I create
- #366 - As an authorised Member I can modify the layout of forms I create
- #367 - As an authorised Member I can change the order of questions within forms I create
- #369 - As an authorised Member I can add custom fields to forms I create
- #370 - As an authorised Member I can select to add a pre-determined set of fields to forms I create
- #371 - As an authorised Member I can create a set of fields to add to forms I create <sup>6</sup>
- #372 - As an authorised Member I can set fields to be private that are subsequently not published on open platforms
- #373 - As an authorised Member I can require that submitted forms be approved by an Admin before being ready for publication <sup>7</sup>
- #374 - As an authorised Member I can setup who and when notifications are sent about forms being submitted, approved and published or when a form needs to be completed
- #375 - As an authorised Member I can create a form that is used to edit existing project data
- #376 - As an authorised Member I can create a form that is prepopulated with retrieved existing values for a specific project
- #378 - As an authorised Member I can create a form that adds project data over time to existing projects
- #379 - As an authorised Member I can add drop-down lists to forms I create
- #380 - As an authorised Member I can add multiple select fields to forms I create
- #386 - As an authorised Member I can customise the Help text visible to users of forms I create
- #390 - As an authorised Member I can set which fields are mandatory
- #398 - As an authorised Member I can share a public link to forms that can be accessed by anyone
- #399 - As an authorised Member I can share a private link to forms that can only be accessed with an RSR login
- #404 - As an authorised Member I can see the progress of partial and fully completed forms

#### Completing a Form

- #381 - As a User I can complete a form with project data
- #382 - As a User I can save an incomplete form and return to finish it later
- #383 - As a User I can save an incomplete form and send it to a colleague to continue
- #384 - As a User I can save a form that allows me to complete it offline
- #385 - As a User I can submit a form that I have completed offline once I have connectivity again
- #387 - As a User I can view the helptext to assist in completing the form
- #388 - As a User I can complete the form on any device with a modern browser
- #389 - As a User I can submit a form when I have completed all mandatory fields
- #405 - As a User I can upload a file with the correct form data included

#### Approve Submitted Form

- #391 - As an authorised Member I am notified when a form is submitted that needs to be approved
- #392 - As an authorised Member I can see all forms pending approval
- #393 - As an authorised Member I can view the contents of a pending form
- #394 - As an authorised Member I can see which fields have not been completed of a pending form <sup>8</sup>
- #395 - As an authorised Member I can approve the form for submission
- #396 - As an authorised Member I can decline the form for submission
- #397 - As an authorised Member I can ask questions to the submitter of the form

#### Publish Submitted Data

- #400 - As an authorised Member I can see submitted and approved forms
- #401 - As an authorised Member I can see who submitted and approved a form
- #402 - As an authorised Member I can verify and modify the fields that are to be published or remain private
- #403 - As an authorised Member I can set where published forms are sent to

### Technical notes
This item could be resolved in a number of different ways, ranging from using an off-the-shelf platform such as an alternative to Adobe Forms Central with some customisation, we could look at building an entire solution from scratch, or we could utilise modules or elements from our existing products and expand on these.

This is a diagram showing a high level example of how this could be created. In this example while we have 2 export options, these should not cause repliated work. Exports should be done with the native data model unless exporting in IATI format for which we should only maintain a single functional process.

![potential architectural structure](https://raw.githubusercontent.com/akvo/akvo-product-design/master/RSR/Features/78-Form-Data/rsr_data_management.png)

### Open issues
Any known issues that need to be decided

### Details
Details, details, details.

Approved and ready for Visual Design by: 

### Glossary

**Project:** A project refers to an RSR Project that is equivalent of an Activity in IATI. This can also refer to a Programme in RSR or IATI. Within RSR these terms should be used independently when describing the data as we make distinction at that level.

**Organisation:** Most of this functionality has been described to cater for the needs of an organisation. This could also refer to the people working for a Consortia or group, rather than a single organisation.

**Field Set:** Field set has been used to describe a collection of fields in a specified format that are created to meet the specific needs of an organisation or group. An example of this would be the field set of DGIS used to collect paperless reporting data.

**User:** A user is anyone using the system being described.

**Member:** A member is someone with an account on the system being described.

**Authorised:** Autohrised refers to that the person has completed the login process to identify themselves with the account they have on the system being described.

### Footnotes

<sup>1</sup> The approval process needs further clarification. This could involve several layers or roles that act independently. To flesh out these requirements we should model out one or more partners existing processes.

<sup>2</sup> The Export of data is to be done at the Data Management level. In the event that this is built as a true independent system from RSR, then it is unlikely that we will offer IATI XML as an export option.

<sup>3</sup> When a project already exists but a form is submitted to edit that project, then the data should be updated with the entered content from the form.

<sup>4</sup> Entering RSR covers all the functionality we currently offer within the RSR Admin and Project PDF forms. It is out of scope of this document to describe data entry methods or functions, but these should be declared and described within the Visual Design to ensure the user is provided with a clear and easy process to enter RSR projects in their entireity.
This also includes the functionality to be able to add multiple instances of a data element where permitted.

<sup>5</sup> As above with RSR fields, there are some practical implementations of IATI data that we need to support but should be covered within the data entry design.

<sup>6</sup> It should be possible to combine new and existing field sets with custom fields.

<sup>7</sup> Implicitly implied that this is optional, so it should also be possible to not add an approval process, in which this should happen automatically.

<sup>8</sup> A standalone view to review all the missing information is implied here.
