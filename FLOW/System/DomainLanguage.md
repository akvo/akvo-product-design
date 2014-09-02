To clarify what we mean by terms, here is a list of Akvo FLOW domain language:

1. **data** is collected on **data points**. 
2. data is collected with **forms**
3. A form consists of **question groups**
4. A question group consists of **questions**
5. A filled form is called a **filled form**
6. A filled form consists of **answers**
7. Forms are collected in **projects**.
8. Projects can have one or more forms.
9. There are two types of projects: **survey projects** and **monitoring projects**.
12. A survey project only has a single form and cannot update existing points, a monitoring project can have multiple forms and can update existing data. 
9. projects are collected in **project groups**, which can be hierarchical - project groups can contain project groups
10. A project has a **registration form**, which is the form that creates new data points. In the case of a monitoring project, the users chooses which form is used, a survey project only has a single form which acts as registration form
11. A data point has an **identifier**, which uniquely identifies the data point
12. A data point has a **display name**, which is compiled from answers to questions in the registration form
