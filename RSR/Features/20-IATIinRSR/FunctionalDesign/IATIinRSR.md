# Functional Design document

Storing IATI Data in RSR
-------------

### Documents
Flat IATI PDF form for collecting a single set of IATI Details: https://adobeformscentral.com/?f=X5McQ-PPAzygFlHh5bw00g


### Overview
IATI provides a standard reporting format for organisations of varing sizes and structures to be able to communicate about the activities within the framework of comparability.

This structure takes the form of an XML schema that has been designed and implemented to be a complete financial picture of an aid activity.

http://www.aidtransparency.net/about

When consdering how RSR fits into this world it is important to note that RSR has been adopted by many organisations with the attempt of opening up their project portfolios, not for the purpose of financial reporting, but for public consumption, storytelling and transparency.

This doesn't mean that there are not efficiencies to be gained by combining the/ thinking about these differing motivations, but the essence of this difference is fundamental to the thought process and direction that needs to be taken.

The current RSR Data structure has been long thought out and is generally accepted within our partner network as a standardised and efficient way for organisations to be talking about their activities (or projects) in a coherent and succient manner, that allows consumption of project information within a reasonable amount of time, whilst also providing comparibility between individual projects of an organisation and those of which are carried out by other organisations within the same or differing sectors of the aid industry.

This does not mean that the RSR Data structure is a standard within itself, but for all intents and purposes it could be discussed as such within the partners that we work with and those who are looking to adopt RSR as a communications and publicisation platform.

One of the things that many of our partners consider RSR a suitable platform for, is to generate and publish IATI data on their behalf. This process of publication is a large task that needs thought on a data, techincal and political basis, that is almost a standard amount of effort irregardless of the volume of data being published. That's not entirely  true, but for certain the effort is not directly proportional to the volume.

With this in mind, it can be seen as a great advantage for someone like Akvo, who with the basis of a large portfolio of projects as resides within RSR, to make a single publication of IATI data on behalf of all participating organisations.

This single effort could replace the need for all partner organisations to spend time and money in analysing and generating their files, whilst also removing the burden of continually providing this information, as IATI files are static views on a financial situation and need to be regularly updated.

To facilitate this change, we need to work on incorporating the entire of the IATI standard into the RSR data set. This will involve first determining which parts of IATI are already existing within RSR and mapping these effecively - labelling them with both categories of data standard. This should involve 2 sets of mapping - one which is a direct match, and the other where there may need to be some minor changes in the structure we have in RSR - such as budgets, to ensure it is clear how the data should be entered.

Additionally, we will need to determine what extra data needs to be added that does not currently exist. This should be added on the data level only to begin with. We may decide to visualise this information in RSR at some point in the near future, but to begin with this can just sit within the database and be used for IATI reporting. These fields should be labelled as IATI fields so it is clear that whether they will be visualised or not.

### Marketing description
We're big on IATI at Akvo and want to help the IATI Community and our partners as much as possible to puruse transparency and openness in the work that they do. We're already working with IATI Files in fact, and have the ability to create RSR Projects directly by importing a customised version of IATI XML files.

The current functionality does not take into account the entire IATI dataset however. There are still many fields within IATI files that are not available within Akvo RSR that we are currently ignoring.

With this new feature we will be expanding the RSR dataset to include all the available IATI fields. This will allow users to add any additional IATI information to their RSR projects. This can then be utilised by the upcoming IATI Export functionality to include this information in an IATI Publishing process.

We will be looking at both importing this additional IATI information as well as adding it manually per project using the RSR Admin.

### Initial features

Comparison of RSR and IATI data to determine which fields are present and matching, present and comparable, and not yet existing in RSR.

Extension of the RSR dataset to include all IATI Fields.

Extension of the IATI Import functionality to include the newly added fields.

Extension of the IATI Export functionality to include the newly added fields.

Implementation of Admin functionality to allow manual addition of IATI Fields.


### Non goals
We will not be creating a new Form option in this version - we have looked at a new HTML5 Form solution but that should be considered later.

We will not be visualising the newly added information within the existing RSR visual representations - e.g. rsr.akvo.org, Akvo Pages, Akvo Sites etc.

### Scenarios

##### IATI Importers
Organisations that are using the IATI Import functionality will be able to have their entire IATI files stored within RSR and not only the existing RSR fields. Websites built on the RSR API can be built to visualise all information that they have entered into their IATI file.

##### IATI Exporters
Organisations that are using the IATI Export functionality will be able to publish their entire IATI files using RSR and not have to self publish any information.

##### IATI First Timers
Organisations that would like to start collecting IATI information on their projects and publishing this to the standard will be able to enter the IATI fields such as Transactions into their projects on a manual one-by-one basis as they are entering their projects to allow an easy transition into IATI.

### User Experience 
Users should be able to enter their IATI Data into RSR within the same user interface that they enter their RSR Data.

In the short term we could look into building an extension for the existing RSR Admin to be able to accommodate these additional fields to be entered by partners.


#### To be considered later

I think in the longer term we should look into a separate interface (probably fed by an API connection) to collect this data in a clean and organised way, giving lots of user friendly functionality such as:
- Saving partial projects
- Sharing partial projects 
- Apporval of project content
- Responsive design for varying screen size
- Intuitive layout and design
- Spelling and grammar checking
- Image upload and editing
- File attachments
- Video embedding


### Technical notes
We need to look at the codelists that support IATI and ensure that these are kept up to date within our repository and codebse. There is a Github Repository dedicated to IATI Codelists: https://github.com/IATI/IATI-Codelists

### Open issues
We need to look at the mapping of fields that are present in both IATI and RSR to ensure we have a solid and stable mapping process that is logical and can (and will be) explained to our Partner Network so that any changes can be accommodated.