ALTER TABLE PROGRAM_PROFILE ADD COLUMN DEFAULT_BID_HOURS_FROM VARCHAR(10);
ALTER TABLE PROGRAM_PROFILE ADD COLUMN DEFAULT_BID_HOURS_TO VARCHAR(10);
ALTER TABLE PROGRAM_PROFILE ADD COLUMN MIN_TIME_SHED_LOAD_TIME INTEGER(10);
ALTER TABLE PROGRAM_PROFILE ADD COLUMN MIN_TIME_SHED_LOAD_UNIT VARCHAR(20);