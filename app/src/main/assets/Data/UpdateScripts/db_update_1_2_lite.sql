/* Last but not least, update the database version number */
UPDATE Settings SET Value=2 WHERE Name='DatabaseVersion';