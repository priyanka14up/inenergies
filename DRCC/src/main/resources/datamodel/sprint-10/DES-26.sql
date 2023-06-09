
CREATE TABLE `RATE_PLAN_ENROLLMENT` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `UUID` varchar(55) NOT NULL,
  `RATE_PLAN_ID` bigint(20) NOT NULL,
  `SERVICE_AGREEMENT_ID` VARCHAR(10) NOT NULL,
  `STATUS`  VARCHAR(255),
  `START_DATE`  DATETIME,
  `END_DATE`  DATETIME,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_ENROLLMENT__RATE_PLAN` FOREIGN KEY (`RATE_PLAN_ID`)
  REFERENCES `RATE_PLAN` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_ENROLLMENT__SERVICE_AGREEMENT` FOREIGN KEY (`SERVICE_AGREEMENT_ID`)
  REFERENCES `SERVICE_AGREEMENT` (`SERVICE_AGREEMENT_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;