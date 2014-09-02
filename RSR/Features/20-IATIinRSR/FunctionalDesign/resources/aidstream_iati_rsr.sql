#
# Encoding: Unicode (UTF-8)
#


CREATE TABLE `iati_activities` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@generated_datetime` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `@version` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `unqid` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) NOT NULL,
  `account_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=335 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_activity` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@xml_lang` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `@default_currency` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `@hierarchy` int(3) NOT NULL,
  `@last_updated_datetime` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `@linked_data_uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activities_id` int(10) NOT NULL,
  `status_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1233 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_activity_date` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@iso_date` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `activity_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1805 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_activity_scope` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `activity_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_activity_status` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `activity_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1015 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_activity_website` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `activity_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=237 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_aid_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `activity_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_budget` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activity_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1295 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_budget/period_end` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@iso_date` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `budget_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1295 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_budget/period_start` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@iso_date` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `budget_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1295 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_budget/value` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@value_date` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `@currency` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `budget_id` int(10) NOT NULL,
  `akvo:type` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1295 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_capital_spend` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@percentage` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activity_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_collaboration_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `activity_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=400 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_conditions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@attached` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `activity_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_conditions/condition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `@type` int(11) DEFAULT NULL,
  `@xml_lang` int(11) DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `conditions_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_contact_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `activity_id` int(10) NOT NULL,
  `@type` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `@xml_lang` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=587 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_contact_info/email` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `contact_info_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=547 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_contact_info/job_title` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `@xml_lang` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `contact_info_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_contact_info/mailing_address` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `contact_info_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=468 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_contact_info/organisation` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `contact_info_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=554 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_contact_info/person_name` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `contact_info_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=428 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_contact_info/telephone` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `contact_info_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=385 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_contact_info/website` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `contact_info_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_country_budget_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `@vocabulary` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `activity_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_country_budget_items/budget_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `@code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `@percentage` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `country_budget_items_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_country_budget_items/budget_item/description` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `budget_item_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_default_aid_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@code` int(11) NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@xml_lang` int(11) DEFAULT NULL,
  `activity_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=784 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_default_finance_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `activity_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=388 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_default_flow_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `activity_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=748 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_default_tied_status` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `activity_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=375 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_description` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `activity_id` int(10) NOT NULL,
  `akvo:type` int(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1132 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_document_link` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@url` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `@format` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activity_id` int(10) NOT NULL,
  `akvo:photo-id` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `akvo:photo-credit` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `akvo:caption` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=898 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_document_link/category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@code` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `document_link_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=968 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_document_link/language` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `document_link_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=594 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_document_link/title` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `document_link_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=971 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_gazetteer_entry` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@ref` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `location_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_identifier` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `activity_identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `activity_id` int(10) NOT NULL,
  `akvo:internal-project-id` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1233 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_indicator/baseline` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@year` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `@value` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `indicator_id` int(10) NOT NULL,
  `akvo:subject` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `akvo:effect` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `akvo:category` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_indicator/actual` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@year` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `@value` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `indicator_id` int(10) NOT NULL,
  `akvo:subject` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `akvo:effect` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `akvo:category` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_indicator/description` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `indicator_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_indicator/target` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@year` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `@value` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `indicator_id` int(10) NOT NULL,
  `akvo:subject` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `akvo:effect` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `akvo:category` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_indicator/title` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `indicator_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_legacy_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `@name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `@value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `@iati_equivalent` mediumtext COLLATE utf8_unicode_ci,
  `activity_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_location` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@percentage` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `activity_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_location/administrative` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@country` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@adm1` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@adm2` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `location_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_location/coordinates` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@latitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `@longitude` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `@precision` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_location/description` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `location_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_location/gazetteer_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `@gazetteer_ref` int(11) NOT NULL,
  `text` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `location_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_location/location_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@code` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `location_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_location/name` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `location_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=169 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_organisation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `@xml_lang` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@last_updated_datetime` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `@default_currency` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_organisation/document_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `@url` mediumtext COLLATE utf8_unicode_ci,
  `@format` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organisation_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_organisation/document_link/category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `@code` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@xml_lang` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `document_link_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_organisation/document_link/language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `document_link_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_organisation/document_link/title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `@xml_lang` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `document_link_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_organisation/identifier` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `organisation_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_organisation/name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `@xml_lang` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organisation_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_organisation/recipient_country_budget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organisation_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_organisation/recipient_country_budget/period_end` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `@iso_date` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `recipient_country_budget_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_organisation/recipient_country_budget/period_start` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `@iso_date` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `recipient_country_budget_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_organisation/recipient_country_budget/recipient_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `@code` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@xml_lang` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `recipient_country_budget_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_organisation/recipient_country_budget/value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `@currency` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@value_date` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `recipient_country_budget_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_organisation/recipient_org_budget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organisation_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_organisation/recipient_org_budget/period_end` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `@iso_date` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `recipient_org_budget_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_organisation/recipient_org_budget/period_start` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `@iso_date` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `recipient_org_budget_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_organisation/recipient_org_budget/value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `@currency` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@value_date` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `recipient_org_budget_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_organisation/recipient_org_budget/recipient_org` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `@ref` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@xml_lang` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `recipient_org_budget_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_organisation/reporting_org` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@ref` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `@type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `organisation_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_organisation/total_budget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organisation_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_organisation/total_budget/period_start` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `@iso_date` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `total_budget_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_organisation/total_budget/period_end` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `@iso_date` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `total_budget_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_other_identifier` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@owner_ref` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `@owner_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `activity_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_organisation/total_budget/value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `@currency` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@value_date` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `total_budget_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_participating_org` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@role` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `@type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@ref` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `akvo:internal-org-ref` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activity_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2848 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_planned_disbursement` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@updated` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activity_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_planned_disbursement/period_end` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@iso_date` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `planned_disbursement_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_planned_disbursement/period_start` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@iso_date` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `planned_disbursement_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_planned_disbursement/value` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@value_date` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `@currency` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `planned_disbursement_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_policy_marker` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@significance` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@vocabulary` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `activity_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_recipient_country` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@code` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@percentage` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `activity_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1130 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_recipient_region` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@code` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@vocabulary` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `@percentage` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `activity_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=465 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_related_activity` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `@ref` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `activity_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_reporting_org` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@ref` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `@type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `activity_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1233 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_result` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `@aggregation_status` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activity_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_result/description` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `result_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_result/indicator` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@measure` int(11) NOT NULL,
  `@ascending` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'true',
  `result_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_result/indicator/actual` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@year` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `@value` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `indicator_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_result/indicator/baseline` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@year` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `@value` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `indicator_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_result/indicator/baseline/comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `baseline_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_result/indicator/description` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `@xml_lang` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `indicator_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_result/indicator/period` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `indicator_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_result/indicator/period/actual` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@value` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `period_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_result/indicator/period/actual/comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `actual_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_result/indicator/period/period-end` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `@iso_date` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `period_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_result/indicator/period/period-start` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `@iso_date` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `period_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_result/indicator/period/target` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@value` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `period_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_result/indicator/period/target/comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `target_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_result/indicator/target` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@year` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `@value` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `indicator_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_result/indicator/title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `@xml_lang` int(11) DEFAULT NULL,
  `indicator_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_result/title` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `result_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_sector` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@vocabulary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@percentage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `activity_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1408 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_title` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activity_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1128 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_transaction` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@ref` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activity_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7816 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_transaction/aid_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@code` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `transaction_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2690 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_transaction/description` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `transaction_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4528 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_transaction/disbursement_channel` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@code` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `@xml_lang` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1830 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_transaction/distribution_channel` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@code` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `transaction_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_transaction/finance_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `@xml_lang` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2007 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_transaction/flow_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@code` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `transaction_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2807 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_transaction/provider_org` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@ref` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@provider_activity_id` mediumtext COLLATE utf8_unicode_ci,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `transaction_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5490 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_transaction/receiver_org` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@ref` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@receiver_activity_id` mediumtext COLLATE utf8_unicode_ci,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `transaction_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5685 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_transaction/tied_status` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@code` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `@xml_lang` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `transaction_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1762 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_transaction/transaction_date` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@iso_date` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `transaction_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7499 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_transaction/transaction_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@code` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `transaction_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7847 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `iati_transaction/value` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `@currency` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `@value_date` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `transaction_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7848 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




