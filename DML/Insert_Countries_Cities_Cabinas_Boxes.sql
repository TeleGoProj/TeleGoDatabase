
Insert into COUNTRY (COUNTRY_ID,NAME_EN,NAME_AR,CODE,PHONE_CODE,UI_STYLE) values (1,'Egypt','مصر','EG','+20','eg');
Insert into COUNTRY (COUNTRY_ID,NAME_EN,NAME_AR,CODE,PHONE_CODE,UI_STYLE) values (2,'United States','الولايات المتحدة','USA','+1','us');
Insert into COUNTRY (COUNTRY_ID,NAME_EN,NAME_AR,CODE,PHONE_CODE,UI_STYLE) values (3,'India','الهند','IN','+91','in');
Insert into COUNTRY (COUNTRY_ID,NAME_EN,NAME_AR,CODE,PHONE_CODE,UI_STYLE) values (4,'France','فرنسا','FR','+33','fr');
Insert into COUNTRY (COUNTRY_ID,NAME_EN,NAME_AR,CODE,PHONE_CODE,UI_STYLE) values (5,'Germany','المانيا','GR','+49','de');
Insert into COUNTRY (COUNTRY_ID,NAME_EN,NAME_AR,CODE,PHONE_CODE,UI_STYLE) values (6,'Russia','روسيا','RU','+20','eg');
Insert into COUNTRY (COUNTRY_ID,NAME_EN,NAME_AR,CODE,PHONE_CODE,UI_STYLE) values (1000,'United Kingdom','بريطانيا','UK','+44','gb');
Insert into COUNTRY (COUNTRY_ID,NAME_EN,NAME_AR,CODE,PHONE_CODE,UI_STYLE) values (7,'Mixo','لمكسيك','MX','+99','mx');


Insert into CITY (CITY_ID,COUNTRY_ID,NAME_EN,NAME_AR,CODE,PHONE_CODE) values (1,1,'Cairo','القاهرة',null,null);
Insert into CITY (CITY_ID,COUNTRY_ID,NAME_EN,NAME_AR,CODE,PHONE_CODE) values (2,1,'Alexandria','الإسكندرية',null,null);
Insert into CITY (CITY_ID,COUNTRY_ID,NAME_EN,NAME_AR,CODE,PHONE_CODE) values (3,2,'New Yourk','نيويورك',null,'01');
Insert into CITY (CITY_ID,COUNTRY_ID,NAME_EN,NAME_AR,CODE,PHONE_CODE) values (4,2,'Washington','واشنطون',null,'02');
Insert into CITY (CITY_ID,COUNTRY_ID,NAME_EN,NAME_AR,CODE,PHONE_CODE) values (1020,4,'Paris','باريس',null,'055');
Insert into CITY (CITY_ID,COUNTRY_ID,NAME_EN,NAME_AR,CODE,PHONE_CODE) values (1040,1,'Tanata','طنطا',null,null);





Insert into AREA (AREA_ID,AREA_NAME_EN,AREA_NAME_AR,CITY_ID) values (1,'Maadi','المعادي',1);
Insert into AREA (AREA_ID,AREA_NAME_EN,AREA_NAME_AR,CITY_ID) values (2,'Nasr City','مدينة نصر',1);
Insert into AREA (AREA_ID,AREA_NAME_EN,AREA_NAME_AR,CITY_ID) values (3,'Gleem','جليم',2);
Insert into AREA (AREA_ID,AREA_NAME_EN,AREA_NAME_AR,CITY_ID) values (4,'Asafra','العصافرة',2);
Insert into AREA (AREA_ID,AREA_NAME_EN,AREA_NAME_AR,CITY_ID) values (5,'Washington Center','وسط واشنطن',3);
Insert into AREA (AREA_ID,AREA_NAME_EN,AREA_NAME_AR,CITY_ID) values (6,'Washington X','واشنطون اكس',3);
Insert into AREA (AREA_ID,AREA_NAME_EN,AREA_NAME_AR,CITY_ID) values (7,'Paris_Area_1','باريس الحي الاول',1020);



Insert into CABIN (CABIN_ID,CABIN_NAME,AREA_ID) values (1,'Cabin Maadi 1',1);
Insert into CABIN (CABIN_ID,CABIN_NAME,AREA_ID) values (2,'Cabin Maadi 2',1);
Insert into CABIN (CABIN_ID,CABIN_NAME,AREA_ID) values (3,'Cabin Nasr City 1',2);
Insert into CABIN (CABIN_ID,CABIN_NAME,AREA_ID) values (4,'Cabin Nasr City 2',2);
Insert into CABIN (CABIN_ID,CABIN_NAME,AREA_ID) values (5,'Cabin Gleem 1',3);
Insert into CABIN (CABIN_ID,CABIN_NAME,AREA_ID) values (6,'Cabin Asafra 1',4);
Insert into CABIN (CABIN_ID,CABIN_NAME,AREA_ID) values (7,'Cabin Waishngton 1',5);
Insert into CABIN (CABIN_ID,CABIN_NAME,AREA_ID) values (8,'Cabin Paris 1',7);




Insert into BOX (BOX_ID,BOX_NAME,CABIN_ID,LONGITUDE,LATITUDE,STREET_NAME) values (1,'454',1,null,null,null);
Insert into BOX (BOX_ID,BOX_NAME,CABIN_ID,LONGITUDE,LATITUDE,STREET_NAME) values (2,'4891',1,null,null,null);
Insert into BOX (BOX_ID,BOX_NAME,CABIN_ID,LONGITUDE,LATITUDE,STREET_NAME) values (3,'8918',2,null,null,null);
Insert into BOX (BOX_ID,BOX_NAME,CABIN_ID,LONGITUDE,LATITUDE,STREET_NAME) values (4,'7812',2,null,null,null);
Insert into BOX (BOX_ID,BOX_NAME,CABIN_ID,LONGITUDE,LATITUDE,STREET_NAME) values (5,'0091',3,null,null,null);
Insert into BOX (BOX_ID,BOX_NAME,CABIN_ID,LONGITUDE,LATITUDE,STREET_NAME) values (6,'Ko10',4,null,null,null);
Insert into BOX (BOX_ID,BOX_NAME,CABIN_ID,LONGITUDE,LATITUDE,STREET_NAME) values (7,'9200',5,null,null,null);
Insert into BOX (BOX_ID,BOX_NAME,CABIN_ID,LONGITUDE,LATITUDE,STREET_NAME) values (8,'1234',6,null,null,null);
Insert into BOX (BOX_ID,BOX_NAME,CABIN_ID,LONGITUDE,LATITUDE,STREET_NAME) values (9,'2965',6,null,null,null);
Insert into BOX (BOX_ID,BOX_NAME,CABIN_ID,LONGITUDE,LATITUDE,STREET_NAME) values (10,'7777',7,null,null,null);
Insert into BOX (BOX_ID,BOX_NAME,CABIN_ID,LONGITUDE,LATITUDE,STREET_NAME) values (11,'Paris_Box1',8,null,null,null);
