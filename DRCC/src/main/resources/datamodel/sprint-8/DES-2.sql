CREATE TABLE `NOTIFICATION_DUPLICATION_SOURCE` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `UUID` varchar(55) NOT NULL DEFAULT '',
  `PROGRAM_CUSTOMER_NOTIFICATION_ID` bigint(20) unsigned NOT NULL,
  `NOTIFICATION_TYPE` varchar(50) NOT NULL DEFAULT '',
  `DISTRIBUTED_BY` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `FK_NOTIFICATION_DUPLICATION_SOURCE_PROGRAM_CUSTOMER_NOTIFICATION` (`PROGRAM_CUSTOMER_NOTIFICATION_ID`),
  CONSTRAINT `FK_NOTIFICATION_DUPLICATION_SOURCE_PROGRAM_CUSTOMER_NOTIFICATION` FOREIGN KEY (`PROGRAM_CUSTOMER_NOTIFICATION_ID`) REFERENCES `PROGRAM_CUSTOMER_NOTIFICATION` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5650 DEFAULT CHARSET=utf8;

ALTER TABLE `PROGRAM_CUSTOMER_NOTIFICATION` ADD COLUMN `NOTIFICATION_OPTION` varchar(50) DEFAULT NULL;
ALTER TABLE `PROGRAM_CUSTOMER_NOTIFICATION` ADD COLUMN `LAST_NOTIFICATION_DELIVERY_BY` int(11) DEFAULT NULL;
