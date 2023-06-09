CREATE TABLE `GENERAL_AVAILABILITY` (
  `ID` bigint(20) NOT NULL,
  `UUID` varchar(55) NOT NULL,
  `RATE_PLAN_PROFILE_ID` bigint(20) NOT NULL,
  `ATTRIBUTE_TYPE` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_GENERAL_AVAILABILITY_RATE_PLAN_PROFILE` (`RATE_PLAN_PROFILE_ID`),
  CONSTRAINT `FK_GENERAL_AVAILABILITY_RATE_PLAN_PROFILE` FOREIGN KEY (`RATE_PLAN_PROFILE_ID`) REFERENCES `RATE_PLAN_PROFILE` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `GENERAL_AVAILABILITY_APPLICABLE_VALUE` (
  `ID` bigint(20) NOT NULL,
  `UUID` varchar(55) NOT NULL,
  `GENERAL_AVAILABILITY_ID` bigint(20) NOT NULL,
  `VALUE` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_GENERAL_AVAILABILITY_APPLICABLE_VALUE_GENERAL_AVAILABILITY` (`GENERAL_AVAILABILITY_ID`),
  CONSTRAINT `FK_GENERAL_AVAILABILITY_APPLICABLE_VALUE_GENERAL_AVAILABILITY` FOREIGN KEY (`GENERAL_AVAILABILITY_ID`) REFERENCES `GENERAL_AVAILABILITY` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `RATE_PLAN_DEMAND` (
  `ID` bigint(20) NOT NULL,
  `UUID` varchar(55) NOT NULL,
  `RATE_PLAN_PROFILE_ID` bigint(20) NOT NULL,
  `CALCULATION_INDICATOR` varchar(45) DEFAULT NULL,
  `CALCULATION_VALUE` varchar(45) DEFAULT NULL,
  `VALUE` decimal(5,2) DEFAULT NULL,
  `UNIT` varchar(5) DEFAULT NULL,
  `COMPARATOR` varchar(55) DEFAULT NULL,
  `DEMAND_TYPE` varchar(55) DEFAULT NULL,
  `TIME_HORIZON` int(2) DEFAULT NULL,
  `PRIOR_MONTHS` int(2) DEFAULT NULL,
  `CONSECUTIVE` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_RATE_PLAN_DEMAND_RATE_PLAN_PROFILE` (`RATE_PLAN_PROFILE_ID`),
  CONSTRAINT `FK_RATE_PLAN_DEMAND_RATE_PLAN_PROFILE` FOREIGN KEY (`RATE_PLAN_PROFILE_ID`) REFERENCES `RATE_PLAN_PROFILE` (ID) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `RATE_PLAN_PROFILE` ADD COLUMN `APPLICABILITY_DESCRIPTION` varchar(255) DEFAULT NULL;