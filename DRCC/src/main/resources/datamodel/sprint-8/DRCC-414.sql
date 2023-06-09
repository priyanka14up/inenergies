ALTER TABLE BID ADD COLUMN REGISTRATION_ID BIGINT(20) UNSIGNED NULL;
UPDATE BID b join REGISTRATION_STATUS r ON b.RESOURCE_ID = r.RESOURCE_ID SET b.REGISTRATION_ID = r.ID;
ALTER TABLE BID MODIFY COLUMN REGISTRATION_ID BIGINT(20) UNSIGNED NOT NULL;
ALTER TABLE BID ADD CONSTRAINT FK_BID_REGISTRATION FOREIGN KEY (`REGISTRATION_ID`) REFERENCES `REGISTRATION_STATUS` (`ID`);