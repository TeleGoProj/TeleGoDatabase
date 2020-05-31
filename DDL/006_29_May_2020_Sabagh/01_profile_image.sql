ALTER TABLE PHONE_USER DROP COLUMN IMAGE_PATH;

ALTER TABLE PHONE_USER ADD (IMAGE BLOB );

ALTER TABLE COUNTRY ADD (PHONE_CODE VARCHAR2(5 CHAR) );

ALTER TABLE COUNTRY ADD (UI_STYLE VARCHAR2(7 CHAR) );

ALTER TABLE COUNTRY  MODIFY (PHONE_CODE DEFAULT '+20' );

ALTER TABLE COUNTRY  MODIFY (UI_STYLE DEFAULT 'eg' );

ALTER TABLE CITY ADD (PHONE_CODE VARCHAR2(5 CHAR) );

ALTER TABLE PHONE_USER 
ADD (LANDLINE_PHONE_ID NUMBER );

ALTER TABLE PHONE_USER
ADD CONSTRAINT PHONE_USER_LANDLINE_FK1 FOREIGN KEY
(
  LANDLINE_PHONE_ID 
)
REFERENCES LANDLINE_PHONE
(
  LANDLINE_PHONE_ID 
)
ENABLE;

