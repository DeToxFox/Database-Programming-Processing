-- Course Name: Database Programming and Data Processing
-- Projected Title: Software Developer Course Assessment QAP1
-- Author: David Turner

INSERT INTO "David_Turner_DB_QAP1".passenger_list VALUES(1, 'david', 'turner', '3067235555');
INSERT INTO "David_Turner_DB_QAP1".passenger_list VALUES(2, 'tristan', 'turner', '3067235555');
INSERT INTO "David_Turner_DB_QAP1".passenger_list VALUES(3, 'sarah', 'churchill', '7095551234');
INSERT INTO "David_Turner_DB_QAP1".passenger_list VALUES(4, 'rodi', 'snow', '7801239756');
INSERT INTO "David_Turner_DB_QAP1".passenger_list VALUES(5, 'conner', 'mcdavid', '780111111');
INSERT INTO "David_Turner_DB_QAP1".passenger_list VALUES(6, 'jason', 'voorhees', '2505983215');
INSERT INTO "David_Turner_DB_QAP1".passenger_list VALUES(7, 'freddy', 'krueger', '709546879');
INSERT INTO "David_Turner_DB_QAP1".passenger_list VALUES(8, 'hannah', 'banana', '1234567890');

DELETE from "David_Turner_DB_QAP1".passenger_list where "id" ='8';

SELECT * FROM "David_Turner_DB_QAP1".passenger_list;
SELECT * FROM "David_Turner_DB_QAP1".passenger_list order by id ASC;

UPDATE "David_Turner_DB_QAP1".passenger_list set "first_name" = 'freddy', phone_number= '7091234567' where phone_number = '709546879';
UPDATE "David_Turner_DB_QAP1".passenger_list set "first_name" = 'conner', phone_number= '7801111111' where phone_number = '780111111';
UPDATE "David_Turner_DB_QAP1".passenger_list set "id" = 5, first_name = 'connor' where first_name = 'conner';
SELECT * FROM "David_Turner_DB_QAP1".passenger_list;
SELECT * FROM "David_Turner_DB_QAP1".passenger_list order by id ASC;
SELECT * FROM "David_Turner_DB_QAP1".passenger_list order by id DESC;

INSERT INTO "David_Turner_DB_QAP1".cities VALUES(1, 'st johns', 'nl', 113948);
INSERT INTO "David_Turner_DB_QAP1".cities VALUES(2, 'toronto', 'on', 5928000);
INSERT INTO "David_Turner_DB_QAP1".cities VALUES(3, 'edmonton', 'ab', 981280);
INSERT INTO "David_Turner_DB_QAP1".cities VALUES(4, 'calgary', 'ab', 1306780);
INSERT INTO "David_Turner_DB_QAP1".cities VALUES(5, 'regina', 'sk', 228928);
INSERT INTO "David_Turner_DB_QAP1".cities VALUES(6, 'saskatoon', 'sk', 273010);
INSERT INTO "David_Turner_DB_QAP1".cities VALUES(7, 'vancouver', 'bc', 675218);
INSERT INTO "David_Turner_DB_QAP1".cities VALUES(8, 'victoria', 'bc', 92141);

SELECT * FROM "David_Turner_DB_QAP1".cities;

-- St John's NL Airport
INSERT INTO "David_Turner_DB_QAP1".airports VALUES(1, 'st johns international airport', 'YYT');  

-- Greater Toronto ON Area International Airport
INSERT INTO "David_Turner_DB_QAP1".airports VALUES(2, 'pearson', 'YYZ'); 

-- Greater Toronto ON Area Regional Airport
INSERT INTO "David_Turner_DB_QAP1".airports VALUES(3, 'billy bishop', 'YOS');

-- Edmonton AB International Airport
INSERT INTO "David_Turner_DB_QAP1".airports VALUES(4, 'yeg edmonton international airport', 'YEG');

-- Calgary AB International Airport
INSERT INTO "David_Turner_DB_QAP1".airports VALUES(5, 'calgary international airport', 'YYC');

-- Calgary / Okotoks AB Regional Airport
INSERT INTO "David_Turner_DB_QAP1".airports VALUES(6, 'calgary okotoks airranch airport', 'CFX2');

