# Roles and Permissions - Backend API Specification

The API specification for roles and permissions management:


### Definition / Management of Roles:

`POST /users/roles` Create a new role definition containing a role name and a set of permissions.

`GET /users/roles/all` retrieve the list of roles defined

`GET /users/roles/{roleId}` retrieve details of a specific role defined in the system. Sample of retrieved roles below:

`PUT /users/roles/{roleId}` Update the set of permissions associated with a role in the system with those passed in the payload of this call.

`DELETE /users/roles/{roleId}` delete role definition from the system. A role can only be deleted if *not* assigned to any user.

### Assignment of Roles to Users:

TBD