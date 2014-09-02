Here we will outline the work that needs to be done on a data level to ensure that we capture all of the IATI standard into the data set of RSR.

Some information will be set at the global level and not made available for organisations to edit directly or per project/activity.

**Global**
*Global Information will be labelled with Global*

We will be placing some default information into the Organisation entry for partners to set at a portfolio-wide level. It should be possible for these values to be overwritten at a project/activity level if needed.

**Default**
*Default information will be labelled with Default*

Some information will be incorporated within the RSR standard data set and made available within the project admin record as this exists now.

**Standard**
*Data to be included within the RSR dataset as standard will be labelled with Standard*


Other information will be grouped together to form an additional IATI set of information that can be provided to extend the RSR data by partners to make their IATI data richer.

**IATI**
*Information to be included within the additional IATI set will be labelled with IATI*


### IATI Activity

**Global**
- version

**Default**
- xml:lang
- default-currency

**Standard**
- generated-datetime
- linked-data-default
- last-updated-datetime
- linked-data-uri
- title
- description
	- type
- activity-status
	- code
- activity-scope
	- code
- sector
	- code
	- vocabulary **Global**
	- percentage

**IATI**
- hierarchy
- conditions
	- attached
	- condition
	- type

### IATI Identifier

**Standard**
- iati-identifier
- other-identifier
	- owner-ref
	- owner-name

### Activity Dates

**Standard**
- activity-date
	- type
	- iso-date

### Organisations

**Standard**
- reporting-org
	- ref
	- type
- participating-org
	- ref
	- type
	- role

**IATI**	
	- secondary-reporter


### Geography

**Standard**
- recipient-country
	- code
	- percentage
- recipient-region
	- code
	- vocabulary **Global**
	- percentage
- location
	- ref
	- percentage
	- location-id
		- code
		- vocabulary **Global**
	- name
	- description
	- activity-description
	- administrative
		- code
		- vocabulary **Global**
		- level
		- country
		- adm1
		- adm2
	- point
		- srsname **Global**
		- pos
	- exactness
		- code
	- location-reach
		- code
	- location-class
		- code
	- feature-designation
		- code
	- coordinates
		- latitude
		- logitude
		- precision
	- location-type
		- code

**Global**	
	- gazetteer-entry
		- gazetteer-ref
	

### Classifications

**Standard**
- policy-marker
	- code
	- vocabulary **Global**
	- significance

**Default**
- collaboration-type
	- code
- default-flow-type
	- code
- default-finance-type
	- code
- default-aid-type
	- code
- default-aid-status
	- code


### Budgets

**Standard**
- country-budget-items
	- vocabulary **Global**
	- budget-item
		- code
		- percentage
		- description
			- type
- budget
	- type
	- period-start
		- iso-date
	- period-end
		- iso-date
	- value
		- currency **Default**
		- value-date

**IATI**
- planned-disbursement
	- updated
	- period-start
		- iso-date
	- period-end
		- iso-date
	- value
		- currency **Default**
		- value-date
- capital-spend
	- percentage

### Transaction

**Standard**
- transaction
	- ref
	- value
		- currency **Default**
		- value-date
	- description
	- transaction-type
		- code
	- provider-org
		- ref
		- provider-activity-id
	- receiver-org
		- ref
		- receiver-activity-id
	- transaction-date
		- iso-date
**Default**
	- flow-type
		- code
	- finance-type
		- code
	- aid-type
		- code
	- tied-status
		- code
	- disbursement-channel
		- code

### Result

**Standard**
- result
	- type
	- aggregation-status
	- title
	- description
		- type
	- indicator
		- measure
		- ascending
		- title
		- description
		- baseline
			- comment
		- period
			- period-start
				- iso-date
			- period-end
				- iso-date
			- target
				- value
				- comment
			- actual
				- value
				- comment

### Related Data

**IATI**
- related-activity
	- ref

### Related Documents

**Standard**
- document-link
	- url
	- format
	- title
	- category
		- code
- activity-website

### CRS & FSS

**IATI**
- crs-add
	- aidtype-flag
		- code
		- significance
	- loan-terms
		- rate-1
		- rate2
		- repayment-type
			- code
		- repayment-plan
			- code
		- commitment-date
			- iso-date
		- repayment-first-date
			- iso-date
		- repayment-final-date
			- iso-date
		- loan-status
			- year
			- currency **Default**
			- value-date
			- interest-received
			- principal-outstanding
			- principle-arrears
			- interest-arrears
- fss
	- extraction-date
	- priority
	- phaseout-year
	- forecast
		- year
		- currency **Default**
		- value-date

### Contact Info

**Default**
- contact-info
	- type
	- organisation
	- person-name
	- job-title
	- telephone
	- email
	- mailing-address
	- website
	