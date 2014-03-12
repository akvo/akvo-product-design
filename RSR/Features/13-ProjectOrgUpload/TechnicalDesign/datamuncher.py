# Ideas about implementing the API loader

from akvo.rsr.models import Project


class DataMuncher():
    def __init__(self, data):
        self.data = data
        self.fields = {}

    def get_data_for_fields(self):
        """ Loop over all fields in the model and get the corresponding data (if any) from the XML
        """
        for field in self.model._meta.fields:
            # check if there's a custom method implemented for this field
            try:
                field_method = getattr(self, "get_{}".format(field.name))
                field_method()
            except:
                self.get_data(field.name)

    def get_data(self):
        """ Must be implemented in subclasses
        """
        raise NotImplementedError


class XMLModelDataMuncher(DataMuncher):
    def from_etree(self, xpath):
        """ use lxml.etree's xpath functionality to get data from the etree
        """

    def get_data(self, field_name):
        """ Default method for fetching data from the XML. Grabs the data in the XML tag with the same name as the field
        """
        return self.from_etree(field_name)


class ProjectXMLDataMuncher(XMLModelDataMuncher):
    """
    """
    def __init__(self, data):
        super(ProjectXMLDataMuncher, self).__init__(data)
        self.model = Project

    def get_currency(self):
        """ Get the currency from <iati-activity default-currency="">
        """
        return self.from_etree("@default_currency")

    def get_subtitle(self):
        """ Get the subtitle from <iati-activity><description type="1" akvo:type="4">text</description>
        """
        return self.from_etree("description[@type='1' and @akvo:type='4']")


class CordaidProjectXMLDataMuncher(ProjectXMLDataMuncher):
    """ Cordaid special cases
    """
    def get_category(self):
        """ The category for Cordaid projects is derived from the Business unit that manages the project.
        Found in <iati-activity akvo:business-unit-id="">
        """
        return self.from_etree("@akvo:business-unit-id")

