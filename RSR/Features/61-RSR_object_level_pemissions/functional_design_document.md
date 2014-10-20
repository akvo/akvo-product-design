# Functional Design document

RSR object level permissions
-------------

### Documents
Links to relevant issues

### Overview
RSR needs a granular permissions system where access rights to individual objects can be assigned to an individual user or a group of users. Curently this works, but only in the admin, and there it is based on a custom set of rules that are brittle and require code changes to effect permissions changes.

#### General note
Object level permissions in the Django/RSR context means controlling the access to individual model objects. The data of one model object corresponds to *one row of one database table*. This is also called row-level permissions.

### Marketing description
To be able to provide a full set of administrative features in MyRSR and to provide control over the data input via the API RSR needs a full blown object level permissions system.

### Initial features
PRovide access permissions using the standard Django pemissions: Add, Change and Delete, but on an individual object level rather than on a model basis as is the Django default. (This is currently partly implemented in the admin albeit the way this is achieved is inflexible and insecure.)

PRovide query sets of objects based on a set of permissions. In the admin and in MyRSR a user will want to see lists of objects he/she has access to. Those lists are geneated based on the permissions of the user and any groups the user belongs to.

### Non goals
To differentiate permissions on a sub-object level (meaning individual permissions for different DB columns of a table) is not a goal.

### Scenarios

* Anne approves a new user of RSR. When a user signs up with RSR and selects Water World Foundation as organisation Anne determines if the user is eligible and if approved assings the level of access, probably by assiging the user to one or more permissions groups.

* Sandra creates a group to which she assigns editing rights of all projects Water World Foundation currently runs in Pakistan. She then assigns a number of her colleagues in WWF to the group.

* Tim is curently developing a custom web site allowing Water World Foundation projects to be edited by WWF staff (He's not happy with MyRSR :wink:). The RSR API needs to be able to let Tim have full read/write access to WWF's projects and associated data but to no other data.

### Technical notes
Django provides only model level permissions out of the box, meaning access is controlled table by table. You either have access to all objects of a model (all rows in the corresponding DB table) or you have no access. Django includes three kinds of access: Add, which lets you add new objects (DB rows), Change which lets you edit existing objects and Delete, which lets you delete objects.

Currently we implement a very limited kind of row level permissions for our partner users in the admin. This is accomplished by limiting access to only certain rows in some tables and any rows associated with those in the limited tables via foreign keys. This kind of permissions is wholly inadequate for the API where all models have to be covered by explicit permissions. Currenttly in RSR access to a model through the API is an all-or-nothing affair. If you have access to e.g. the project API endpoint any permissions you have apply to all projects.

We also need a flexible system where users can assign permissions to an object or a group of objects without programming. Today this is largely not possible. The current admin implementation is also insecure.

To solve the issues above we need a system that can keep track of permissions for users and groups of users on an individual object basis. The system must allow the creation and maintenance of permissions that allow users or groups of users individual levels of access to arbitrary groups of objects. Ideally the system would also provide helpers that can generate lists of objects from certain criteria, e.g. all projects that a certain user has the permission to edit.


### Open issues
In some preliminary research I have looked at two libraries that provide object level permissions: [django-rules](https://github.com/dfunckt/django-rules) and [django-guardian](https://github.com/lukaszb/django-guardian). 

django-rules is a very elegant library that lets you create "rules", by creating functions, called predicates, that return either True of False and map one or more of those predicates to a name to create a rule. New rules can also be created by combining existing rules. This makes for a very flexible system of building rules. Rules in themselves are stand-alone, but can be used in Django to create the permissions that are used as the authorization backend. I really like the conciseness of django-rules, however this also limits its scope and the library is somewhat immature.

django-guardian is a larger package. This is both good and bad. To grok it in full will take longer than for django-rules. It may also require more "re-wiring" of the existing RSR codebase to integrate. OTOH it is a much more complete package. For example there is a drop-in replacement for admin.ModelAdmin to get object level permissions in the admin. There are also some awesome helper functions that return querysets with objects based on a set of permissions for a user or a group. django-guardian seems to be a package that provides most if not all of the functionality RSR needs.

Other possible candidates that I haven't looked at closely are [django-authority](https://github.com/jezdez/django-authority) and [django-permission](https://github.com/lambdalisue/django-permission).

### Details
Integration with visual design is of course needed eventually, but this feature is "internal machinery" at its core.

More in-depth scenarios and outlines of solutions using a chosen package (or custom code) might be a way to determine the way forward.
