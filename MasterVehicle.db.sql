BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "vehicles" (
	"vehicle_id"	TEXT,
	"make"	INTEGER,
	"model"	INTEGER,
	"yerGroup_id"	INTEGER,
	PRIMARY KEY("vehicle_id")
);
CREATE TABLE IF NOT EXISTS "maintenance" (
	"maintenance_id"	TEXT,
	"procedure"	TEXT,
	"timeInterval"	INTEGER,
	"mileInterval"	INTEGER,
	PRIMARY KEY("maintenance_id")
);
CREATE TABLE IF NOT EXISTS "year" (
	"yearGroup_id"	INTEGER,
	"maintenanceTitle"	TEXT,
	"maintencance_id"	TEXT,
	PRIMARY KEY("maintencance_id")
);
INSERT INTO "vehicles" VALUES (NULL,NULL,NULL,NULL);
INSERT INTO "maintenance" VALUES ('MMX5_CAF00','mmx5_CabinAirFilter.ppt',365,20000);
INSERT INTO "maintenance" VALUES ('1','tirePressureCheck.ppt',185,10000);
INSERT INTO "maintenance" VALUES ('2','tireChange.ppt','','');
INSERT INTO "maintenance" VALUES ('3','wiperBlades.ppt','','');
INSERT INTO "maintenance" VALUES ('MMX5_LB000','lightBulbChange.ppt',NULL,NULL);
INSERT INTO "maintenance" VALUES ('MMX5_LOC00','mmx5_OilChange.ppt',90,7500);
INSERT INTO "maintenance" VALUES ('MMX5_FBP00','mmx5_FrontBrakes.ppt',1277,60000);
INSERT INTO "year" VALUES (1,NULL,NULL);
INSERT INTO "year" VALUES ('MMX5000','Cabin Air Filter Change','MMX5_CAF00');
INSERT INTO "year" VALUES ('MMX5000','Check/Add Tire Pressure','1');
INSERT INTO "year" VALUES ('MMX5000','Change Tire','2');
INSERT INTO "year" VALUES ('MMX5000','Change Head/Tail Lightbulb ','MMX5_LB000');
INSERT INTO "year" VALUES ('MMX5000','Change Windshield Wiper Blades','3');
INSERT INTO "year" VALUES ('MMX5000','Oil Change','MMX5_LOC00');
INSERT INTO "year" VALUES ('MMX5000','Front Brake Pads','MMX5_FBP00');
COMMIT;
