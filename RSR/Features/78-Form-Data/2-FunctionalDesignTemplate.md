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

Once your data is live, of course there are times when you need to edit or update it. It's possible to do this either by using the original or creating a new editing form. From the interface you can collect the current data to prepoppulate the form fields to make it easy for this to be modified and resubmitted.

### Features
- Create a form containing RSR (incl IATI) fields to populate a project
- Save form offline for entry without connectivity
- Share partially completed form for collaboration
- Add organisation specific fields to form field set
- Set privacy of custom fields
- Add existing field data sets such as DGIS Reporting to the form fields
- Modify the form layout, pagination and order
- Setup approval process
- Data Export formats in XML, JSON, CSV/XLS, PDF
- Device size responsive UI
- Customisable partner branding for forms
- Single sign on with RSR
- Prepopulation of form with existing project data
- Resubmission to update existing projects
- Creation of update forms to modfy or add to existing project data

### User Stories

#### Create Forms for Data Entry

- #363 - As an authorised Member I can create a form that allows people to enter RSR data
- #364 - As an authorised Member I can create a form that allows people to enter IATI data
- #365 - As an authorised Member I can create a form with my own organisation branding
- #377 - As an authorised Member I can specify default values for any field in forms I create
- #366 - As an authorised Member I can modify the layout of forms I create
- #367 - As an authorised Member I can change the order of questions within forms I create
- #369 - As an authorised Member I can add custom fields to forms I create
- #370 - As an authorised Member I can select to add a pre-determined set of fields to forms I create
- #371 - As an authorised Member I can create a set of fields to add to forms I create
- #372 - As an authorised Member I can set fields to be private that are subsequently not published on open platforms
- #373 - As an authorised Member I can require that submitted forms be approved by an Admin before being ready for publication
- #374 - As an authorised Member I can setup who and when notifications are sent about forms being submitted, approved and published
- #375 - As an authorised Member I can create a form that is used to edit existing project data
- #376 - As an authorised Member I can create a form that is prepopulated with existing live values for a specific project
- #378 - As an authorised Member I can create a form that adds reporting data over time to existing projects
- #379 - As an authorised Member I can add drop-down lists to forms I create
- #380 - As an authorised Member I can add multiple select fields to forms I create
- #386 - As an authorised Member I can customise the Help text visible to users of forms I create
- #390 - As an authorised Member I can set which fields are mandatory
- #398 - As an authorised Member I can share a public link to forms that can be accessed by anyone
- #399 - As an authorised Member I can share a private link to forms that can only be accessed with an RSR login

#### Completing a Form

- #381 - As a User I can complete a form with project data
- #382 - As a User I can save an incomplete form and return to finish it later
- #383 - As a User I can save an incomplete form and send it to a colleague to continue
- #384 - As a User I can save a form that allows me to complete it offline
- #385 - As a User I can submit a form that I have completed offline once I have connectivity again
- #387 - As a User I can view the helptext to assist in completing the form
- #388 - As a User I can complete the form on any device with a modern browser
- #389 - As a User I can submit a form when I have completed all mandatory fields

#### Approve Submitted Form

- #391 - As an authorised Member I am notified when a form is submitted that needs to be approved
- #392 - As an authorised Member I can see all forms pending approval
- #393 - As an authorised Member I can view the contents of a pending form
- #394 - As an authorised Member I can see which fields have not been completed of a pending form
- #395 - As an authorised Member I can approve the form for publication
- #396 - As an authorised Member I can declien the form for publication
- #397 - As an authorised Member I can ask questions to the submitter of the form

#### Publish Submitted Data

- #400 - As an authorised Member I can see submitted and approved forms
- #401 - As an authorised Member I can see who submitted and approved a form
- #402 - As an authorised Member I can verify and modify the fields that are to be published or remain private
- #403 - As an authorised Member I can set where published forms are sent to

### Technical notes
This item could be resolved in a number of different ways, ranging from using an off-the-shelf platform such as an alternative to Adobe Forms Central with some customisation, we could look at building an entire solution from scratch, or we could utilise modules or elements from our existing products and expand on these.

### Open issues
Any known issues that need to be decided

### Details
Details, details, details.

Approved and ready for Visual Design by: 