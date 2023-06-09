ALTER TABLE `MI_ISO_PROFILE` add column `BID_ON_MONDAY` tinyint(1) DEFAULT 1;
ALTER TABLE `MI_ISO_PROFILE` add column `BID_ON_TUESDAY` tinyint(1) DEFAULT 1;
ALTER TABLE `MI_ISO_PROFILE` add column `BID_ON_WEDNESDAY` tinyint(1) DEFAULT 1;
ALTER TABLE `MI_ISO_PROFILE` add column `BID_ON_THURSDAY` tinyint(1) DEFAULT 1;
ALTER TABLE `MI_ISO_PROFILE` add column `BID_ON_FRIDAY` tinyint(1) DEFAULT 1;
ALTER TABLE `MI_ISO_PROFILE` add column `BID_ON_SATURDAY` tinyint(1) DEFAULT 1;
ALTER TABLE `MI_ISO_PROFILE` add column `BID_ON_SUNDAY` tinyint(1) DEFAULT 1;

ALTER TABLE `MI_ISO_PROFILE` add column `BID_SUBMISSION_SC_HOUR` int(2) DEFAULT 0;
ALTER TABLE `MI_ISO_PROFILE` add column `BID_SUBMISSION_SC_MINUTE` int(2) DEFAULT 0;
ALTER TABLE `MI_ISO_PROFILE` add column `BID_SUBMISSION_SC_ON`
enum('Trade Day - 1','Trade Day','Trade Hour') DEFAULT NULL;

ALTER TABLE `MI_ISO_PROFILE` add column `BID_SUBMISSION_ISO_HOUR` int(2) DEFAULT 0;
ALTER TABLE `MI_ISO_PROFILE` add column `BID_SUBMISSION_ISO_MINUTE` int(2) DEFAULT 0;
ALTER TABLE `MI_ISO_PROFILE` add column `BID_SUBMISSION_ISO_ON`
enum('Trade Day - 1','Trade Day','Trade Hour') DEFAULT NULL;

ALTER TABLE `MI_ISO_PROFILE` add column `AUTO_BID_LOW_RISK` tinyint(1) DEFAULT 0;

ALTER TABLE `MI_ISO_PROFILE` add column `AUTO_BID_LOW_RISK_HOUR` int(2) DEFAULT 0;
ALTER TABLE `MI_ISO_PROFILE` add column `AUTO_BID_LOW_RISK_MINUTE` int(2) DEFAULT 0;
ALTER TABLE `MI_ISO_PROFILE` add column `AUTO_BID_LOW_RISK_ON`
enum('Trade Day - 1','Trade Day','Trade Hour') DEFAULT NULL;