-- Regina SK International Airport
INSERT INTO "David_Turner_DB_QAP1".airports VALUES(7, 'regina international airport', 'YQR');

-- Saskatoon SK International Airport
INSERT INTO "David_Turner_DB_QAP1".airports VALUES(8, 'saskatoon john g diefenbaker international airport', 'YXE');

-- Vancouver BC International Airport
INSERT INTO "David_Turner_DB_QAP1".airports VALUES(9, 'vancouver international airport', 'YVR');

-- Greater Vancouver BC International Airport
INSERT INTO "David_Turner_DB_QAP1".airports VALUES(10, 'abbotsford international airport', 'YXX');

-- Victoria BC International Airport
INSERT INTO "David_Turner_DB_QAP1".airports VALUES(11, 'victoria international airport', 'YYJ');

SELECT * FROM "David_Turner_DB_QAP1".airports;

INSERT INTO "David_Turner_DB_QAP1".aircraft VALUES(1, 'wide body', 'canada air', 300);
INSERT INTO "David_Turner_DB_QAP1".aircraft VALUES(2, 'narrow body', 'short distance airlines', 150);
INSERT INTO "David_Turner_DB_QAP1".aircraft VALUES(3, 'turboprop', 'holy sh** handle jetlines', 80);

SELECT * FROM "David_Turner_DB_QAP1".aircraft;

-- ALTER TABLE "David_Turner_DB_QAP1".airports ADD CONSTRAINT "David_Turner_DB_QAP1".airports PRIMARY KEY (airports.airport_name, airport_name);
-- ALTER TABLE "David_Turner_DB_QAP1".airports ADD CONSTRAINT "David_Turner_DB_QAP1"

-- ADD PRIMARY KEY ""David_Turner_DB_QAP1".airports(airport_name);

SELECT * FROM "David_Turner_DB_QAP1".airports order by id ASC;
SELECT * FROM "David_Turner_DB_QAP1".cities order by id ASC;


UPDATE "David_Turner_DB_QAP1".airports set "city_id" = 1 where id in (1);
UPDATE "David_Turner_DB_QAP1".airports set "city_id" = 2 where id in (2,3);
UPDATE "David_Turner_DB_QAP1".airports set "city_id" = 3 where id in (4);
UPDATE "David_Turner_DB_QAP1".airports set "city_id" = 4 where id in (5,6);
UPDATE "David_Turner_DB_QAP1".airports set "city_id" = 5 where id in (7);
UPDATE "David_Turner_DB_QAP1".airports set "city_id" = 6 where id in (8);
UPDATE "David_Turner_DB_QAP1".airports set "city_id" = 7 where id in (9,10);
UPDATE "David_Turner_DB_QAP1".airports SET "city_id" = 8 WHERE id IN (11);


SELECT * FROM "David_Turner_DB_QAP1".aircraft;

select airports."airport_name", airports."airportCode"
from "David_Turner_DB_QAP1".airports
where airports.city_id = 4

-- SQL Select STATEMENT Number 1
select airports."airport_name", cities."city_name"
from "David_Turner_DB_QAP1".airports, "David_Turner_DB_QAP1".cities
where cities.id = airports.city_id
order by cities.city_name ASC;

INSERT INTO "David_Turner_DB_QAP1"."passenger_aircraft" VALUES (1,1);
INSERT INTO "David_Turner_DB_QAP1"."passenger_aircraft" VALUES (1,2);
INSERT INTO "David_Turner_DB_QAP1"."passenger_aircraft" VALUES (1,3);
INSERT INTO "David_Turner_DB_QAP1"."passenger_aircraft" VALUES (2,1);
INSERT INTO "David_Turner_DB_QAP1"."passenger_aircraft" VALUES (3,1);
INSERT INTO "David_Turner_DB_QAP1"."passenger_aircraft" VALUES (3,2);
INSERT INTO "David_Turner_DB_QAP1"."passenger_aircraft" VALUES (4,1);
INSERT INTO "David_Turner_DB_QAP1"."passenger_aircraft" VALUES (4,2);
INSERT INTO "David_Turner_DB_QAP1"."passenger_aircraft" VALUES (4,3);
INSERT INTO "David_Turner_DB_QAP1"."passenger_aircraft" VALUES (5,1);
INSERT INTO "David_Turner_DB_QAP1"."passenger_aircraft" VALUES (5,2);
INSERT INTO "David_Turner_DB_QAP1"."passenger_aircraft" VALUES (5,3);
INSERT INTO "David_Turner_DB_QAP1"."passenger_aircraft" VALUES (6,3);
INSERT INTO "David_Turner_DB_QAP1"."passenger_aircraft" VALUES (7,3);

