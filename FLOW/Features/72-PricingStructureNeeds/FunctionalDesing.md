# Functional Design document DRAFT

Pricing structure needs
-------------

### Overview
The aim is to introduce changes to the system that can help implement the new FLOW pricing structure. 

### Marketing description
Relevant for Phase B:
A marketing description of this feature.

### Initial features

We will work on these changes in two phases:

**Phase A: Manually calculating the current use via a script**

- *Creating a script.* We will run the script manually over a set period of time to monitor the numbers of used devices and forms in order to keep the partners informed and for billing purposes. We need to create a script, which will be able to read and show:
  - how many devices are connected to a partner instance 
  - how many forms were submitted within a partner instance
  - when the device and forms were used, because we can only count the ones that happened in the time span of the running pricing plan 
  - which devices are active and which not

- *Excluded from the count.* Because many times Akvo tools are used for partner instances and during trainings devices and forms are used as well, there are a few rules which we apply when counting the usages per partner. 
- Count only devices and forms connected to the instance of the partner. Because trainings are conducted on the training instance, these activities are not part of the pricing plan count. 
- Count a device only if it has more that 5 submissions. This number will be determined by the insight gained from the script. We will apply this rule for the cases when a partner only tries out a device a few times, for example during trainings on a trial survey.  
- Akvo tools excluded (For example: if used in connection to a partner instance for training or testing purposes)

**Phase B: Unified log consumer and updated UI with a Settings tab** 
(This phase will be worked on once the Unified log is running on all instances.) 

- *UI Settings tab.* - sub-tabs: Pricing, Time zone
  - Sub-tab: Pricing 
    - Only admin users will have rights to see this sub-tab
    - See the current pricing plan, total number of devices and forms
    - See the current amount of devices and forms and how many they have left
      - The information on the number of used devices and forms will be updated automatically from the Unified log 
  - An ‘upgrade pricing plan’ button will be available, or an information to contact Akvo to upgrade their current plan

- *Unified log consumer.* 
We need to add the Android ID to the meta information related to collected data.
  - Create a consumer for information on use of devices and on the use of forms, to read the events in the Unified log and via an API communicate to the dashboard. 

**Steps to take:**
1. create script
2. add Android ID to the collected data

### Non goals
What this feature will not contain

### Scenarios
A number of scenarios for how this feature will benefit users

### Technical notes
Any technical issues or questions that are already known

### Open issues
Any known issues that need to be decided

### Details
Details, details, details.

Approved and ready for Visual Design by:

