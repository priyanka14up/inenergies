DROP TABLE IF EXISTS `TASK_INSTANCE`;

CREATE TABLE IF NOT EXISTS `TASK_INSTANCE` (
  `ID` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `UUID` varchar(55) NOT NULL DEFAULT '',
  `START` DATETIME NULL,
  `ESTIMATED_END` DATETIME NULL,
  `ACTUAL_END` DATETIME NULL,
  `ELAPSED_TIME` BIGINT(20) NULL,
  `PLAN_INSTANCE_ID` BIGINT(20) NOT NULL,
  `STATUS` VARCHAR(45) NOT NULL,
  `NOTES` TEXT NULL,
  `LAST_UPDATED` DATETIME NULL,
  `REFERENCE` VARCHAR(45) NULL,
  `TASK_ID` BIGINT(20) NOT NULL,
  `TASK_ORDER` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_TASK_INSTANCE_PLAN_INSTANCE1_idx` (`PLAN_INSTANCE_ID` ASC),
  INDEX `fk_TASK_INSTANCE_TASK1_idx` (`TASK_ID` ASC),
  CONSTRAINT `fk_TASK_INSTANCE_PLAN_INSTANCE1`
    FOREIGN KEY (`PLAN_INSTANCE_ID`)
    REFERENCES `PLAN_INSTANCE` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TASK_INSTANCE_TASK1`
    FOREIGN KEY (`TASK_ID`)
    REFERENCES `TASK` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `NOTIFICATION_INSTANCE`;

CREATE TABLE IF NOT EXISTS `NOTIFICATION_INSTANCE` (
  `ID` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `UUID` varchar(55) NOT NULL DEFAULT '',
  `NOTIFICATION_DEFINITION_ID` BIGINT(20) NOT NULL,
  `BUSINESS_OWNER_ID` BIGINT(20) NOT NULL,
  `CREATED` DATETIME NOT NULL,
  `CLOSED` DATETIME NULL,
  `REFERENCE` VARCHAR(45) NULL,
  `NOTIFICATION_KEY` VARCHAR(50) NULL,
  `TASK_INSTANCE_ID` BIGINT(20) NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_NOTIFICATION_INSTANCE_NOTIFICATION_DEFINITION1_idx` (`NOTIFICATION_DEFINITION_ID` ASC),
  INDEX `fk_NOTIFICATION_INSTANCE_BUSINESS_OWNER1_idx` (`BUSINESS_OWNER_ID` ASC),
  INDEX `fk_NOTIFICATION_INSTANCE_TASK_INSTANCE1_idx` (`TASK_INSTANCE_ID` ASC),
  CONSTRAINT `fk_NOTIFICATION_INSTANCE_NOTIFICATION_DEFINITION1`
    FOREIGN KEY (`NOTIFICATION_DEFINITION_ID`)
    REFERENCES `NOTIFICATION_DEFINITION` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_NOTIFICATION_INSTANCE_BUSINESS_OWNER1`
    FOREIGN KEY (`BUSINESS_OWNER_ID`)
    REFERENCES `BUSINESS_OWNER` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_NOTIFICATION_INSTANCE_TASK_INSTANCE1`
    FOREIGN KEY (`TASK_INSTANCE_ID`)
    REFERENCES `TASK_INSTANCE` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8;


