# Print as PDF

## Overview
There are times when partners wish to share project information with others via email or printed material where a link will not suffice.

While we would like to encourage more users to take advantage of sending direct links to web views of content that always have live data, there are instances which this is not sufficient.

Example use cases:
- Decisions need to be made about items within the project content where decision makers need a clear overview of the project to view.
- Users who need to view content would like to synchronise and view this offline.
- Information from projects needs to be included within reports provided on project or program level that is already delivered within a pdf format.
- Project updates need to be shared with stakeholders where the sender needs to be sure the correct set of updates is being viewed.
- Many users are used to the pdf format and can be sure they have seen and understood the entire contents of a project without missing sections by not clicking or navigating.
- Offline presentations of content need to have pdf or paper copies, the layouts of these need to be attractive and standardised.

## References
https://github.com/akvo/akvo-product-design/issues/41


## Marketing description
There are many reasons that you might need to share the content of one or more of your RSR projects with others. But if it's for decision making, validation, official reporting or for live presenting then sending the web view URL might not be enough to meet your needs.

With this new feature, you'll be able to print the contents of your project in a clear well layed out PDF file that can be sent as an attachment to an email, included within a larger report or printed on paper.

You'll be able to create a full report of your project containing all included information, or collect a simple summary with a selection of Project Updates matching date filters to provide the progress on a project within a given timeframe.

## Initial features
#### Scenarios
- Provide a complete project overview as a PDF file containing all information about a project.
- Provide a simple project view with just the basic information on a project.
- Provide an update export containing all the project updates for a project.
- Provide a filtered project update export containing all updates posted within 2 given dates.
- Provide an option for images and maps to be excluded.

#### High Level Requirements
- Provide pdf files that collect colours and fonts from the Akvo Pages custom CSS.
- Place a timestamp on the exorted pdf informing the date and time that the information is captured.
- Provide live URLs on the export to allow users to click through to the live content.
- Ensure the Powered by Akvo logo is present on the final PDF.
- Photos from project and updates should be included.
- Maps of project locations should be included.

## Non Goals
Only information included within the project content stored in RSR should be included within the exported pdf.

## User Experience
GIVEN a user viewing a project  
WHEN the user selects to print as PDF  
THEN they are provided with a selection of options to choose from  

#### Complete Project
GIVEN a user printing as PDF  
WHEN they select a complete export  
THEN all project content, updates and related information is included  

#### Simple Project
GIVEN a user printing as PDF  
WHEN they select a simple project  
THEN just the project summary and high level information is included  

#### Project Updates
GIVEN a user printing as PDF  
WHEN they select project updates  
THEN the project title and all the project updates are included  

#### Filtered Project Update 
GIVEN a user printing as PDF  
WHEN they select filtered project updates  
THEN they are required to enter a from and to date  

GIVEN a user printing filtered project updates  
WHEN they enter a from and to date  
THEN the project title and all updates that are posted within the 2 dates are included  

#### Exclude Images and Maps
GIVEN a user printing as PDF  
WHEN they select to exclude images and maps  
THEN these should not be included  