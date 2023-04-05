CREATE TABLE `RATE_CODE_SECTORS` (
   `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
   `UUID` varchar(55) NOT NULL DEFAULT '',
   `SECTOR`       varchar(55),
   `RATE_CODE_ID` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_RATE_CODE`
  FOREIGN KEY (`RATE_CODE_ID`)
    REFERENCES `RATE_CODE` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `RATE_CODE` drop column `SECTOR`;