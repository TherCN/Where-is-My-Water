/* Add new entries into PlayerData tables */
INSERT INTO PlayerData (EventName, EventValue, EventStringValue) VALUES ('GUID',-1, '');
INSERT OR IGNORE INTO PlayerData (EventName, EventValue) VALUES ('FacebookLoggedIn', 0);

/* Change alert text for Hub for Lost Levels to LP_DAYS_OF_SUMMER (need to change back later) */
UPDATE HubInfo SET AlertText='LP_DAYS_OF_SUMMER' WHERE ID=80;

CREATE TABLE "ADSettings" ("ScreenName" TEXT NOT NULL UNIQUE, "Show" BOOL NOT NULL, "PreferAD" TEXT NOT NULL, "Flavor" INTEGER NOT NULL, "Interval" INTEGER NOT NULL);

INSERT OR IGNORE INTO ADSettings (ScreenName, Show, PreferAD, Flavor, Interval) VALUES ('main_menu', 1, 'MysteryDuck', 0, 2);
INSERT OR IGNORE INTO ADSettings (ScreenName, Show, PreferAD, Flavor, Interval) VALUES ('pause_menu', 1, 'MysteryDuck', 0, 2);
INSERT OR IGNORE INTO ADSettings (ScreenName, Show, PreferAD, Flavor, Interval) VALUES ('result_screen', 1, 'MysteryDuck', 0, 2);

INSERT OR IGNORE INTO Settings (Name, Value) VALUES ('UpdateADServerInterval',7200);
INSERT OR IGNORE INTO Settings (Name, Value) VALUES ('LastTimeUpdateADServer',0);

/*add mystery secret level pack*/
INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, PackType, Storyline) VALUES 
									(-101, 'LP_SECRET_MYSTERY', 0, 3);

/*add secret level*/
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, PackName, ParTime, IgnoreInStarCount, Type, StartDate, EndDate) VALUES (1009, 'LN_MAKE_A_WISH', '/Levels/make_a_wish', 'LP_SECRET',44 , 1, 2, '2012-09-15 00:00:00', '2012-09-29 00:00:00');
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, PackName, ParTime, IgnoreInStarCount) VALUES (1010, 'LN_SECRET_AGENTP', '/Levels/agent_p', 'LP_SECRET', 55, 1);
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, PackName, IgnoreInStarCount) VALUES (1011, 'MYSTERIOUS_PLANETS_LBL', '/Levels/planets', 'LP_SECRET_MYSTERY', 1);

/*add one column to LevelPackInfo*/
ALTER TABLE LevelPackInfo ADD GrayType BOOL NOT NULL DEFAULT 0;

/* Last but not least, update the database version number */
UPDATE Settings SET Value=15 WHERE Name='DatabaseVersion';
