ALTER TABLE LevelPackInfo ADD COLUMN 'DuckTextureSuffix' TEXT NOT NULL DEFAULT '';

/* Remove holiday theming */
UPDATE PlayerData SET EventStringValue='' WHERE EventName='ThemeSuffix';

/* Remove holiday themed duck support */
UPDATE LevelPackInfo SET DuckTextureSuffix='' WHERE PackName='LP_ONE';
UPDATE LevelPackInfo SET DuckTextureSuffix='' WHERE PackName='LP_TWO';
UPDATE LevelPackInfo SET DuckTextureSuffix='' WHERE PackName='LP_THREE';
UPDATE LevelPackInfo SET DuckTextureSuffix='' WHERE PackName='LP_FOUR';
UPDATE LevelPackInfo SET DuckTextureSuffix='' WHERE PackName='LP_FIVE';
UPDATE LevelPackInfo SET DuckTextureSuffix='' WHERE PackName='LP_SIX';
UPDATE LevelPackInfo SET DuckTextureSuffix='' WHERE PackName='LP_SEVEN';
UPDATE LevelPackInfo SET DuckTextureSuffix='' WHERE PackName='LP_EIGHT';
UPDATE LevelPackInfo SET DuckTextureSuffix='' WHERE PackName='LP_NINE';
UPDATE LevelPackInfo SET DuckTextureSuffix='' WHERE PackName='LP_TEN';

/* Update the Portal textures to use the empty portals */
UPDATE HubInfo SET MainTexture='WMW_UI_swampy_empty.png' WHERE Storyline=0;
UPDATE HubInfo SET MainTexture='WMW_UI_cranky_empty.png' WHERE Storyline=1;
UPDATE HubInfo SET MainTexture='WMW_UI_mystery_empty.png' WHERE Storyline=3;

/* Last but not least, update the database version number */
UPDATE Settings SET Value=19 WHERE Name='DatabaseVersion';
