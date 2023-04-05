DROP TABLE IF EXISTS `MI_ISO_PROFILE_PRODUCT`;

CREATE TABLE `MI_ISO_PROFILE_PRODUCT` (
  `ID` bigint(20) NOT NULL,
  `UUID` varchar(55) NOT NULL,
  `MI_ISO_PROFILE_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `TYPE` enum('PDR','RDRR') NOT NULL,
  `MARKET_TYPE` enum('REAL_TIME','DAY_AHEAD') NOT NULL,
  `RESOURCE_MIN_CAPACITY` int(11) NOT NULL,
  `RESOURCE_MIN_CAPACITY_UNIT` enum('KW','MW') NOT NULL,
  `TELEMETRY_MIN_THRESHOLD` int(11) NOT NULL,
  `TELEMETRY_MIN_THRESHOLD_UNIT` enum('KW','MW') NOT NULL,
  `METER_INTERVAL_TYPE` enum('HOUR_1','MINUTES_15', 'MINUTES_5') NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_MI_ISO_PRODUCT_MI_ISO_PROFILE_idx` (`MI_ISO_PROFILE_ID`),
  CONSTRAINT `fk_MI_ISO_PRODUCT_MI_ISO_PROFILE` FOREIGN KEY (`MI_ISO_PROFILE_ID`) REFERENCES `MI_ISO_PROFILE` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;