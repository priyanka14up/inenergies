ALTER TABLE `AWARD_EXCEPTION` DROP FOREIGN KEY `FK_AWARD_EXCEPTION`;
ALTER TABLE `AWARD_EXCEPTION` DROP KEY `FK_AWARD_EXCEPTION`;
ALTER TABLE `AWARD_EXCEPTION` ADD COLUMN `DISPATCH_BATCH_ID` bigint(20) UNSIGNED NOT NULL;
ALTER TABLE `AWARD_EXCEPTION` ADD CONSTRAINT `FK_AWARD_EXCEPTION` FOREIGN KEY (`DISPATCH_BATCH_ID`) REFERENCES `DISPATCH_BATCH` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION;