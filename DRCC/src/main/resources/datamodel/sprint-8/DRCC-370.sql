DROP TABLE IF EXISTS `IMPACTED_RESOURCE`;

CREATE TABLE `IMPACTED_RESOURCE` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `UUID` varchar(55) NOT NULL DEFAULT '',
  `EVENT_ID` bigint(20) unsigned NOT NULL,
  `ISO_RESOURCE_ID` bigint(20) unsigned NOT NULL,
  `TOTAL_IMPACTED_LOCATIONS` int(11) unsigned NOT NULL,
  `IMPACTED_BY` varchar(55) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IMPACTED_RESOURCE_EVENT_FK` (`EVENT_ID`),
  KEY `IMPACTED_RESOURCE_RESOURCE_FK` (`ISO_RESOURCE_ID`),
  CONSTRAINT `IMPACTED_RESOURCE_EVENT_FK` FOREIGN KEY (`EVENT_ID`) REFERENCES `EVENT` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `IMPACTED_RESOURCE_RESOURCE_FK` FOREIGN KEY (`ISO_RESOURCE_ID`) REFERENCES `ISO_RESOURCE` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;