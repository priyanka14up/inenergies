ALTER TABLE `MI_ISO_PROFILE` drop column `BID_ON_MONDAY`           ;
ALTER TABLE `MI_ISO_PROFILE` drop column `BID_ON_TUESDAY`          ;
ALTER TABLE `MI_ISO_PROFILE` drop column `BID_ON_WEDNESDAY`        ;
ALTER TABLE `MI_ISO_PROFILE` drop column `BID_ON_THURSDAY`         ;
ALTER TABLE `MI_ISO_PROFILE` drop column `BID_ON_FRIDAY`           ;
ALTER TABLE `MI_ISO_PROFILE` drop column `BID_ON_SATURDAY`         ;
ALTER TABLE `MI_ISO_PROFILE` drop column `BID_ON_SUNDAY`           ;
ALTER TABLE `MI_ISO_PROFILE` drop column `BID_SUBMISSION_SC_HOUR`  ;
ALTER TABLE `MI_ISO_PROFILE` drop column `BID_SUBMISSION_SC_MINUTE`;
ALTER TABLE `MI_ISO_PROFILE` drop column `BID_SUBMISSION_SC_ON`;
ALTER TABLE `MI_ISO_PROFILE` drop column `BID_SUBMISSION_ISO_HOUR`   ;
ALTER TABLE `MI_ISO_PROFILE` drop column `BID_SUBMISSION_ISO_MINUTE` ;
ALTER TABLE `MI_ISO_PROFILE` drop column `BID_SUBMISSION_ISO_ON`;
ALTER TABLE `MI_ISO_PROFILE` drop column `AUTO_BID_LOW_RISK` ;
ALTER TABLE `MI_ISO_PROFILE` drop column `AUTO_BID_LOW_RISK_HOUR`   ;
ALTER TABLE `MI_ISO_PROFILE` drop column `AUTO_BID_LOW_RISK_MINUTE` ;
ALTER TABLE `MI_ISO_PROFILE` drop column `AUTO_BID_LOW_RISK_ON`;



ALTER TABLE `MI_ISO_PROFILE_PRODUCT` add column `BID_ON_MONDAY` tinyint(1) DEFAULT 1;
ALTER TABLE `MI_ISO_PROFILE_PRODUCT` add column `BID_ON_TUESDAY` tinyint(1) DEFAULT 1;
ALTER TABLE `MI_ISO_PROFILE_PRODUCT` add column `BID_ON_WEDNESDAY` tinyint(1) DEFAULT 1;
ALTER TABLE `MI_ISO_PROFILE_PRODUCT` add column `BID_ON_THURSDAY` tinyint(1) DEFAULT 1;
ALTER TABLE `MI_ISO_PROFILE_PRODUCT` add column `BID_ON_FRIDAY` tinyint(1) DEFAULT 1;
ALTER TABLE `MI_ISO_PROFILE_PRODUCT` add column `BID_ON_SATURDAY` tinyint(1) DEFAULT 1;
ALTER TABLE `MI_ISO_PROFILE_PRODUCT` add column `BID_ON_SUNDAY` tinyint(1) DEFAULT 1;

ALTER TABLE `MI_ISO_PROFILE_PRODUCT` add column `BID_SUBMISSION_SC_HOUR` int(2) DEFAULT 0;
ALTER TABLE `MI_ISO_PROFILE_PRODUCT` add column `BID_SUBMISSION_SC_MINUTE` int(2) DEFAULT 0;
ALTER TABLE `MI_ISO_PROFILE_PRODUCT` add column `BID_SUBMISSION_SC_ON` VARCHAR(20);

ALTER TABLE `MI_ISO_PROFILE_PRODUCT` add column `BID_SUBMISSION_ISO_HOUR` int(2) DEFAULT 0;
ALTER TABLE `MI_ISO_PROFILE_PRODUCT` add column `BID_SUBMISSION_ISO_MINUTE` int(2) DEFAULT 0;
ALTER TABLE `MI_ISO_PROFILE_PRODUCT` add column `BID_SUBMISSION_ISO_ON` VARCHAR(20);


ALTER TABLE `MI_ISO_PROFILE_PRODUCT` add column `AUTO_BID_LOW_RISK` tinyint(1) DEFAULT 0;

ALTER TABLE `MI_ISO_PROFILE_PRODUCT` add column `AUTO_BID_LOW_RISK_HOUR` int(2) DEFAULT 0;
ALTER TABLE `MI_ISO_PROFILE_PRODUCT` add column `AUTO_BID_LOW_RISK_MINUTE` int(2) DEFAULT 0;
ALTER TABLE `MI_ISO_PROFILE_PRODUCT` add column `AUTO_BID_LOW_RISK_ON` VARCHAR(20);
