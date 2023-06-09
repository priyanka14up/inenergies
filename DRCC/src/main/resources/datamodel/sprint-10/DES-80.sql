CREATE TABLE `APPLICABLE_RATE_PLAN` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `UUID` varchar(55) NOT NULL,
  `RATE_PLAN_PROFILE_ID` bigint(20) NOT NULL,
  `RATE_PLAN_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_APPLICABLE_RATE_PLAN_RATE_PLAN_PROFILE` FOREIGN KEY (`RATE_PLAN_PROFILE_ID`)
    REFERENCES `RATE_PLAN_PROFILE` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_APPLICABLE_RATE_PLAN_RATE_PLAN` FOREIGN KEY (`RATE_PLAN_ID`)
    REFERENCES `RATE_PLAN` (ID) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `HOLIDAY_CALENDAR` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `UUID` varchar(55) NOT NULL,
  `RATE_PLAN_PROFILE_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `MONTH` int(11) NOT NULL,
  `FIXED_DATE` date DEFAULT NULL,
  `VARIABLE_DATE` date DEFAULT NULL,
  `WEEK_ORDINAL_NUMBER` varchar(55) DEFAULT NULL,
  `DAY_OF_WEEK` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_HOLIDAY_CALENDAR_RATE_PLAN_PROFILE` FOREIGN KEY (`RATE_PLAN_PROFILE_ID`)
    REFERENCES `RATE_PLAN_PROFILE` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `SEASON_CALENDAR` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `UUID` varchar(55) NOT NULL,
  `RATE_PLAN_PROFILE_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `MONTH_FROM` int(11) NOT NULL,
  `DAY_FROM` int(11) DEFAULT NULL,
  `MONTH_TO` int(11) DEFAULT NULL,
  `DAY_TO` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_SEASON_CALENDAR_RATE_PLAN_PROFILE` FOREIGN KEY (`RATE_PLAN_PROFILE_ID`)
    REFERENCES `RATE_PLAN_PROFILE` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `TIME_OF_USE_CALENDAR` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `UUID` varchar(55) NOT NULL,
  `RATE_PLAN_PROFILE_ID` bigint(20) NOT NULL,
  `TIME_TYPE` varchar(55) NOT NULL,
  `MONTH_FROM` int(11) DEFAULT NULL,
  `MONTH_TO` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_TIME_OF_USE_CALENDAR_RATE_PLAN_PROFILE` FOREIGN KEY (`RATE_PLAN_PROFILE_ID`)
    REFERENCES `RATE_PLAN_PROFILE` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

ALTER TABLE `RATE_PLAN_PROFILE` ADD COLUMN `RATE_SCHEDULE_TITLE` varchar(55) DEFAULT NULL;
ALTER TABLE `RATE_PLAN_PROFILE` ADD COLUMN `RATE_CODE_ID` varchar(55) DEFAULT NULL;
ALTER TABLE `RATE_PLAN_PROFILE` ADD COLUMN `RATE_CODE_SECTOR` varchar(55) DEFAULT NULL;
ALTER TABLE `RATE_PLAN_PROFILE` ADD COLUMN `ACTIVE` tinyint(1) NOT NULL DEFAULT '0';
ALTER TABLE `RATE_PLAN_PROFILE` ADD COLUMN `USE_COMPANY_LEVEL_SEASONS` tinyint(1) NOT NULL;
ALTER TABLE `RATE_PLAN_PROFILE` ADD COLUMN `USE_COMPANY_LEVEL_HOLIDAYS` tinyint(1) NOT NULL;
ALTER TABLE `RATE_PLAN_PROFILE` ADD COLUMN `USE_COMPANY_LEVEL_TOU` tinyint(1) NOT NULL;
ALTER TABLE `RATE_PLAN_PROFILE` ADD COLUMN `DESIGN_TYPE` varchar(55) DEFAULT NULL;
ALTER TABLE `RATE_PLAN_PROFILE` ADD COLUMN `DESIGN_SUB_TYPE` varchar(55) DEFAULT NULL;
