ALTER TABLE SERVICE_POINT DROP COLUMN STATUS;

DELETE FROM ENTITY_HISTORY WHERE ENTITY_NAME = 'ServicePoint' AND FIELD_NAME = 'status';