SELECT * FROM "David_Turner_DB_QAP1".passenger_aircraft;

-- SQL Select STATEMENT Number 2
select passenger_list."first_name", passenger_list."last_name", aircraft."craft_type"
from "David_Turner_DB_QAP1".passenger_list, "David_Turner_DB_QAP1".aircraft, "David_Turner_DB_QAP1".passenger_aircraft
where passenger_list.id = passenger_aircraft.passenger_id and aircraft.id = passenger_aircraft.aircraft_id
ORDER by passenger_list.id;

-- St John's International
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (1,1,1,2);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (1,2,1,2);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (1,1,1,4);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (1,1,1,5);
-- Toronto Pearson 
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (2,1,2,1);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (2,2,2,1);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (2,3,2,3);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (2,1,2,4);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (2,1,2,5);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (2,1,2,7);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (2,1,2,8);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (2,1,2,9);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (2,2,2,4);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (2,2,2,5);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (2,2,2,7);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (2,2,2,8);
-- Toronto Billy Bishop
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (3,3,3,2);
-- Edmonton International
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (4,1,4,2);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (4,1,4,1);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (4,2,4,2);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (4,2,4,7);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (4,2,4,8);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (4,1,4,9);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (4,2,4,9);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (4,1,4,11);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (4,3,4,5);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (4,3,4,6);
-- 27 enteries at this point
-- Calgary International, 10 total enteries
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (5,1,5,2);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (5,1,5,1);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (5,2,5,2);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (5,2,5,7);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (5,2,5,8);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (5,1,5,9);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (5,2,5,9);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (5,1,5,11);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (5,3,5,4);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (5,3,5,6);
-- Calgary / Okotoks Airranch Airport, 2 total enteries
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (6,3,6,5);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (6,3,6,4);
-- Regina International, 7 total enteries
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (7,1,7,5);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (7,2,7,5);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (7,1,7,4);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (7,2,7,4);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (7,1,7,2);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (7,2,7,2);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (7,3,7,8);
-- Saskatoon International, 7 total enteries
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (8,1,8,5);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (8,2,8,5);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (8,1,8,4);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (8,2,8,4);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (8,1,8,2);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (8,2,8,2);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (8,3,8,7);
-- Vancouver International, 11 total enteries
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (9,1,9,8);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (9,2,9,8);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (9,1,9,7);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (9,2,9,7);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (9,1,9,5);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (9,2,9,5);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (9,1,9,4);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (9,2,9,4);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (9,2,9,11);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (9,3,9,11);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (9,3,9,10);
-- Abbotsford Airport, 2 total enteries
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (10,3,10,11);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (10,3,10,9);
-- Victoria International, 8 total enteries
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (11,1,11,9);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (11,2,11,9);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (11,1,11,5);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (11,2,11,5);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (11,1,11,4);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (11,2,11,4);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (11,3,11,10);
INSERT INTO "David_Turner_DB_QAP1".airport_aircraft_from_to VALUES (11,3,11,9);

SELECT * FROM "David_Turner_DB_QAP1".airport_aircraft_from_to;

