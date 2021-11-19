BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Users" (
	"username"	TEXT,
	"password"	TEXT,
	"email"	TEXT,
	PRIMARY KEY("username")
);
CREATE TABLE IF NOT EXISTS "Garage" (
	"username"	TEXT,
	"carName"	TEXT,
	"make"	INTEGER,
	"model"	INTEGER,
	"style"	INTEGER,
	"milage"	INTEGER,
	"yearGroup"	TEXT,
	FOREIGN KEY("username") REFERENCES "Users"("username"),
	PRIMARY KEY("carName")
);
CREATE TABLE IF NOT EXISTS "Maintenance Record" (
	"username"	TEXT,
	"carName"	TEXT,
	"fileName"	TEXT,
	PRIMARY KEY("username")
);
COMMIT;
