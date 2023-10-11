/* Set all values to be blank in case column already exists and above line fails */
UPDATE LevelPackInfo SET DuckTextureSuffix='';

/* Last but not least, update the database version number */
UPDATE Settings SET Value=20 WHERE Name='DatabaseVersion';
