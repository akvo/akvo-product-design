# Results - Indicators, Benchmarks, Goals and Budgets
There is some work to be done around results that requires some group discussions and a set of ongoing plans and tasks to be laid out so that we can progress further with this subject.

## Current Model
We have an existing model setup of results information within RSR that consists of:

- Focus Areas
- Categories
- Budgets
- Goals
- Benchmarks

These different items form the basis of the information that is currently collected and visualised within the RSR project UI.

### Focus Areas
A high level grouping based on thematic areas. We currently have 8 different focus areas. We can expand this further if we wish, but they should not overlap with each other.

### Categories
We have a project categorisation that sits below focus areas that provides some further clarity on the type of activities being undertaken. There are some categories that are shared between multiple focus areas such as training or support.

### Budgets
Budgets are defined as a value with a type. We have a set lists of types that we maintain within RSR, or we also allow partners to set an "Other" value and define their own budget type.

### Goals
The goals for a project consist currently of up to 8 sentences that are limited to 100 characters long. There are no separations of whether these goals contain numbers or figures that can be aggregated.

### Benchmarks
Benchmarks are a sentence containing an explanation of a countable item, and the number itself. Benchmarks are linked to one or more category, so that you are presented with a list of potential benchmarks based on the categories that have been selected for the project.

## IATI Structure
We have implemented the data structure of IATI within the RSR database, but we have not yet moved any of the existing data or started using the new models within projects as yet.

Within the IATI standard, we have the following elements:

- Policy Markers
- DAC 3 and 5 sector codelists
- Budgets
- Transactions
- Results
- Indicators

### DAC 3 and 5 sector codelsts
OECD DAC provides sectors for the industry. These are grouped into sector categories: http://iatistandard.org/codelists/SectorCategory/ and sectors:
http://iatistandard.org/codelists/Sector/.

The 3 digit sector category grouping could be aligned with the Focus Area grouping we have within RSR, but we would need to look at how this should be displayed (which codelist do we expose to the input user and on the web view).

The 5 digit sector code could be aligned with the Categories of RSR. It should be possible to declare a set of mappings between the 2 lists and ensure this is taken into account. We would also need to determine which set should be exposed.

### Budgets
Within IATI, budgets provide a little more expansion on the basic strucutre by providing options for also including To/From dates, Currencies and Original/Revised status.

By providing dates within this element, IATI provides opportunity to include information over a period of time, giving more emphasis to the ongoing story telling aspect of RSR.

### Transactions
RSR doesn't have any native transaction type elements at the moment, so the inclusion of this information within the IATI data set is a new addition.

Transactions have an array of data that can be entered that is also date ranged with increasing information about the specifics being provided over the lifetime of the project.

Inclusion of transaction information is becoming more important to the value of IATI content (this element was almost made mandatory in the 2.01 conversations).

If we would like RSR users to start entering more transactional information on their activities we will need to ensure that there is a good and simple method of inputting this into RSR at the project creation and also as the progress continues.

### Results and Indicators
Natively within IATI, Results and Indicators are embedded within each other.

A result contains a title, description, aggregation status and a type. A result can also contain one or more indcators.

Indicators provide the space to include a countable element that can be used to determine progress as well as success of the project's activities. Indicators are comprised of a title, description, baseline and one or more periods.

Periods are sets of time that are added to an indicator to show progress. Periods have a start & end date, a target value with comment, and an actual value with comment.

These elements can be loosely connected to the RSR items to allow further comparison and integration. Results elements should be connected with Goals, and Benchmarks with Indicators.

The addition of time elements to the collection of results also opens up the possibiltiies for the data to be collected over a period of time, so we will need to look into how this can be easily provided for.

## Background
There have been several intiatives in the past few years to look at various aspects of this change and some solutions that could be implemented for this.


### Creating a new standard for Benchmarks in RSR
We had an exercise with an intern that worked with Akvo for several weeks to create a list of all existing benchmarks, and map these to a new structure. The structure was formed in several parts containing codelists that could be selected from.

The core aim of this change was to provide additional meta data in the underlying information so that items could be more easily aggregated over a larger data set.

We have an issue summarising the work that was started on this subject here:
https://github.com/akvo/akvo-rsr/issues/140

We have a document explaining the work that Marij carried out here:
https://www.dropbox.com/s/3ec1yyz9gk0oruz/Standardizing%20indicators%20using%20IATI%2020130403.docx?dl=0

We have a list of the consolidation work in Excel listing all the benchmarks in the system at the time:
https://www.dropbox.com/s/lvjnsdo0cvyg66s/IATIConsolidation.xlsx?dl=0

More documents on this project are stored and are available here:
https://www.dropbox.com/sh/v2epmvr9oh6vrty/AAAyYiAScQNWEbaTNZ-hVw9Ra?dl=0