INSERT INTO "David_Turner_DB_QAP1".arrivals VALUES (1,'st johns international airport');
INSERT INTO "David_Turner_DB_QAP1".arrivals VALUES (2,'pearson');
INSERT INTO "David_Turner_DB_QAP1".arrivals VALUES (3,'billy bishop');
INSERT INTO "David_Turner_DB_QAP1".arrivals VALUES (4,'yeg edmonton international airport');
INSERT INTO "David_Turner_DB_QAP1".arrivals VALUES (5,'calgary international airport');
INSERT INTO "David_Turner_DB_QAP1".arrivals VALUES (6,'calgary okotoks airranch airport');
INSERT INTO "David_Turner_DB_QAP1".arrivals VALUES (7,'regina international airport');
INSERT INTO "David_Turner_DB_QAP1".arrivals VALUES (8,'saskatoon john g diefenbaker international airport');
INSERT INTO "David_Turner_DB_QAP1".arrivals VALUES (9,'vancouver international airport');
INSERT INTO "David_Turner_DB_QAP1".arrivals VALUES (10,'abbotsford international airport');
INSERT INTO "David_Turner_DB_QAP1".arrivals VALUES (11,'victoria international airport');

SELECT * FROM "David_Turner_DB_QAP1".arrivals;

-- SQL Select STATEMENT Number 3
select airports.airport_name, aircraft.craft_type, airports.airport_name, arrivals.arrival_airport
from "David_Turner_DB_QAP1".airports, "David_Turner_DB_QAP1".aircraft, "David_Turner_DB_QAP1".airport_aircraft_from_to, "David_Turner_DB_QAP1".arrivals
where airports.id = airport_aircraft_from_to.airports_name and aircraft.id = airport_aircraft_from_to.aircraft_type
and airport_aircraft_from_to.depart_from = airports.id and arrivals.id = airport_aircraft_from_to.arrive_at
order by airports.id;

-- SQL Select STATEMENT Number 3 Alernate
select aircraft.craft_type, airports.airport_name, arrivals.arrival_airport
from "David_Turner_DB_QAP1".airports, "David_Turner_DB_QAP1".aircraft, "David_Turner_DB_QAP1".airport_aircraft_from_to, "David_Turner_DB_QAP1".arrivals
where aircraft.id = airport_aircraft_from_to.aircraft_type
and airport_aircraft_from_to.depart_from = airports.id and arrivals.id = airport_aircraft_from_to.arrive_at
order by airports.id;

-- SQL Select STATEMENT Number 3 Alernate 2
select aircraft.craft_type, airports.airport_name, airports.airport_name
from "David_Turner_DB_QAP1".airports, "David_Turner_DB_QAP1".aircraft, "David_Turner_DB_QAP1".airport_aircraft_from_to
where aircraft.id = airport_aircraft_from_to.aircraft_type and airports.id = airport_aircraft_from_to.depart_from and airports.id = airport_aircraft_from_to.arrive_at
order by airports.id;

-- SQL Select STATEMENT Number 3 Alernate 3
select aircraft.craft_type, airports.airport_name, airports.airport_name
from "David_Turner_DB_QAP1".airports, "David_Turner_DB_QAP1".aircraft, "David_Turner_DB_QAP1".airport_aircraft_from_to
where aircraft.id = airport_aircraft_from_to.aircraft_type and airports.id = airport_aircraft_from_to.depart_from and airports.id = airport_aircraft_from_to.arrive_at
order by airports.id;

INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (1,1);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (1,2);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (1,4);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (1,5);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (1,7);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (1,8);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (1,9);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (1,11);

INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (2,1);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (2,2);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (2,4);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (2,7);

INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (3,1);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (3,2);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (3,4);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (3,7);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (3,9);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (3,11);

INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (4,1);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (4,2);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (4,4);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (4,5);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (4,6);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (4,10);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (4,11);

INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (5,1);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (5,2);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (5,4);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (5,5);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (5,7);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (5,8);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (5,9);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (5,11);

INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (6,9);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (6,10);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (6,11);

INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (7,4);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (7,5);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (7,7);
INSERT INTO "David_Turner_DB_QAP1".passenger_airports VALUES (7,8);


SELECT * FROM "David_Turner_DB_QAP1".passenger_airports;

