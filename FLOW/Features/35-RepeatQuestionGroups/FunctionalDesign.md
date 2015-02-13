# Repeat Question Groups
----------------------

### Documents
https://github.com/akvo/akvo-product-design/issues/35

### Overview
The aim is to introduce repeated question groups. Often, a number of questions need to be asked multiple times, for example if you want to ask a number of questions to each member of a household. This functionality lets the user specify that a question group will be repeated a number of times.

### Marketing description
Many times, when creating a new form in FLOW out of an existing paper-based questionnaire, the *grid question* problem arises. A grid question allows data collectors to capture the same type of information over multiple, predefined options. For example, we could encounter a grid question whose rows display product names (i.e. carrots, cauliflower), and whose columns ask specific questions about each product (i.e. harvested amount?, quantity sold?, etc). A relevant challenge is to translate this grids into FLOW questions, which at the moment is normally accomplished by manually creating all the different combinations and repeating the questions multiple times. This can easily get too cumbersome.

With the introduction of Repeat Question Groups, we allow the user to create a repeated question structure, determining which questions are repeated, and dynamically building the appropriate set of questions in the app. The amount of times a particular question is repeated can be based on a static list of items, on a previous response in the form, or it could simply be decided by the user, while responding the questionnaire. This flexibility lets the user decide how to apply this feature in a wide range of scenarios.

### Initial features
The functionality should include:
* A way to mark a question group as 'repeated question group'
* A way to determine the number of repetitions, based on:
    - A previous answer to a number question: 'how many members does your household have?'
    - A previous answer to an option question (multiple values). A new repetition will be created for each checked value.
    - A static list of items (defined in the dashboard). This works similar to the option question, but all the values are defined beforehand.
    - Other context. Alternatively, an enumerator can decide how many repetitions are needed, depending on the context. The enumerator will be prompted to add another set after he/she finishes the last question of the group.
* A way to dynamically build question titles, based on a fixed text pattern and a dynamic item.

### Scenarios
#### Scenario 1
A form is created to collect data about different products. For each product, we need to capture the same data.

On the dashboard the project manager will decide how the repetitions are handled. In this case, an option question with multiple values will be added:
* Carrots
* Cauliflower
* Potato
* Tomatoes
* Beans

Next, the repeated questions group will be defined. This group will set up its repetitions dependency based on the previously defined question's answer. For example, if the enumerator checks `carrots` and `beans`, only two repetitions will be displayed, one for each product. If the question group has the questions *amount of [X] harvested* and *Amount of [X] sold*, the app will display 2 blocks, with the following structure:
* Carrots
    - *Amount of carrots harvested*
    - *Amount of carrots sold*
* Beans
    - *Amount of beans harvested*
    - *Amount of beans sold*

#### Scenario 2
The project manager can define a static list of items (for example the same list shown in the previous example). On the repeated question group settings, the repetitions dependency will be set to be based on the static list, therefore a block of questions will be shown for each item.

#### Scenario 3
If the type/name of products is unknown, the amount of repetitions can be chosen by the enumerator. This way, each time a repeated question group is answered, the user will be prompted to add another set.

### Technical notes
The first iteration will consist of a JSON-encoded string, containing the data for all the questions in the group. The JSON value will include an attribute in each question block, with the item name the block refers to. More technical details are available at https://github.com/akvo/akvo-product-design/blob/master/FLOW/Features/35-RepeatQuestionGroups/TechnicalDesign.md


Approved and ready for Visual Design by: 
