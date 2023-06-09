DROP TABLE IF EXISTS `LOCATION_REGISTRATION_STATUS`;

CREATE TABLE `LOCATION_REGISTRATION_STATUS` (
  `ID`                       BIGINT(20)  NOT NULL AUTO_INCREMENT,
  `UUID`                     VARCHAR(55) NULL,
  `PROGRAM_SA_ENROLLMENT_ID` BIGINT(20)  NOT NULL,
  `ISO_ID`                   BIGINT(20)  UNSIGNED NOT NULL,
  `STATUS`                   VARCHAR(30) NULL,
  `METER_DATA_RECHECK`       TINYINT(1)           DEFAULT 0,
  PRIMARY KEY (`ID`, `PROGRAM_SA_ENROLLMENT_ID`),
  INDEX `PROGRAM_SA_ENROLL_FK_idx` (`PROGRAM_SA_ENROLLMENT_ID` ASC),
  CONSTRAINT `PROGRAM_SA_ENROLL_FK`
  FOREIGN KEY (`PROGRAM_SA_ENROLLMENT_ID`)
  REFERENCES `PROGRAM_SA_ENROLLMENT` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `LR_ISO_FK`
  FOREIGN KEY (`ISO_ID`)
  REFERENCES `MI_ISO` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;

DROP TABLE IF EXISTS `LR_EXCEPTION`;

CREATE TABLE IF NOT EXISTS `LR_EXCEPTION` (
  `ID`            BIGINT(20)  NOT NULL AUTO_INCREMENT,
  `UUID`          VARCHAR(55) NULL,
  `LRS_ID`        BIGINT(20)  NOT NULL,
  `TYPE`          VARCHAR(100) NOT NULL,
  `DATE_ADDED`    DATETIME    NULL,
  `DATE_RESOLVED` DATETIME    NULL,
  `RESOLVED`      TINYINT(1)           DEFAULT 0,
  `CONTINUE`      TINYINT(1)           DEFAULT 0,
  PRIMARY KEY (`ID`),
  INDEX `LRS_STATUS_FK_idx` (`LRS_ID` ASC),
  CONSTRAINT `LRS_STATUS_FK`
  FOREIGN KEY (`LRS_ID`)
  REFERENCES `LOCATION_REGISTRATION_STATUS` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;


