# Searching and Filtering
The searching and filtering options within RSR need to be considered for the entire platform.

Project, Update and Organisation listing pages would make use of this feature in similar ways with different fields forming the basis of the search index.

Auto-completion of search terms would be desirable, but we would need to determine what words/strings can be used to populate the completion process.

## User problems
1. Users cannot find projects and organisations easily.

## User stories
5. Klaus can find the information he is looking for.


### MUST HAVES
- Preethi can filter a list of projects by Country.
- Klaus can find all projects within a OECD DAC Sector.
- Anne can locate a project using the Internal ID that her orgainsation uses for a project.
- Matthijs can find a project knowing only that it has "minerals" somewhere in the description fields.
- Sandra can create a list of projects that have/have not been updated from within a certain country or sector.
- Tim can utilise [Deep linking](https://en.wikipedia.org/wiki/Deep_linking) functionality to direct users to pre-determined search & filtering selections.
- Preethi can generate a list of updates by filtering on coutry and/or user.

### COULD HAVES
- Sandra can find projects with specific budget values.
- Klaus can start typing a project title to see close matches to choose from.
- Sandra could create a complex search and filter query that is automatically applied to the project list when she is logged in.
- Matthijs can check performance of his colleagues by filtering for projects being worked on by individual users.
- Tim could validate his API query results by replicating the filtering options on the web.
- Anne can see a list of common/popular search terms.


### Key search functionality
- Search available on all text fields
- Advanced search on specific fields or field sets
- Auto-complete on search term input

### Key filtering functionality
- Auto-complete dropdown on filterable terms
- Automatic page refreshing on filter selection
- Stacking of multiple filter terms
- Removal of filter terms individually

### Project search
- Title
- Subtitle
- Internal ID
- IATI ID
- Description fields
	- Summary
	- Background
	- Current status
	- Plan
	- Target group
	- Sustainability
	- Goals overview
- Image caption/credit
- Document titles
- Location
	- Address
	- City
	- State
- Transaction description
- Goal titles
- Goal description
- Indicator title
- Indicator description
- Linked URL
- Keywords

### Project Filtering
- Status
- Start/End dates
- Partners
- Location
	- Region
	- Country
- Policy marker
- Sector code
- Total budget amount

### Organisation search
- Name
- Long name
- Description
- URL
- IATI ID
- Linked ID
- Contact
	- Name
	- Phone
	- Email
- Location
	- Address
	- City
	- State

### Organisation filtering
- Active types (support, field etc)
- Organisation type (NGO, Government etc)
- "Owner org"
- Location
	- Region
	- Country

### Update search
- Project
- User
- Title
- Image caption & credit
- Video URL
- Video caption/credit
- Location
	- Address
	- City
	- State

### Update filtering
- Update method (web/Up)
- Image/video present
- Location
	- Region
	- Country
