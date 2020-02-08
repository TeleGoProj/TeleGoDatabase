--------------------------------------------------------
--  File created - Sunday-November-17-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table AREA
--------------------------------------------------------

  CREATE TABLE "PHONE"."AREA" 
   (	"AREA_ID" NUMBER, 
	"AREA_NAME_EN" VARCHAR2(500 BYTE), 
	"AREA_NAME_AR" VARCHAR2(500 BYTE), 
	"CITY_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table BOX
--------------------------------------------------------

  CREATE TABLE "PHONE"."BOX" 
   (	"BOX_ID" NUMBER, 
	"BOX_NAME" VARCHAR2(500 BYTE), 
	"AREA_ID" NUMBER, 
	"CABIN_ID" NUMBER, 
	"LONGITUDE" FLOAT(126), 
	"LATITUDE" FLOAT(126), 
	"STREET_NAME" VARCHAR2(500 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table CABIN
--------------------------------------------------------

  CREATE TABLE "PHONE"."CABIN" 
   (	"CABIN_ID" NUMBER, 
	"CABIN_NAME" VARCHAR2(500 BYTE), 
	"CITY_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table CITY
--------------------------------------------------------

  CREATE TABLE "PHONE"."CITY" 
   (	"CITY_ID" NUMBER, 
	"COUNTRY_ID" NUMBER, 
	"NAME_EN" VARCHAR2(20 BYTE), 
	"NAME_AR" VARCHAR2(500 BYTE), 
	"CODE" VARCHAR2(100 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table COUNTRY
--------------------------------------------------------

  CREATE TABLE "PHONE"."COUNTRY" 
   (	"COUNTRY_ID" NUMBER, 
	"NAME_EN" VARCHAR2(500 BYTE), 
	"NAME_AR" VARCHAR2(20 BYTE), 
	"CODE" VARCHAR2(100 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table FEATURE
--------------------------------------------------------

  CREATE TABLE "PHONE"."FEATURE" 
   (	"FEATURE_ID" NUMBER, 
	"NAME" VARCHAR2(500 BYTE), 
	"VALUE" VARCHAR2(500 BYTE), 
	"TYPE" VARCHAR2(500 BYTE), 
	"CATEGORY" VARCHAR2(500 BYTE), 
	"PARENT_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table LANDLINE_PHONE
--------------------------------------------------------

  CREATE TABLE "PHONE"."LANDLINE_PHONE" 
   (	"LANDLINE_PHONE_ID" NUMBER, 
	"COUNTRY_PHONE_KEY" NUMBER, 
	"CITY_PHONE_KEY" NUMBER, 
	"PHONE_NUMBER" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table PHONE_USER
--------------------------------------------------------

  CREATE TABLE "PHONE"."PHONE_USER" 
   (	"USER_ID" NUMBER, 
	"LOGIN_NAME" VARCHAR2(500 BYTE), 
	"LOGIN_PASSWORD" VARCHAR2(500 BYTE), 
	"CREATION_DATE" DATE, 
	"F_NAME" VARCHAR2(500 BYTE), 
	"M_NAME" VARCHAR2(500 BYTE), 
	"L_NAME" VARCHAR2(500 BYTE), 
	"ORGANIZATION_TYPE" NUMBER DEFAULT 1, 
	"EMAIL" VARCHAR2(500 BYTE), 
	"IMAGE_PATH" VARCHAR2(2048 BYTE), 
	"ADDRESS" VARCHAR2(4000 BYTE), 
	"BOX_ID" NUMBER, 
	"LANDLINE_PHONE_ID" NUMBER, 
	"MOBILE_PHONE" VARCHAR2(100 BYTE), 
	"ORGANIZATION_NAME" VARCHAR2(500 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table USER_FEATURE
--------------------------------------------------------

  CREATE TABLE "PHONE"."USER_FEATURE" 
   (	"USER_FEATURE_ID" NUMBER, 
	"USER_ID" NUMBER, 
	"FEATURE_ID" NUMBER
   ) ;
REM INSERTING into PHONE.AREA
SET DEFINE OFF;
REM INSERTING into PHONE.BOX
SET DEFINE OFF;
REM INSERTING into PHONE.CABIN
SET DEFINE OFF;
REM INSERTING into PHONE.CITY
SET DEFINE OFF;
REM INSERTING into PHONE.COUNTRY
SET DEFINE OFF;
REM INSERTING into PHONE.FEATURE
SET DEFINE OFF;
REM INSERTING into PHONE.LANDLINE_PHONE
SET DEFINE OFF;
REM INSERTING into PHONE.PHONE_USER
SET DEFINE OFF;
REM INSERTING into PHONE.USER_FEATURE
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index AREA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PHONE"."AREA_PK" ON "PHONE"."AREA" ("AREA_ID") 
  ;
--------------------------------------------------------
--  DDL for Index BOX_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PHONE"."BOX_PK" ON "PHONE"."BOX" ("BOX_ID") 
  ;
--------------------------------------------------------
--  DDL for Index CABIN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PHONE"."CABIN_PK" ON "PHONE"."CABIN" ("CABIN_ID") 
  ;
--------------------------------------------------------
--  DDL for Index CITY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PHONE"."CITY_PK" ON "PHONE"."CITY" ("CITY_ID") 
  ;
--------------------------------------------------------
--  DDL for Index COUNTRY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PHONE"."COUNTRY_PK" ON "PHONE"."COUNTRY" ("COUNTRY_ID") 
  ;
--------------------------------------------------------
--  DDL for Index FEATURE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PHONE"."FEATURE_PK" ON "PHONE"."FEATURE" ("FEATURE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index LANDLINE_PHONE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PHONE"."LANDLINE_PHONE_PK" ON "PHONE"."LANDLINE_PHONE" ("LANDLINE_PHONE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PHONE_USER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PHONE"."PHONE_USER_PK" ON "PHONE"."PHONE_USER" ("USER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index USER_FEATURE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PHONE"."USER_FEATURE_PK" ON "PHONE"."USER_FEATURE" ("USER_FEATURE_ID") 
  ;
--------------------------------------------------------
--  Constraints for Table AREA
--------------------------------------------------------

  ALTER TABLE "PHONE"."AREA" ADD CONSTRAINT "AREA_PK" PRIMARY KEY ("AREA_ID") ENABLE;
  ALTER TABLE "PHONE"."AREA" MODIFY ("AREA_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOX
--------------------------------------------------------

  ALTER TABLE "PHONE"."BOX" ADD CONSTRAINT "BOX_PK" PRIMARY KEY ("BOX_ID") ENABLE;
  ALTER TABLE "PHONE"."BOX" MODIFY ("BOX_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CABIN
--------------------------------------------------------

  ALTER TABLE "PHONE"."CABIN" ADD CONSTRAINT "CABIN_PK" PRIMARY KEY ("CABIN_ID") ENABLE;
  ALTER TABLE "PHONE"."CABIN" MODIFY ("CABIN_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CITY
--------------------------------------------------------

  ALTER TABLE "PHONE"."CITY" ADD CONSTRAINT "CITY_PK" PRIMARY KEY ("CITY_ID") ENABLE;
  ALTER TABLE "PHONE"."CITY" MODIFY ("NAME_EN" NOT NULL ENABLE);
  ALTER TABLE "PHONE"."CITY" MODIFY ("COUNTRY_ID" NOT NULL ENABLE);
  ALTER TABLE "PHONE"."CITY" MODIFY ("CITY_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COUNTRY
--------------------------------------------------------

  ALTER TABLE "PHONE"."COUNTRY" ADD CONSTRAINT "COUNTRY_PK" PRIMARY KEY ("COUNTRY_ID") ENABLE;
  ALTER TABLE "PHONE"."COUNTRY" MODIFY ("NAME_AR" NOT NULL ENABLE);
  ALTER TABLE "PHONE"."COUNTRY" MODIFY ("NAME_EN" NOT NULL ENABLE);
  ALTER TABLE "PHONE"."COUNTRY" MODIFY ("COUNTRY_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FEATURE
--------------------------------------------------------

  ALTER TABLE "PHONE"."FEATURE" ADD CONSTRAINT "FEATURE_PK" PRIMARY KEY ("FEATURE_ID") ENABLE;
  ALTER TABLE "PHONE"."FEATURE" MODIFY ("FEATURE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LANDLINE_PHONE
--------------------------------------------------------

  ALTER TABLE "PHONE"."LANDLINE_PHONE" ADD CONSTRAINT "LANDLINE_PHONE_PK" PRIMARY KEY ("LANDLINE_PHONE_ID") ENABLE;
  ALTER TABLE "PHONE"."LANDLINE_PHONE" MODIFY ("LANDLINE_PHONE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PHONE_USER
--------------------------------------------------------

  ALTER TABLE "PHONE"."PHONE_USER" ADD CONSTRAINT "PHONE_USER_PK" PRIMARY KEY ("USER_ID") ENABLE;
  ALTER TABLE "PHONE"."PHONE_USER" MODIFY ("LOGIN_PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "PHONE"."PHONE_USER" MODIFY ("LOGIN_NAME" NOT NULL ENABLE);
  ALTER TABLE "PHONE"."PHONE_USER" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USER_FEATURE
--------------------------------------------------------

  ALTER TABLE "PHONE"."USER_FEATURE" ADD CONSTRAINT "USER_FEATURE_PK" PRIMARY KEY ("USER_FEATURE_ID") ENABLE;
  ALTER TABLE "PHONE"."USER_FEATURE" MODIFY ("USER_FEATURE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table AREA
--------------------------------------------------------

  ALTER TABLE "PHONE"."AREA" ADD CONSTRAINT "AREA_CITY_FK" FOREIGN KEY ("CITY_ID")
	  REFERENCES "PHONE"."CITY" ("CITY_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BOX
--------------------------------------------------------

  ALTER TABLE "PHONE"."BOX" ADD CONSTRAINT "BOX_AREA_FK" FOREIGN KEY ("AREA_ID")
	  REFERENCES "PHONE"."AREA" ("AREA_ID") ENABLE;
  ALTER TABLE "PHONE"."BOX" ADD CONSTRAINT "BOX_CABIN_FK" FOREIGN KEY ("CABIN_ID")
	  REFERENCES "PHONE"."CABIN" ("CABIN_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CABIN
--------------------------------------------------------

  ALTER TABLE "PHONE"."CABIN" ADD CONSTRAINT "CABIN_CITY_FK" FOREIGN KEY ("CITY_ID")
	  REFERENCES "PHONE"."CITY" ("CITY_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CITY
--------------------------------------------------------

  ALTER TABLE "PHONE"."CITY" ADD CONSTRAINT "CITY_COUNTRY_FK1" FOREIGN KEY ("COUNTRY_ID")
	  REFERENCES "PHONE"."COUNTRY" ("COUNTRY_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FEATURE
--------------------------------------------------------

  ALTER TABLE "PHONE"."FEATURE" ADD CONSTRAINT "FEATURE_FEATURE_FK1" FOREIGN KEY ("FEATURE_ID")
	  REFERENCES "PHONE"."FEATURE" ("FEATURE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PHONE_USER
--------------------------------------------------------

  ALTER TABLE "PHONE"."PHONE_USER" ADD CONSTRAINT "PHONE_USER_BOX_FK" FOREIGN KEY ("BOX_ID")
	  REFERENCES "PHONE"."BOX" ("BOX_ID") ENABLE;
  ALTER TABLE "PHONE"."PHONE_USER" ADD CONSTRAINT "PHONE_USER_LAND_PHONE_FK" FOREIGN KEY ("LANDLINE_PHONE_ID")
	  REFERENCES "PHONE"."LANDLINE_PHONE" ("LANDLINE_PHONE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USER_FEATURE
--------------------------------------------------------

  ALTER TABLE "PHONE"."USER_FEATURE" ADD CONSTRAINT "USER_FEATURE_FEATURE_FK" FOREIGN KEY ("FEATURE_ID")
	  REFERENCES "PHONE"."FEATURE" ("FEATURE_ID") ENABLE;
  ALTER TABLE "PHONE"."USER_FEATURE" ADD CONSTRAINT "USER_FEATURE_USER_FK" FOREIGN KEY ("USER_ID")
	  REFERENCES "PHONE"."PHONE_USER" ("USER_ID") ENABLE;
