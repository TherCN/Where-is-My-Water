/* Added users age to DB*/
INSERT INTO PlayerData (EventName, EventValue, EventStringValue) VALUES ('EDOB',-1, NULL);

/* Last but not least, update the database version number */
UPDATE Settings SET Value=23 WHERE Name='DatabaseVersion';