#
# Encoding: Unicode (UTF-8)
#


CREATE TABLE `rsr_benchmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name_id` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rsr_benchmark_499df97c` (`project_id`),
  KEY `rsr_benchmark_42dc49bc` (`category_id`),
  KEY `rsr_benchmark_632e075f` (`name_id`)
) ENGINE=MyISAM AUTO_INCREMENT=69949 DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_benchmarkname` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=450 DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_budgetitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `label_id` int(11) NOT NULL DEFAULT '0',
  `other_extra` varchar(20) DEFAULT NULL,
  `type` varchar(128) DEFAULT NULL,
  `period_start` date DEFAULT NULL,
  `period_start_text` varchar(128) DEFAULT NULL,
  `period_end` date DEFAULT NULL,
  `period_end_text` varchar(128) DEFAULT NULL,
  `value_date` date DEFAULT NULL,
  `currency` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rsr_budgetitem_project_id_1e985845_uniq` (`project_id`,`label_id`),
  KEY `rsr_budgetitem_499df97c` (`project_id`),
  KEY `rsr_budgetitem_63868627` (`label_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7193 DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_budgetitemlabel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `label` (`label`),
  KEY `rsr_budgetitemlabel_455cf140` (`label`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rsr_category_52094d6e` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_category_benchmarknames` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `benchmarkname_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_id` (`category_id`,`benchmarkname_id`),
  KEY `rsr_category_benchmarknames_42dc49bc` (`category_id`),
  KEY `rsr_category_benchmarknames_380bd071` (`benchmarkname_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3467 DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_category_focus_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `focusarea_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_id` (`category_id`,`focusarea_id`),
  KEY `rsr_category_focus_area_42dc49bc` (`category_id`),
  KEY `rsr_category_focus_area_4654c856` (`focusarea_id`)
) ENGINE=MyISAM AUTO_INCREMENT=263 DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `iso_code` varchar(2) NOT NULL,
  `continent` varchar(20) NOT NULL,
  `continent_code` varchar(2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `iso_code` (`iso_code`),
  KEY `rsr_country_5d41016a` (`continent`),
  KEY `rsr_country_4cc7b05e` (`iso_code`),
  KEY `rsr_country_548fab9d` (`continent_code`)
) ENGINE=MyISAM AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_country_budget` (
  `id` int(11) DEFAULT NULL,
  `vocabulary` varchar(128) DEFAULT NULL,
  `code` varchar(128) DEFAULT NULL,
  `percentage` decimal(2,0) DEFAULT NULL,
  `type` varchar(128) DEFAULT NULL,
  `text` varchar(128) DEFAULT NULL,
  `project_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_focusarea` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `link_to` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rsr_focusarea_56ae2a2a` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_goal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `text` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rsr_goal_499df97c` (`project_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10333 DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_indicator` (
  `id` int(11) DEFAULT NULL,
  `result_id` int(11) DEFAULT '0',
  `title` varchar(128) DEFAULT NULL,
  `measure` varchar(128) DEFAULT NULL,
  `ascending` tinyint(1) DEFAULT '0',
  `type` varchar(128) DEFAULT NULL,
  `year` varchar(128) DEFAULT NULL,
  `value` varchar(128) DEFAULT NULL,
  `text` varchar(128) DEFAULT NULL,
  `comment` varchar(128) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `target` varchar(128) DEFAULT NULL,
  `target_value` varchar(128) DEFAULT NULL,
  `actual` varchar(128) DEFAULT NULL,
  `actual_value` varchar(128) DEFAULT NULL,
  `baseline` varchar(128) DEFAULT NULL,
  `baseline_value` varchar(128) DEFAULT NULL,
  `period_start` date DEFAULT NULL,
  `period_end` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_internalorganisationid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recording_org_id` int(11) NOT NULL,
  `referenced_org_id` int(11) NOT NULL,
  `identifier` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rsr_internalorganisationid_recording_org_id_6a7aec8b_uniq` (`recording_org_id`,`referenced_org_id`),
  KEY `rsr_internalorganisationid_785d5e0d` (`recording_org_id`),
  KEY `rsr_internalorganisationid_235cbec0` (`referenced_org_id`)
) ENGINE=MyISAM AUTO_INCREMENT=710 DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test` tinyint(1) NOT NULL,
  `engine` varchar(10) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `amount` int(10) unsigned NOT NULL,
  `amount_received` decimal(10,2) DEFAULT NULL,
  `time` datetime NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `status` smallint(5) unsigned NOT NULL,
  `http_referer` varchar(255) NOT NULL,
  `campaign_code` varchar(15) NOT NULL,
  `is_anonymous` tinyint(1) NOT NULL,
  `ipn` varchar(75) DEFAULT NULL,
  `bank` varchar(4) NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `notes` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rsr_invoice_403f60f` (`user_id`),
  KEY `rsr_invoice_499df97c` (`project_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1548 DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_keyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `label` (`label`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_legacy_data` (
  `id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT '0',
  `name` varchar(128) DEFAULT NULL,
  `value` varchar(128) DEFAULT NULL,
  `iati_equivalent` mediumint(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kind` varchar(1) NOT NULL,
  `url` varchar(200) NOT NULL,
  `caption` varchar(50) NOT NULL,
  `credit` varchar(128) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `format` varchar(128) DEFAULT NULL,
  `category` varchar(128) DEFAULT NULL,
  `language` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rsr_link_499df97c` (`project_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2155 DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_minicms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(50) NOT NULL,
  `feature_box` longtext NOT NULL,
  `feature_image` varchar(100) NOT NULL,
  `top_right_box` longtext NOT NULL,
  `lower_height` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_molliegateway` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `currency` varchar(3) NOT NULL,
  `notification_email` varchar(75) NOT NULL,
  `partner_id` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_organisation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `long_name` varchar(75) NOT NULL,
  `organisation_type` varchar(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `contact_person` varchar(30) NOT NULL,
  `contact_email` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `primary_location_id` int(11) DEFAULT NULL,
  `iati_org_id` varchar(75) DEFAULT NULL,
  `language` varchar(2) NOT NULL,
  `new_organisation_type` int(11) NOT NULL,
  `notes` longtext NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `last_modified_at` datetime DEFAULT NULL,
  `content_owner_id` int(11) DEFAULT NULL,
  `allow_edit` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rsr_organisation_iati_org_id_f90678c_uniq` (`iati_org_id`),
  KEY `rsr_organisation_25153470` (`primary_location_id`),
  KEY `rsr_organisation_3e4f4851` (`organisation_type`),
  KEY `rsr_organisation_52094d6e` (`name`),
  KEY `rsr_organisation_7de79f50` (`iati_org_id`),
  KEY `rsr_organisation_46f091bc` (`new_organisation_type`),
  KEY `rsr_organisation_3b1c9c31` (`created_at`),
  KEY `rsr_organisation_f517befd` (`last_modified_at`),
  KEY `rsr_organisation_11f87a` (`content_owner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2152 DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_organisation_partner_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organisation_id` int(11) NOT NULL,
  `partnertype_id` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rsr_organisation_partner_types_organisation_id_249fc0a0_uniq` (`organisation_id`,`partnertype_id`),
  KEY `rsr_organisation_partner_types_28b1ef86` (`organisation_id`),
  KEY `rsr_organisation_partner_types_360a871b` (`partnertype_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5800 DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_organisationaccount` (
  `organisation_id` int(11) NOT NULL,
  `account_level` varchar(12) NOT NULL,
  PRIMARY KEY (`organisation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_organisationlocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `latitude` double NOT NULL DEFAULT '0',
  `longitude` double NOT NULL DEFAULT '0',
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `location_target_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rsr_organisationlocation_534dd89` (`country_id`),
  KEY `rsr_organisationlocation_301caae0` (`location_target_id`),
  KEY `rsr_organisationlocation_761a2bbd` (`longitude`),
  KEY `rsr_organisationlocation_63894e45` (`latitude`)
) ENGINE=MyISAM AUTO_INCREMENT=1982 DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_partnership` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organisation_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `partner_type` varchar(8) NOT NULL,
  `funding_amount` decimal(10,2) DEFAULT NULL,
  `iati_activity_id` varchar(75) DEFAULT NULL,
  `internal_id` varchar(75) DEFAULT NULL,
  `iati_url` varchar(200) NOT NULL,
  `partner_type_extra` varchar(30) DEFAULT NULL,
  `related_activity_id` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rsr_projectpartner_28b1ef86` (`organisation_id`),
  KEY `rsr_projectpartner_499df97c` (`project_id`),
  KEY `rsr_partnership_2678e2d4` (`iati_activity_id`),
  KEY `rsr_partnership_2f81b70b` (`internal_id`),
  KEY `rsr_partnership_582008b6` (`partner_type`),
  KEY `rsr_partnership_7fab95e1` (`funding_amount`)
) ENGINE=MyISAM AUTO_INCREMENT=21378 DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_partnersite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organisation_id` int(11) NOT NULL,
  `hostname` varchar(50) NOT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `custom_return_url` varchar(200) NOT NULL,
  `custom_css` varchar(100) NOT NULL,
  `custom_logo` varchar(100) NOT NULL,
  `custom_favicon` varchar(100) NOT NULL,
  `about_box` longtext NOT NULL,
  `about_image` varchar(100) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `default_language` varchar(5) NOT NULL,
  `ui_translation` tinyint(1) NOT NULL,
  `google_translation` tinyint(1) NOT NULL,
  `notes` longtext NOT NULL,
  `facebook_button` tinyint(1) NOT NULL,
  `twitter_button` tinyint(1) NOT NULL,
  `facebook_app_id` varchar(40) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `last_modified_at` datetime DEFAULT NULL,
  `custom_return_url_text` varchar(50) NOT NULL,
  `partner_projects` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hostname` (`hostname`),
  UNIQUE KEY `cname` (`cname`),
  KEY `rsr_partnersite_28b1ef86` (`organisation_id`),
  KEY `rsr_partnersite_3b1c9c31` (`created_at`),
  KEY `rsr_partnersite_f517befd` (`last_modified_at`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_partnersite_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `partnersite_id` int(11) NOT NULL,
  `keyword_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rsr_partnersite_keywords_partnersite_id_1b9310ee6a346c6a_uniq` (`partnersite_id`,`keyword_id`),
  KEY `rsr_partnersite_keywords_c380d559` (`partnersite_id`),
  KEY `rsr_partnersite_keywords_0e202173` (`keyword_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_partnertype` (
  `id` varchar(8) NOT NULL,
  `label` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `label` (`label`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_planned_disbursement` (
  `id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT '0',
  `updated` varchar(128) DEFAULT NULL,
  `period_start` date DEFAULT NULL,
  `period_end` date DEFAULT NULL,
  `value` varchar(128) DEFAULT NULL,
  `value_date` date DEFAULT NULL,
  `currency` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_policy_marker` (
  `id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT '0',
  `significance` varchar(128) DEFAULT '0',
  `policy_marker` varchar(128) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `subtitle` varchar(75) NOT NULL,
  `status` varchar(1) NOT NULL,
  `project_plan_summary` longtext NOT NULL,
  `current_image` varchar(100) NOT NULL,
  `current_image_caption` varchar(50) NOT NULL,
  `goals_overview` longtext NOT NULL,
  `current_status` longtext NOT NULL,
  `project_plan` longtext NOT NULL,
  `sustainability` longtext NOT NULL,
  `background` longtext NOT NULL,
  `project_rating` int(11) NOT NULL,
  `notes` longtext NOT NULL,
  `currency` varchar(3) NOT NULL,
  `date_start_planned` date DEFAULT NULL,
  `date_complete_planned` date DEFAULT NULL,
  `date_start_actual` date DEFAULT NULL,
  `date_complete_actual` date DEFAULT NULL,
  `budget` decimal(10,2) DEFAULT NULL,
  `funds` decimal(10,2) DEFAULT NULL,
  `funds_needed` decimal(10,2) DEFAULT NULL,
  `primary_location_id` int(11) DEFAULT NULL,
  `language` varchar(2) NOT NULL,
  `current_image_credit` varchar(50) NOT NULL,
  `target_group` longtext NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `last_modified_at` datetime DEFAULT NULL,
  `donate_button` tinyint(1) NOT NULL,
  `sync_owner_id` int(11) DEFAULT NULL,
  `hierarchy` int(3) NOT NULL DEFAULT '0',
  `project_scope` varchar(128) DEFAULT NULL,
  `aid_type` varchar(128) DEFAULT NULL,
  `capital_spend_percentage` decimal(2,0) NOT NULL DEFAULT '0',
  `collaboration_type` varchar(128) DEFAULT NULL,
  `collaboration_type_text` varchar(128) DEFAULT NULL,
  `default_aid_type` varchar(128) DEFAULT NULL,
  `default_finance_type` varchar(128) DEFAULT NULL,
  `default_flow_type` varchar(128) DEFAULT NULL,
  `default_tied_status` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rsr_project_25153470` (`primary_location_id`),
  KEY `rsr_project_36528e23` (`status`),
  KEY `rsr_project_7be581d8` (`title`),
  KEY `rsr_project_30f59932` (`funds`),
  KEY `rsr_project_54b98049` (`funds_needed`),
  KEY `rsr_project_67de8a86` (`budget`),
  KEY `rsr_project_3b1c9c31` (`created_at`),
  KEY `rsr_project_f517befd` (`last_modified_at`),
  KEY `rsr_project_69ca6485` (`sync_owner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2125 DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_project_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_id` (`project_id`,`category_id`),
  KEY `rsr_project_categories_499df97c` (`project_id`),
  KEY `rsr_project_categories_42dc49bc` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39447 DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_project_condition` (
  `id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT '0',
  `type` varchar(128) DEFAULT NULL,
  `attached` tinyint(128) DEFAULT '0',
  `text` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_project_contact` (
  `id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT '0',
  `email` varchar(128) DEFAULT NULL,
  `job_title` varchar(128) DEFAULT NULL,
  `mailing_address_1` varchar(128) DEFAULT NULL,
  `mailing_address_2` varchar(128) DEFAULT NULL,
  `state` varchar(128) DEFAULT NULL,
  `country_id` int(11) DEFAULT '0',
  `person_name` varchar(128) DEFAULT NULL,
  `organisation_id` int(11) DEFAULT '0',
  `telephone` varchar(128) DEFAULT NULL,
  `website` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_project_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `keyword_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rsr_project_keywords_project_id_586f5c6caee867a2_uniq` (`project_id`,`keyword_id`),
  KEY `rsr_project_keywords_37952554` (`project_id`),
  KEY `rsr_project_keywords_0e202173` (`keyword_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_projectcomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` longtext NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rsr_projectcomment_499df97c` (`project_id`),
  KEY `rsr_projectcomment_403f60f` (`user_id`),
  KEY `rsr_projectcomment_3a04cc98` (`time`)
) ENGINE=MyISAM AUTO_INCREMENT=165 DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_projectlocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `type` varchar(128) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `latitude` double NOT NULL DEFAULT '0',
  `longitude` double NOT NULL DEFAULT '0',
  `precision` varchar(128) DEFAULT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(255) NOT NULL DEFAULT '',
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `location_target_id` int(11) DEFAULT NULL,
  `percentage` decimal(2,0) DEFAULT NULL,
  `gazetteer` varchar(128) DEFAULT NULL,
  `gazetteer_ref` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rsr_projectlocation_534dd89` (`country_id`),
  KEY `rsr_projectlocation_301caae0` (`location_target_id`),
  KEY `rsr_projectlocation_761a2bbd` (`longitude`),
  KEY `rsr_projectlocation_63894e45` (`latitude`)
) ENGINE=MyISAM AUTO_INCREMENT=5006 DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_projectupdate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `text` longtext NOT NULL,
  `photo` varchar(100) NOT NULL,
  `photo_caption` varchar(75) NOT NULL,
  `photo_credit` varchar(25) NOT NULL,
  `video` varchar(200) NOT NULL,
  `video_caption` varchar(75) NOT NULL,
  `video_credit` varchar(25) NOT NULL,
  `update_method` varchar(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `last_modified_at` datetime NOT NULL,
  `language` varchar(2) NOT NULL,
  `notes` longtext NOT NULL,
  `user_agent` varchar(200) NOT NULL,
  `uuid` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rsr_projectupdate_499df97c` (`project_id`),
  KEY `rsr_projectupdate_403f60f` (`user_id`),
  KEY `rsr_projectupdate_5ca46af3` (`update_method`),
  KEY `rsr_projectupdate_7be581d8` (`title`),
  KEY `rsr_projectupdate_3a04cc98` (`created_at`),
  KEY `rsr_projectupdate_3e4ff600` (`last_modified_at`),
  KEY `rsr_projectupdate_2bbc74ae` (`uuid`)
) ENGINE=MyISAM AUTO_INCREMENT=5722 DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_publishingstatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_id` (`project_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2114 DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_recipient` (
  `id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT '0',
  `type` varchar(128) DEFAULT NULL,
  `code` varchar(128) DEFAULT NULL,
  `vocabulary` varchar(128) DEFAULT NULL,
  `percentage` decimal(2,0) DEFAULT '0',
  `text` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_result` (
  `id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT '0',
  `type` varchar(128) DEFAULT NULL,
  `aggregation_status` varchar(128) DEFAULT NULL,
  `description_type` varchar(128) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_sector` (
  `id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT '0',
  `vocabulary` varchar(128) DEFAULT NULL,
  `code` varchar(128) DEFAULT NULL,
  `percentage` varchar(128) DEFAULT NULL,
  `text` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_transaction` (
  `id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT '0',
  `aid_type` varchar(128) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `disbursement_channel` varchar(128) DEFAULT NULL,
  `disbursement_channel_text` varchar(128) DEFAULT NULL,
  `distribution_channel` varchar(128) DEFAULT NULL,
  `distribution_channel_text` varchar(128) DEFAULT NULL,
  `finance_type` varchar(128) DEFAULT NULL,
  `finance_type_text` varchar(128) DEFAULT NULL,
  `flow_type` varchar(128) DEFAULT NULL,
  `flow_type_text` varchar(128) DEFAULT NULL,
  `related_activity_id` varchar(128) DEFAULT NULL,
  `tied_status` varchar(128) DEFAULT NULL,
  `tied_status_text` varchar(128) DEFAULT NULL,
  `transaction_date` varchar(128) DEFAULT NULL,
  `type` varchar(128) DEFAULT NULL,
  `code` varchar(128) DEFAULT NULL,
  `value` varchar(128) DEFAULT NULL,
  `currency` varchar(128) DEFAULT NULL,
  `value_date` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `rsr_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `organisation_id` int(11) NOT NULL,
  `notes` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `rsr_userprofile_28b1ef86` (`organisation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1766 DEFAULT CHARSET=utf8;




