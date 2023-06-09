SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP TABLE IF EXISTS `PDPSR_ALL_NOTIFICATIONS` ;
DROP TABLE IF EXISTS `PDPSR_VENDOR_NOTIFICATIONS` ;
DROP TABLE IF EXISTS `VENDOR_STATUS_MAPPING` ;
DROP TABLE IF EXISTS `PDPSR_EVENT_VENDOR` ;
DROP TABLE IF EXISTS `PDPSR_PARTICIPANTS` ;
DROP TABLE IF EXISTS `PDPSR_EVENT` ;
DROP TABLE IF EXISTS `PDP_SR_VENDOR_RESPONSE` ;

DROP TABLE IF EXISTS `PDP_SR_EVENT` ;

CREATE TABLE IF NOT EXISTS `PDP_SR_EVENT` (
  `EVENT_ID` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `EVENT_UNIQUE_ID` VARCHAR(45) NOT NULL,
  `EVENT_PROGRAM` VARCHAR(10) NOT NULL,
  `EVENT_NAME` VARCHAR(99) NOT NULL,
  `EVENT_START` DATETIME NOT NULL,
  `EVENT_END` DATETIME NOT NULL,
  `EVENT_STATE` VARCHAR(45) NOT NULL,
  `EVENT_OPTIONS` VARCHAR(10) NULL,
  `EVENT_TYPE` VARCHAR(45) NOT NULL,
  `NUM_PARTICIPANTS` INT(11) NOT NULL DEFAULT 0,
  `NUM_NOTIFICATIONS` INT(11) NOT NULL DEFAULT 0,
  `NUM_NOTIFICATIONS_SENT` INT(11) NOT NULL DEFAULT 0,
  `FILES_RECEIVED` DATETIME NULL,
  `DEDUP_COMPLETE` DATETIME NULL,
  `VENDOR_FILES_SENT` DATETIME NULL,
  `FIRST_POSTBACK_RECEIVED` DATETIME NULL,
  PRIMARY KEY (`EVENT_ID`),
  UNIQUE INDEX `IDX_EVENT_UNIQUE_ID` (`EVENT_UNIQUE_ID` ASC, EVENT_PROGRAM ASC, EVENT_STATE ASC)
  )
ENGINE = InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `PDP_SR_PARTICIPANTS` ;