-- SQL Select STATEMENT Number 4
select passenger_list."first_name", passenger_list."last_name", airports."airport_name"
from "David_Turner_DB_QAP1".passenger_list, "David_Turner_DB_QAP1".airports, "David_Turner_DB_QAP1".passenger_airports
where passenger_list.id = passenger_airports.passenger_id and airports.id = passenger_airports.airports_id
ORDER by passenger_list.id;

-- St John's International
INSERT INTO "David_Turner_DB_QAP1".airports_aircraft VALUES (1, 1, 1);
INSERT INTO "David_Turner_DB_QAP1".airports_aircraft VALUES (2, 1, 2);
-- Pearson International
INSERT INTO "David_Turner_DB_QAP1".airports_aircraft VALUES (3, 2, 1);
INSERT INTO "David_Turner_DB_QAP1".airports_aircraft VALUES (4, 2, 2);
INSERT INTO "David_Turner_DB_QAP1".airports_aircraft VALUES (5, 2, 3);
-- Billy Bishop
INSERT INTO "David_Turner_DB_QAP1".airports_aircraft VALUES (6, 3, 3);
-- YEG Edmonton International Airport
INSERT INTO "David_Turner_DB_QAP1".airports_aircraft VALUES (7, 4, 1);
INSERT INTO "David_Turner_DB_QAP1".airports_aircraft VALUES (8, 4, 2);
INSERT INTO "David_Turner_DB_QAP1".airports_aircraft VALUES (9, 4, 3);
-- Calgary International Airport
INSERT INTO "David_Turner_DB_QAP1".airports_aircraft VALUES (10, 5, 1);
INSERT INTO "David_Turner_DB_QAP1".airports_aircraft VALUES (11, 5, 2);
INSERT INTO "David_Turner_DB_QAP1".airports_aircraft VALUES (12, 5, 3);
-- Calgary / Okotoks Airranch Airport
INSERT INTO "David_Turner_DB_QAP1".airports_aircraft VALUES (13, 6, 3);
-- Regina International Airport
INSERT INTO "David_Turner_DB_QAP1".airports_aircraft VALUES (14, 7, 1);
INSERT INTO "David_Turner_DB_QAP1".airports_aircraft VALUES (15, 7, 2);
INSERT INTO "David_Turner_DB_QAP1".airports_aircraft VALUES (16, 7, 3);
-- Saskatoon International Airport
INSERT INTO "David_Turner_DB_QAP1".airports_aircraft VALUES (17, 8, 1);
INSERT INTO "David_Turner_DB_QAP1".airports_aircraft VALUES (18, 8, 2);
INSERT INTO "David_Turner_DB_QAP1".airports_aircraft VALUES (19, 8, 3);
-- Vancouver International Airport
INSERT INTO "David_Turner_DB_QAP1".airports_aircraft VALUES (20, 9, 1);
INSERT INTO "David_Turner_DB_QAP1".airports_aircraft VALUES (21, 9, 2);
INSERT INTO "David_Turner_DB_QAP1".airports_aircraft VALUES (22, 9, 3);
-- Abbotsford International Airport
INSERT INTO "David_Turner_DB_QAP1".airports_aircraft VALUES (23, 10, 3);
-- Victorai International Airport
INSERT INTO "David_Turner_DB_QAP1".airports_aircraft VALUES (24, 11, 1);
INSERT INTO "David_Turner_DB_QAP1".airports_aircraft VALUES (25, 11, 2);
INSERT INTO "David_Turner_DB_QAP1".airports_aircraft VALUES (26, 11, 3);

SELECT * from "David_Turner_DB_QAP1".airports_aircraft;

-- SQL Select STATEMENT Number 3
-- Join tables
-- airport tbl glued onto airport id column (airports_aircraft tbl)
select aircraft."craft_type", airports."airport_name"
from "David_Turner_DB_QAP1".airports_aircraft
inner join "David_Turner_DB_QAP1".aircraft on "David_Turner_DB_QAP1".airports_aircraft."aircrafts_id"="David_Turner_DB_QAP1".aircraft.id
inner join "David_Turner_DB_QAP1".airports on "David_Turner_DB_QAP1".airports_aircraft."airports_id"="David_Turner_DB_QAP1".airports.id
order by airports.airport_name ASC;
