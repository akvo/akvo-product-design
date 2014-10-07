# RSR object level permissions


### Overview
RSR currenly uses a poor-mans object-level permissions system in the admin. It is based on a number of custom rules that are implemented for the various models where it's needed and is in bad need of replacing.

We need permissions in multiple places: 

* The admin works with the current system, but most changes to permissions requires editing the code where configuration would be enough given "proper" permissions.
* RSRv3 looks to include an expanded MyRSR section where users can administer quite a lot of stuff. To be able to manage this permissions on an object level are necessary. 
* The "new" API is in a similar situation. Currently access to a model in the API is an all-or-nothing affair, you can either access all objects or none. 

### Links to documents
[Functional design document](functional_design_document.md)