CREATE TABLE IF NOT EXISTS `PDP_SR_PARTICIPANTS` (
  `PARTICIPANT_ID` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `SERVICE_POINT_ID` VARCHAR(45) NOT NULL,
  `PREMISE_ID` VARCHAR(45) NOT NULL,
  `SA_ID` VARCHAR(45) NOT NULL,
  `ACCT_ID` VARCHAR(45) NOT NULL,
  `DRUID` VARCHAR(45) NOT NULL,
  `SERVICE_ADDRESS` VARCHAR(255) NOT NULL,
  `SUCCESSFUL_NOTIFICATION` VARCHAR(10) NULL DEFAULT 'UNSUCCESS',
  `PDP_SR_EVENT_EVENT_ID` BIGINT(20) NOT NULL,
  PRIMARY KEY (`PARTICIPANT_ID`),
  INDEX `IDX_PDP_SR_EVENT_EVENT_ID` (`PDP_SR_EVENT_EVENT_ID` ASC),
  INDEX `IDX_SUCCESSFUL_NOTIFICATION` (`SUCCESSFUL_NOTIFICATION` ASC),
  INDEX `IDX_EVENT_SP_ID` (`PDP_SR_EVENT_EVENT_ID` ASC, `SERVICE_POINT_ID` ASC),
  INDEX `IDX_EVENT_SA_ID` (`PDP_SR_EVENT_EVENT_ID` ASC, `SA_ID` ASC),
  INDEX `IDX_EVENT_PREMISE_ID` (`PDP_SR_EVENT_EVENT_ID` ASC, `PREMISE_ID` ASC),
  INDEX `IDX_EVENT_ACCT_ID` (`PDP_SR_EVENT_EVENT_ID` ASC, `ACCT_ID` ASC),
  INDEX `IDX_EVENT_DRUID` (`PDP_SR_EVENT_EVENT_ID` ASC, `DRUID` ASC),
  INDEX `IDX_EVENT_SERVICE_ADDRESS` (`PDP_SR_EVENT_EVENT_ID` ASC, `SERVICE_ADDRESS` ASC),
  INDEX `IDX_EVENT_SUCCESSFUL_NOTIFICATION` (`PDP_SR_EVENT_EVENT_ID` ASC, `SUCCESSFUL_NOTIFICATION` ASC),
  CONSTRAINT `FK_PDP_SR_PARTICIPANTS_PDP_SR_EVENT1`
    FOREIGN KEY (`PDP_SR_EVENT_EVENT_ID`)
    REFERENCES `PDP_SR_EVENT` (`EVENT_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `PDP_SR_VENDOR` ;

CREATE TABLE IF NOT EXISTS `PDP_SR_VENDOR` (
  `VENDOR_ID` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `VENDOR` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`VENDOR_ID`))
ENGINE = InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `VENDOR_CONFIGURATION` ;

CREATE TABLE IF NOT EXISTS `VENDOR_CONFIGURATION` (
  `VENDOR_CONFIG_ID` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `PDP_SR_VENDOR_VENDOR_ID` BIGINT(20) NOT NULL,
  `NOTIFY_BY` VARCHAR(15) NOT NULL,
  `PROGRAM` VARCHAR(10) NOT NULL,
  `SFTP_ADDRESS` VARCHAR(45) NULL,
  `SFTP_USERNAME` VARCHAR(45) NULL,
  `SFTP_PASSWORD` VARCHAR(45) NULL,
  `SFTP_DIRECTORY` VARCHAR(100) NULL,
  PRIMARY KEY (`VENDOR_CONFIG_ID`),
  INDEX `IDX_PDP_SR_VENDOR_CONFIGURATION_PDP_SR_VENDOR1` (`PDP_SR_VENDOR_VENDOR_ID` ASC),
  CONSTRAINT `FK_PDP_SR_VENDOR_CONFIGURATION_PDP_SR_VENDOR`
    FOREIGN KEY (`PDP_SR_VENDOR_VENDOR_ID`)
    REFERENCES `PDP_SR_VENDOR` (`VENDOR_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `PDP_SR_NOTIFICATIONS` ;

CREATE TABLE IF NOT EXISTS `PDP_SR_NOTIFICATIONS` (
  `NOTIFICATION_ID` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `REC_ID` INT NULL,
  `PREFERENCE_CATEGORY` VARCHAR(45) NULL,
  `MESSAGE_TEMPLATE` VARCHAR(45) NULL,
  `PERSON_ID` VARCHAR(45) NULL,
  `NOTIFY_BY` VARCHAR(45) NULL,
  `NOTIFY_BY_VALUE` VARCHAR(255) NULL,
  `LANGUAGE` VARCHAR(45) NULL,
  `CREATION_TIMESTAMP` DATETIME NULL,
  `EVENT_DISPLAY_DAYNAME` VARCHAR(45) NULL,
  `EVENT_DISPLAY_EVENT_DATE` VARCHAR(45) NULL,
  `EVENT_CANCEL_STATUS` VARCHAR(45) NULL,
  `EVENT_DISPLAY_PREMISE_ADDR` VARCHAR(255) NULL,
  `SECOND_EVENT_DISPLAY_PREMISE_ADDR` VARCHAR(255) NULL,
  `NO_ADDITIONAL_ADDR_PREMISES` INT NOT NULL DEFAULT 0,
  `PDP_RESERVATION_CAPACITY` VARCHAR(45) NULL,
  `VENDOR_STATUS` VARCHAR(100) NULL DEFAULT 'SENT TO VENDOR',
  `VENDOR_STATUS_TIMESTAMP` DATETIME NULL,
  `VENDOR_STATUS_COUNTER` INT NOT NULL DEFAULT 0,
  `DISPLAY_MESSAGE` VARCHAR(1024) NULL DEFAULT 'SENT TO VENDOR',
  `SUCCESSFUL_NOTIFICATION` VARCHAR(10) NULL DEFAULT 'UNSUCCESS',
  `PDP_SR_EVENT_EVENT_ID` BIGINT(20) NOT NULL,
  `PDP_SR_PARTICIPANTS_PARTICIPANT_ID` BIGINT(20) NOT NULL,
  `PDP_SR_VENDOR_VENDOR_ID` BIGINT(20) NULL DEFAULT NULL,
  `CSV_LINE` VARCHAR(1024) NULL DEFAULT NULL,
  `DUPLICATE_OF` BIGINT(20) NULL DEFAULT NULL,
  PRIMARY KEY (`NOTIFICATION_ID`),
  INDEX `IDX_PDP_SR_NOTIFICATIONS_PDP_SR_PARTICIPANTS1` (`PDP_SR_PARTICIPANTS_PARTICIPANT_ID` ASC),
  INDEX `IDX_PDP_SR_NOTIFICATIONS_PDP_SR_VENDOR1` (`PDP_SR_VENDOR_VENDOR_ID` ASC),
  INDEX `IDX_PDP_SR_NOTIFICATIONS_DUPLICATE_OF` (`DUPLICATE_OF` ASC),
  INDEX `IDX_PDP_SR_NOTIFICATIONS_VENDOR_STATUS` (`VENDOR_STATUS` ASC),
  INDEX `IDX_EVENT_VSTAT_VENDOR` (`PDP_SR_EVENT_EVENT_ID` ASC, `VENDOR_STATUS` ASC, `PDP_SR_VENDOR_VENDOR_ID` ASC),
  INDEX `IDX_EVENT_VSTAT_LANGUAGE` (`PDP_SR_EVENT_EVENT_ID` ASC, `VENDOR_STATUS` ASC, `LANGUAGE` ASC),
  INDEX `IDX_EVENT_VSTAT_NOTIFY_BY_VALUE` (`PDP_SR_EVENT_EVENT_ID` ASC, `VENDOR_STATUS` ASC, `NOTIFY_BY` ASC, `NOTIFY_BY_VALUE` ASC),
  INDEX `IDX_EVENT_ESTAT` (`PDP_SR_EVENT_EVENT_ID` ASC, `VENDOR_STATUS` ASC, `PDP_SR_VENDOR_VENDOR_ID` ASC, `NOTIFY_BY` ASC, `LANGUAGE` ASC),
  INDEX `IDX_EVENT_SUCCESS_NOTIFICATION` (`PDP_SR_EVENT_EVENT_ID` ASC, `SUCCESSFUL_NOTIFICATION` ASC),
  KEY `idx_DUPLICATE` (`PDP_SR_EVENT_EVENT_ID`,`NOTIFY_BY`,`NOTIFY_BY_VALUE`),
  KEY `idx_DUPLICATE_SHORT` (`PDP_SR_EVENT_EVENT_ID`,`NOTIFY_BY`),
  CONSTRAINT `FK_PDP_SR_NOTIFICATIONS_PDP_SR_PARTICIPANTS1`
    FOREIGN KEY (`PDP_SR_PARTICIPANTS_PARTICIPANT_ID`)
    REFERENCES `PDP_SR_PARTICIPANTS` (`PARTICIPANT_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_PDP_SR_NOTIFICATIONS_PDP_SR_EVENT1`
    FOREIGN KEY (`PDP_SR_EVENT_EVENT_ID`)
    REFERENCES `PDP_SR_EVENT` (`EVENT_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_PDP_SR_NOTIFICATIONS_PDP_SR_VENDOR1`
    FOREIGN KEY (`PDP_SR_VENDOR_VENDOR_ID`)
    REFERENCES `PDP_SR_VENDOR` (`VENDOR_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `VENDOR_STATUS_MAPPING` ;

CREATE TABLE `VENDOR_STATUS_MAPPING` (
  `VENDOR_STATUS_MAPPING_ID` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `VENDOR_ID` BIGINT(20) NOT NULL,
  `STATUS_CODE` VARCHAR(100) NOT NULL,
  `VENDOR_DESCRIPTION` VARCHAR(1024) NULL DEFAULT NULL,
  `DISPLAY_MESSAGE` VARCHAR(1024) NOT NULL,
  `SUCCESSFUL_NOTIFICATION` VARCHAR(15) NOT NULL DEFAULT 'UNSUCCESS',
  PRIMARY KEY (`VENDOR_STATUS_MAPPING_ID`),
  INDEX `FK_VENDOR_STATUS_VENDOR_idx` (`VENDOR_ID` ASC),
  CONSTRAINT `FK_VENDOR_STATUS_VENDOR`
    FOREIGN KEY (`VENDOR_ID`)
    REFERENCES `PDP_SR_VENDOR` (`VENDOR_ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION) ENGINE = InnoDB DEFAULT CHARSET=utf8;

INSERT INTO PDP_SR_VENDOR(VENDOR_ID, VENDOR) VALUES(1,'Genesys');
INSERT INTO PDP_SR_VENDOR(VENDOR_ID, VENDOR) VALUES(2,'Rightfax');


INSERT INTO VENDOR_CONFIGURATION(PDP_SR_VENDOR_VENDOR_ID,NOTIFY_BY,PROGRAM,SFTP_ADDRESS,SFTP_USERNAME,SFTP_PASSWORD,SFTP_DIRECTORY) VALUES(1,'EMAIL','PDP','esfttest.pge.com','omnetricInc','EnergyIP@QA16','omnetric/from_omnetric/DRCC/vendors/Genesys/Notifications');
INSERT INTO VENDOR_CONFIGURATION(PDP_SR_VENDOR_VENDOR_ID,NOTIFY_BY,PROGRAM,SFTP_ADDRESS,SFTP_USERNAME,SFTP_PASSWORD,SFTP_DIRECTORY) VALUES(1,'EMAIL','SMARTRATE','esfttest.pge.com','omnetricInc','EnergyIP@QA16','omnetric/from_omnetric/DRCC/vendors/Genesys/Notifications');
INSERT INTO VENDOR_CONFIGURATION(PDP_SR_VENDOR_VENDOR_ID,NOTIFY_BY,PROGRAM,SFTP_ADDRESS,SFTP_USERNAME,SFTP_PASSWORD,SFTP_DIRECTORY) VALUES(1,'PHONE','PDP','esfttest.pge.com','omnetricInc','EnergyIP@QA16','omnetric/from_omnetric/DRCC/vendors/Genesys/Notifications');
INSERT INTO VENDOR_CONFIGURATION(PDP_SR_VENDOR_VENDOR_ID,NOTIFY_BY,PROGRAM,SFTP_ADDRESS,SFTP_USERNAME,SFTP_PASSWORD,SFTP_DIRECTORY) VALUES(1,'PHONE','SMARTRATE','esfttest.pge.com','omnetricInc','EnergyIP@QA16','omnetric/from_omnetric/DRCC/vendors/Genesys/Notifications');
INSERT INTO VENDOR_CONFIGURATION(PDP_SR_VENDOR_VENDOR_ID,NOTIFY_BY,PROGRAM,SFTP_ADDRESS,SFTP_USERNAME,SFTP_PASSWORD,SFTP_DIRECTORY) VALUES(1,'SMS','SMARTRATE','esfttest.pge.com','omnetricInc','EnergyIP@QA16','omnetric/from_omnetric/DRCC/vendors/Genesys/Notifications');
INSERT INTO VENDOR_CONFIGURATION(PDP_SR_VENDOR_VENDOR_ID,NOTIFY_BY,PROGRAM,SFTP_ADDRESS,SFTP_USERNAME,SFTP_PASSWORD,SFTP_DIRECTORY) VALUES(2,'FAX','PDP','esfttest.pge.com','omnetricInc','EnergyIP@QA16','omnetric/from_omnetric/DRCC/vendors/Rightfax/Notifications');
INSERT INTO VENDOR_CONFIGURATION(PDP_SR_VENDOR_VENDOR_ID,NOTIFY_BY,PROGRAM,SFTP_ADDRESS,SFTP_USERNAME,SFTP_PASSWORD,SFTP_DIRECTORY) VALUES(1,'SMS','PDP','esfttest.pge.com','omnetricInc','EnergyIP@QA16','omnetric/from_omnetric/DRCC/vendors/Genesys/Notifications');

INSERT INTO  VENDOR_STATUS_MAPPING(VENDOR_ID,STATUS_CODE,DISPLAY_MESSAGE,SUCCESSFUL_NOTIFICATION) VALUES(1,'BADDATA','There was an error on the TMS','UNSUCCESS');
INSERT INTO  VENDOR_STATUS_MAPPING(VENDOR_ID,STATUS_CODE,DISPLAY_MESSAGE,SUCCESSFUL_NOTIFICATION) VALUES(1,'BADNUMBERASSIGNED','Message not delivered. Number out of service.','ATTEMPTED');
INSERT INTO  VENDOR_STATUS_MAPPING(VENDOR_ID,STATUS_CODE,DISPLAY_MESSAGE,SUCCESSFUL_NOTIFICATION) VALUES(1,'BADNUMBERFAX','Message not delivered. Fax machine answered','ATTEMPTED');
INSERT INTO  VENDOR_STATUS_MAPPING(VENDOR_ID,STATUS_CODE,DISPLAY_MESSAGE,SUCCESSFUL_NOTIFICATION) VALUES(1,'BLOCKED','The device was not attempted because the device is on the block list','UNSUCCESS');
INSERT INTO  VENDOR_STATUS_MAPPING(VENDOR_ID,STATUS_CODE,DISPLAY_MESSAGE,SUCCESSFUL_NOTIFICATION) VALUES(1,'BOUNCEDMAIL_BAD_DOMAIN','An email message was sent but was not delivered. The message was bounced because the domain does not exist. This is a hard bounce type','ATTEMPTED');
INSERT INTO  VENDOR_STATUS_MAPPING(VENDOR_ID,STATUS_CODE,DISPLAY_MESSAGE,SUCCESSFUL_NOTIFICATION) VALUES(1,'BOUNCEDMAIL_BAD_MAIL','An email message was sent but was not delivered. The message was bounced by the Internet Service Provider because the email address does not exist.','ATTEMPTED');
 
SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

