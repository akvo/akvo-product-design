# Roles and Permissions - Technical Design

### Overview
Roles and permissions define the sets of actions that users in the dashboard are either permitted or prevented from executing, in other words, they define a user's authorisation level.

First, to clarify the meaning of the two main terms:

Permission - this refers to the authorisation (or not) of a user to perform an action on a particular object in the system, e.g., a *user 'X'* is *allowed to edit* a *survey*, a *user 'Y'* is *not allowed to download* a *data report*.

Role - a role is a predefined set of permissions that can be assigned to a user. Assigning a user a particular role is equivalent to granting them the set of permissions defined under that role. Any permissions not defined under a role are by default considered as *not allowed* under that role.


### Minimum Viable Product
The minimum viable implementation should at least fulfil the following requirements:

* Enable management of roles, i.e., define a role and the permissions associated to that role.
* Enable the assignment of roles to a user
* Process each request/action to verify the current user's authorisation level

### Final Product
In addition to the above, the final product should enable:

* Showing/Hiding of specific tabs or buttons for actions that a user is not allowed to perform
* Enable specification of permissions on a fine grained level to a user e.g. publish within a specific project within the system

### Technologies and Implementation

* Backend API specification
* System-wide list of permissions

### Estimates
Details of any timing estimates for how long this feature is expected to take, including end date and/or number of people working on this.

### Testing
