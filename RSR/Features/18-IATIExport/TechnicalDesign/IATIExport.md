# Technical Design
*IATI Export*

## References
- [Functional Design](https://github.com/akvo/akvo-product-design/blob/master/RSR/Features/18-IATIExport/FunctionalDesign/IATIExport.md)
- [#18@product-design](https://github.com/akvo/akvo-product-design/issues/18)
- [#334@rsr](https://github.com/akvo/akvo-rsr/issues/334)

## Overview
Based on the RSR Database we can extract IATI information to be published to a IATI XML file. We will have an internal Python script that generates this IATI file based on a selected organisation. It is possible to select the types of projects of this organisation that will be included in the IATI file, e.g. any combination of support, funding, field and/or sponsor partner of a project. Additionally, it will be possible to filter out individual projects.

The XML files will be locally stored. Depending on the need of public availability of these files, a decision should be taken regarding a public folder structure.

## Scenarios

### 1 - Project selection

Project selection is based on 3 factors: organisation, partner types and ignored projects. All published projects are taken into consideration.

The Python snippet for adding all projects to a list of projects;

```python
active_projects = organisation.published_projects()
project_list = []
for project in active_projects:
    for partner_type in partner_types:
        if partner_type[0] and (organisation in getattr(project, partner_type[1])()):
            project_list.append(project)
            break
```

After this, all projects that have to be ignored will be filtered out of this project list.

### 2 - Mandatory fields

Before a project is processed, we first check whether the project has data for all mandatory information. Otherwise, a MandatoryError is raised for that particular project and the project is not added to the IATI file. In order to do this, we retrieve all data needed first;

```python
partnerships = Partnership.objects.filter(organisation_id=org_id, project_id=project.pk)
goals = Goal.objects.filter(project_id=project.pk)
try:
    location = project.primary_location
    country = Country.objects.get(id=location.country_id)
except:
    raise MandatoryError(project.title, project.pk, "location")
budgets = BudgetItem.objects.filter(project_id=project.pk)
participating_orgs = project.all_partners()
links = Link.objects.filter(project_id=project.pk)
benchmarks = Benchmark.objects.filter(project_id=project.pk).filter(value__gt=0)
benchmark_names = Benchmarkname.objects.all()
categories = Category.objects.all()
```

And then check all mandatory fields:

```python
check_mandatory_fields(project, {"title": project.title,
                                 "subtitle": project.subtitle,
                                 "status": project.status,
                                 "project plan summary": project.project_plan_summary,
                                 "sustainability": project.sustainability,
                                 "goals overview": project.goals_overview,
                                 "status": project.status,
                                 "photo": project.current_image,
                                 "latitude": location.latitude,
                                 "longitude": location.longitude,
                                 "country": location.country_id})

class MandatoryError(Exception):
    def __init__(self, title, project_id, node):
        self.msg = "Error on project '%s' (id: %s); Mandatory information on '%s' is missing..." % \
                   (title, project_id, node)

def check_mandatory_fields(project, fields):
    for field_key in fields:
        if fields[field_key] == "" or fields[field_key] is None:
            raise MandatoryError(project.title, project.pk, field_key)
```

### 3 - IATI Schema

IATI has a schema which is published [here](http://iatistandard.org/downloads/iati-activities-schema.xsd). Instead of using this XSD file directly, the XSD is converted to Python classes using [GenerateDS.py](http://www.rexx.com/~dkuhlman/generateDS.html), resulting in a *iati-schema.py* file containing classes for all IATI nodes and functions to set the related information and export the IATI file. By using this schema file the IATI XML is build up as follows:

```python
import akvo.rsr.iati_schema as schema

activity = schema.iati_activity()
reporting_org = schema.reporting_org()

reporting_org.set_valueOf_(organisation.long_name)
activity.add_reporting_org(reporting_org)
```

### 4 - Codelists

Since IATI uses standard codelists which can be extracted from a standard CSV file, a script will be used to gather needed codelists and store these in a different Python file. The *iati_codelist_generator.py* script extracts and generates the codelists and stores it in *iati_code_lists.py*.

The following codelists have been generated:

- OrganisationType
- FinanceType
- ActivityStatus
- OrganisationRole
- Sector

### 5 - UTF-8 encoding

In order to be sure all XML files are valid, an UTF-8 encoding is added for all information from the RSR Database. This is to prevent characters such as <, >, ' or " to create invalid formatting for instance. The following function is used:

```python
def xml_enc(string):
    return cgi.escape(string, True).encode('utf-8')
```
