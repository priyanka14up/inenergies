CREATE TABLE `RISK_CONDITION` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `UUID` varchar(55) NOT NULL,
  `MI_ISO_PROFILE_ID` bigint(20) NOT NULL,
  `CATEGORY` enum('CAPACITY','FATIGUE','PROGRAM') NOT NULL,
  `SOURCE` enum('FORECASTED_FSL','P_MIN','P_MAX','CONSECUTIVE_DISPATCH_DAYS_THRESHOLD','MAX_HOURS_ACHIEVED') NOT NULL,
  `TARGET` enum('FORECASTED_FSL','P_MIN','P_MAX','CONSECUTIVE_DISPATCH_DAYS_THRESHOLD','MAX_HOURS_ACHIEVED','CUSTOM') NOT NULL,
  `COMPARISON_OPERATOR` enum('EQ','NE','LT','LE','GE','GT') NOT NULL,
  `CUSTOM_VALUE` decimal(7,2),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;