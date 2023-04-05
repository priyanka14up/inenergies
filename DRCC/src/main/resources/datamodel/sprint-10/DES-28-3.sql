ALTER TABLE `PLAN_INSTANCE`
  DROP FOREIGN KEY `FK_RATE_PLAN_SA_ENROLLMENT`;

ALTER TABLE `PLAN_INSTANCE`
  DROP COLUMN `RATE_PLAN_SA_ENROLLMENT_ID`;

ALTER TABLE `PLAN_INSTANCE`
  ADD COLUMN `RATE_PLAN_ENROLLMENT_ID` bigint(20) DEFAULT NULL;

ALTER TABLE `PLAN_INSTANCE`
  ADD CONSTRAINT `RATE_PLAN_ENROLLMENT_ID`
FOREIGN KEY (`RATE_PLAN_ENROLLMENT_ID`) REFERENCES `RATE_PLAN_ENROLLMENT` (`ID`)
ON DELETE NO ACTION ON UPDATE NO ACTION;