DROP TABLE IF EXISTS `AWARD_EXCEPTION`;

CREATE TABLE `AWARD_EXCEPTION` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `UUID` varchar(55) DEFAULT NULL,
  `INSTRUCTION_ID` bigint(20) UNSIGNED NOT NULL,
  `DESCRIPTION`    varchar(255) DEFAULT NULL,
  `STATUS`         varchar(55) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_AWARD_EXCEPTION` FOREIGN KEY (`INSTRUCTION_ID`) REFERENCES `AWARD_INSTRUCTION` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

