To clarify what we mean by terms, here is a list of Akvo FLOW domain language:

1. **data** is collected on **data points**. 
2. data is collected with **forms**
3. A form consists of **question groups**
4. A question group consists of **questions**
5. A filled form is called a **filled form**
6. A filled form consists of **answers**
7. Forms are collected in **surveys**.
8. Surveys can have one or more forms.
9. There are two types of surveys: **normal surveys** and **monitoring surveys**.
12. A normal survey only has a single form and cannot update existing points, a monitoring survey can have multiple forms and can update existing data. 
9. Surveys are collected in **survey folders**, which can be hierarchical - folders can contain folders
10. A survey has a **registration form**, which is the form that creates new data points. In the case of a monitoring survey, the users chooses which form is used. A survey only has a single form which acts as registration form.
11. A data point has an **identifier**, which uniquely identifies the data point
12. A data point has a **display name**, which is compiled from answers to questions in the registration form
