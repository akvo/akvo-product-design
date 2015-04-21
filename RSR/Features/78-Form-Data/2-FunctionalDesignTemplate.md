# Functional Design document

RSR Project Forms
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

In order to streamline this process, we need to be able to meet the requirements and needs of our partner users to facilitate the entry of project data within a system or collection of systems where data is only needed to be entered once and can be carried through the process to be automatically added or edited within RSR.

### Marketing description
Implementing RSR within your organisation has never been easier than it is today.

We understand that additional or separate processes can be cumbersome and expensive to run within your organisation, so we have been working on introducing the right functionality to ensure that the process can be streamlined from one end of the organisation to the other.

Enter once and use multiple times is a great strategy that we promote, and with this new feature in RSR, this can be achieved easily.

When collecting information to publish your projects in RSR, you want to make sure that you collect all of the necessary information from the individuals at once.

Using RSR Project Forms, you can achieve this by generating a form that you can roll out to your organisation and partners. This form can contain all the necessary information that is required for entering RSR projects and for publishing this data to the IATI Registry, whilst also giving the possibility to add your own internal data fields to capture financial, steering or other important information at the same time.

These forms can be filled in directly online using any modern web browser or device, and partially completed forms can be shared between colleagues where collaboration is needed.

You can setup an notification process for incoming form submissions if this is needed by your organisation so that when forms are entered by your colleagues or partners, the right people are notified and can take the necessary action to check the content for publication.

Once the data is ready to be published, the system will push this information directly into RSR where it can be seen and accessed by the public. At the same time, you can download a copy of this data in a variety of useful formats that will allow this to be uploaded or added to any internal reporting or management system.

Once your data is live, of course there are times when you need to edit or update it. It's possible retrieve existing data to pre-populate the form fields to make it easy for this to be modified and resubmitted.

### Features

#### Must have
- Access for certain users to project form from My Projects in MyRSR
- Show project form, divided into sections, with help texts
- See what sections have been completed
- Submit project form with project data
- Resubmission to edit existing projects
- Pre-populate form with existing project data
- Device size responsive UI
- Single sign on with RSR
- Auto-save form while editing for entry with limited connectivity
- Save any (draft) project, regardless of data filled in
- Publish projects only when RSR mandatory fields are filled in
- Story logs of all changes

#### Should have
- Share partially completed form for collaboration
- Setup additional mandatory fields and publication rules
- Select templates for publication rules (e.g. IATI compliant)
- Assign responsible(s) for a project or part of a project
- Notify responsible(s) for a project or part of a project
- Creation of update forms to modify or add to existing project data
- Specify default values for an organisation
- View history logs of every project

#### Nice to have
- Add organisation specific fields to form field set
- Select templates for specific field data sets (e.g. DGIS Reporting)
- Set privacy of custom fields
- Modify the form layout, pagination and order

#### Won't have
- Create a form containing RSR (incl IATI) fields to populate a project
- Data Export formats in XML, JSON, CSV/XLS, PDF (not to include IATI XML)
- Customisable partner branding for forms

### User Stories

#### Must have
- As a Superuser or RSR Admin I can access all project forms from MyRSR
- As an Organisation Admin or Project Editor I can access my organisations' project forms from MyRSR
- As a Reporting Organisation Admin I can edit and save all of my organisations' project forms
- As a Reporting Organisation Admin I can publish my organisations' projects when the RSR mandatory fields are filled in
- As a Project Editor I can edit and save forms of unpublished projects of my organisation
- As a User I can view the helptext to assist in completing the form
- As a User I can view what sections of a project form have been completed
- As a User I can complete the form on any device with a modern browser
- As a User my form will be automatically saved every 5 minutes
- As a System I store all actions being performed in any project form

#### Should have
- As a User I can share a private link to forms that can only be accessed with an RSR login
- As a Reporting Organisation Admin I can notify a User of a project form
- As a Reporting Organisation Admin I can setup which fields are highlighted
- As a Reporting Organisation Admin I can setup custom publication rules for my projects
- As a Reporting Organisation Admin I can select custom publication rule templates for my projects
- As an Reporting Organisation Admin I can specify default values for my organisation
- As a Reporting Organisation Admin I can view the history logs of my projects
- As a Project Editor I can submit an update form
- As a Notified User I can be notified when I need to fill in project data
- As a Notified User I am notified when a project is published

#### Nice to have
- As a Reporting Organisation Admin I can modify the layout of forms I create
- As a Reporting Organisation Admin I can change the order of questions within forms I create
- As a Reporting Organisation Admin I can add custom fields for my projects
- As a Reporting Organisation Admin I can set fields to be private that are subsequently not published on open platforms

#### Won't have
- As an authorised Member I can create a form that allows people to enter RSR data
- As an authorised Member I can create a form that allows people to enter IATI data
- As an authorised Member I can create a form with my own organisation branding
- As an authorised Member I can select to add a pre-determined set of fields to forms I create
- As an authorised Member I can create a set of fields to add to forms I create
- As an authorised Member I can create a form that is used to edit existing project data
- As an authorised Member I can create a form that adds project data over time to existing projects
- As an authorised Member I can add drop-down lists to forms I create
- As an authorised Member I can add multiple select fields to forms I create
- As an authorised Member I can customise the Help text visible to users of forms I create
- As an authorised Member I can share a public link to forms that can be accessed by anyone
- As a User I can upload a file with the correct form data included
- As a User I can save a form that allows me to complete it offline
- As a User I can submit a form that I have completed offline once I have connectivity again
- As a User I can submit a form when I have completed all mandatory fields
- As an authorised Member I can see which fields have not been completed of a pending form
- As an authorised Member I can decline the form for submission
- As an authorised Member I can see submitted and approved forms
- As an authorised Member I can set where published forms are sent to
- As an authorised Member I can require that submitted forms be approved by an Admin before being ready for publication
- As an authorised Member I can view the contents of a pending form
- As an authorised Member I can approve the form for submission

### Technical notes
This item could be resolved in a number of different ways, ranging from using an off-the-shelf platform such as an alternative to Adobe Forms Central with some customisation, we could look at building an entire solution from scratch, or we could utilise modules or elements from our existing products and expand on these.

This is a diagram showing a high level example of how this could be created. In this example while we have 2 export options, these should not cause replicated work. Exports should be done with the native data model unless exporting in IATI format for which we should only maintain a single functional process.

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
