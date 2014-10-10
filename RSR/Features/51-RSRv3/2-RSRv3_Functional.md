# RSR v3

### Overview
Working on a new design for RSR that will push us into v3 of the product.

This will involve a new set of visual interfaces that are created by analysing the critical user paths and providing clear routes for users to follow to perform the actions that are most important to them.

The redesign will also take into account collecting metrics and statistics surrounding the changes to be implemented to determine whether these changes improve the user experience, and allow for further testing and refining to create the most enjoyable experience for our users.

### User problems
We have identified several user problems that have led to the discussions for this redesign. These cover the most important items that are affecting users.

1. Users are exposed to too much information and its not clear what they should be doing.
2. Users have no way to communicate with each other on the platform.
3. Users don't understand what is required to publish a project.
4. Users cannot find projects and organisations easily.
5. Users don't understand and cannot follow the registration process.
6. Users have no access to portfolio level information.
7. Users need to be able to easily share visual information about their projects.
8. Users don't know how to get the right information from the API.
9. Users don't know how to send the right information from the API.
10. Users need to be able to find the relevan info on project and organisation pages.
11. Users need clear visual overview of project information.
12. Users cannot see their previous activity.
13. Users don't see changes in their permissions or access.
14. Users don't know when to update projects.
15. Users need to update projects as simply as possible.

### User stories
The following user stories have been created to guide the process of thinking about and defining new user processes.

These stories are based on individual personas for the RSR user base which are described here: https://github.com/akvo/akvo-product-design/blob/master/RSR/Personas/RSR_Personas.md

1. Preethi can easily register for an RSR account.
2. Anne can easily approve or decline users who apply to her organisation.
3. Sandra can fully complete and publish her projects.
4. Sandra and Preethi can see all of the important and available actions that they can perform.
5. Klaus can find the information he are looking for.
6. Sandra can communicate with other users about projects.
7. Klaus can get a high level overview of a project from a single page.
8. Matthijs can gain access to a detailed view of all project data.
9. Sandra can see activity on a project over time.
10. Preethi have see her personal RSR activity.
11. Matthijs can stay informed of activities on a project.
12. Tim can find out how to collect information from the API.
13. Tim can send information to RSR to create projects and organisations.

### Akvo user story
An additional user story covers the information requirements that we need to consider in order to track the changes being made to determine impact and subsequent refinements.

1. Akvo can collect information from users behavious and usage patterns.

### Strategy
In order to improve the efficiency of development and make the most out of our existing infrastructure, the plan is to develop an Akvo Pages instance for Akvo that encapsulates all of the functionality being described within this redesign work.

This provides:

1. A single set of design templates to be created and rolled out to partners.
2. A removal of the existing templates which currently serve the site at http://rsr.akvo.org.
3. Opportunities to customise Akvo Pages further to include or exclude the additional functionality being developed on a per partner basis.

### Plan of Action
In order to tackle all of these issues, cover the user stories and solve the associated problems, the following items will be individually itemised and specified for design and development, in the following loose order.

1. Header and Footer
2. Registration Process
3. MyRSR
4. Postgres
5. Listing Pages (slice data)
6. Searching and Filtering
7. Project, Update and Organisation Pages
8. Comments
9. Maps
10. Notifications
11. Tests
12. Followings
