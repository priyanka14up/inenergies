ALTER TABLE `ENTITY_HISTORY` MODIFY COLUMN `OLD_VALUE` text(65535) DEFAULT NULL;
ALTER TABLE `ENTITY_HISTORY` MODIFY COLUMN `NEW_VALUE` text(65535) DEFAULT NULL;