### IATI stance on approach
In addition to the above exercise, I have spoken within the IATI Community around this subject and had some push-back on the approach with the primary reason of additional codelists being introduced.

IATI in itself is not a curator of data, but the creator of a standard. This means that maintaining codelists is an additional burden on the community that is not easily enlarged as this takes up huge amounts of time.

The approach that we have worked on includes several additional codelists that would need to be implemented within the standard should the approach be adopted by the community as a whole. Who would determine, define and update the lists on an ongoing basis is not something that can be easily attributed.

Additionally, as the standard is being utilised between many sectors, it is also not clear on whether it is possible to define a codelist that can be applicable to all publishing organisations.

We can of course present something meaningful within the IATI Community around this subject, but we would need to have many of the items raised resolved or thought of to ensure that it is given the encouragement and consideration required.

### Results plans in IATI
Despite some pushback on the ideas being presented, the community is as a whole, on the lookout for some improvements to the way that results are being reported on.

Cordaid have implemented a stacked version of the results section within their IATI data set that mimics the default layout that IATI provides, and this is an option we could put our efforts behind to support.

This approach is being also taken up within DGIS in the Netherlands to see if this can be rolled out for all NL NGOs to be able to present their results data in a standard way.

Some useful info: 
http://openworks.me/2014/04/7-ways-to-use-iati-data/
http://www.drostan.org/2014/01/using-iati-for-your-ngo/

### Paperless Reporting
Within the work we are doing for Paperless Reporting as part of PPP3, we are looking into reporting over time and the replacement of the existing paper reports that are being delivered through the funding chain.

This will require the addition of some time elements within the data being delivered within the original project information - this addition is supported by the IATI standard effectively.

In addition to initial data collection, the additional updating of this type of progress information will need to be submitted by users on the project over a period of time. The most effective channel we have for this information is the project update process. By creating and delivering a set of templated updates, we can request the right update information from users to provide the progress reporting needs.

More about this approach and project here: https://github.com/akvo/akvo-product-design/issues/6

### Existing results frameworks
There are already several instances of thought out indicator and results frameworks in existence that we should at least be including within our conversations and research when working on this subject.

The World Bank have an extensive list: http://data.worldbank.org/indicator
The problem with these indicators is they mainly focus on the percentage or overall effectiveness gain (or loss) for entire countries rather than relevance for a single project. Hence these make it tough for us to include within smaller projects being carried out - for example changes in the provision of water supply is marked in % of the total population. Many of our projects look at the raw number of people impacted by the project activities.

We have a list of the MDG Indicators defined by the UN: http://mdgs.un.org/unsd/mdg/Host.aspx?Content=Indicators/OfficialList.htm
These indicators are somewhat limited in scope though and lack a large amount of the detail present within more expansive lists.

The UK Government have also created a list of Sustainable Development Indicators here: https://www.gov.uk/government/publications/sustainable-development-indicators-sdis

### Partners
We have been in discussion with many partners over the years about working together on a results framework.

One of the risks we have with developing a framework in this way is that we could end up coming up with a solution much too geared towards a single reporting organisation and not usable by others.

As we will want to include this collaboration within this effort, I think we need to actively work with several organisations on creating a standard that is both flexible and stable for the community as a whole.

Some examples of organisation we would be able to work with:

- RAIN Foundation
- Cordaid
- Aqua for All
- DGIS
- UNDP
- CommonSites
- ICCO

## Next steps
With all of this information in mind, we need to determine a plan to move forwards in a meaningful way that provides some short, medium and long term gain for ahcieving our goals.

1. Scoping
2. Research
3. Collaboration
4. Presentation
5. Mappings

### Scoping
We need to determine all of the decisions that need to be made in relation to this work. From this list we should be able to identify all the areas where we have all the necessary information to be able to make the decision required. This should include several items that can already be merged between RSR and IATI and where the existing data can begin to be migrated into the new data structure we have implemented.

### Research
For all unknown items we should determine what additional information is required, and where we need to devote the resources for this.

We should bound all research to a fixed point in time to ensure we can move forwards effectively.

### Collaboration
We should reach out to those partners that we believe we can work with on this subject to collect their thoughts. We should work into the plan to find time to present our findings and suggestions to ensure these are suitable for all involved.

### Presentation
When the stories are complete and known, we should collate all the available information to present to all necessary stakeholders with the findings.

In this final presentation we should provide all the necessary information for the firm decisions to be taken on all discussion points.

### Mappings
When there are clear decisions, we can begin the mapping work, this is where we work with the raw data to migrate partners into the new structure by using their existing published information.

This should be done with all elements that are due to change.
