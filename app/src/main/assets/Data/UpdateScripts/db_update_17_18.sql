ALTER TABLE LevelPackInfo ADD COLUMN 'DuckTextureSuffix' TEXT NOT NULL DEFAULT '';

INSERT OR IGNORE INTO "IAPInfo" (Internal, iOS, Google, Amazon) VALUES('bundle01','disney.wmw.bundle01' ,'2207053' ,'2207054');
UPDATE PlayerData SET EventStringValue='WINTER_2011' WHERE EventName='ThemeSuffix';

/* Themed duck support */
UPDATE LevelPackInfo SET DuckTextureSuffix='WINTER_2011' WHERE PackName='LP_ONE';
UPDATE LevelPackInfo SET DuckTextureSuffix='WINTER_2011' WHERE PackName='LP_TWO';
UPDATE LevelPackInfo SET DuckTextureSuffix='WINTER_2011' WHERE PackName='LP_THREE';
UPDATE LevelPackInfo SET DuckTextureSuffix='WINTER_2011' WHERE PackName='LP_FOUR';
UPDATE LevelPackInfo SET DuckTextureSuffix='WINTER_2011' WHERE PackName='LP_FIVE';
UPDATE LevelPackInfo SET DuckTextureSuffix='WINTER_2011' WHERE PackName='LP_SIX';
UPDATE LevelPackInfo SET DuckTextureSuffix='WINTER_2011' WHERE PackName='LP_SEVEN';
UPDATE LevelPackInfo SET DuckTextureSuffix='WINTER_2011' WHERE PackName='LP_EIGHT';
UPDATE LevelPackInfo SET DuckTextureSuffix='WINTER_2011' WHERE PackName='LP_NINE';
UPDATE LevelPackInfo SET DuckTextureSuffix='WINTER_2011' WHERE PackName='LP_TEN';

/* Last but not least, update the database version number */
UPDATE Settings SET Value=18 WHERE Name='DatabaseVersion';
