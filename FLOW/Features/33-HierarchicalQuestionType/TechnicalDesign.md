# Cascading questions

### Useful links
http://vadimtropashko.files.wordpress.com/2011/07/ch5.pdf

### Overview
We implement a cascade structure, which will populate dropdowns with values. For the technical design, we need to think about:

1. a way to create cascade structures (UI, upload of excel/csv)
2. a way to store cascade structures in the backend
3. a way to transfer cascade structures from the backend to the device
4. a way to store cascade structures in the device
5. a way to render cascade structures in the device
6. a way to return the data to the backend
7. a way to store the data in the backend
8. a way to create reports from this data


#### a way to create cascade structures (UI, upload of excel/csv)
The Web UI could use a structure similar to the Finder window of Mac, in which nested folders can be created.

The uploaded data should have the form such as:
* Netherlands, Utrecht, Groningen
* Netherlands, Utrecht, Overveen
* Netherlands, Utrecht, Harlingen
* Netherlands, Zeeland, Overbeeke
* Netherlands, Zeeland, Gorinchem
* Netherlands, Zeeland, Haastrecht

We should provide a resource containing all the countries of the world with their cascade structures. This can be produced from the GAUL or GADM data.

#### a way to store cascade structures in the backend
This could be done either through in a single JSON blob. However, we might run into trouble with limits, as a cascade structure could potentially be very large.

Another option is to keep them in a separate kind, and store them one by one

#### a way to transfer cascade structures from the backend to the device
The simplest option will probably be to use a materialised path:

employee table (emp_table):
ENAME	PATH

* KING 	1
* JONES 	1.1
* SCOTT 	1.1.1
* ADAMS 	1.1.1.1
* FORD 	1.1.2
* SMITH 	1.1.2.1
* BLAKE 	1.2
* ALLEN 	1.2.1
* WARD 	1.2.2
* CLARK 	1.3
* MILLER 	1.3.1

which could be serialised in JSON and then deflated:

{{KING,1},{JONES,1.1},{SCOTT, 1.1.1}, ...}

#### a way to store cascade structures in the device
Probably as a separate kind in the sqlite database?

#### a way to render cascade structures in the device
Finding the subordinates of JONES in the example above in SQL:

select e1.ename from emp_table e1, emp_table e2
where e1.path like e2.path || '%'
and e2.name = 'JONES'

So we can quickly find the children nodes of a particular node.

#### a way to return the data to the backend
Can be done in a piped string: "netherlands|zeeland|groningen"

#### a way to store the data in the backend
This could be stored as a single packed string, which was received from the device.

#### a way to create reports from this data
Both exported reports and cartoDB datastore will need one column for each level of the cascade. This could be done through some numbering system: "location-0", "location-1", "location-2", etc. We will need a symbol that is not used in the uniqueIDs of the questions.
