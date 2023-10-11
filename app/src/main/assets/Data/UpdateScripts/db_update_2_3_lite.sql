/*
 * LEVEL PACK INFO
 */
/* Add new tables for IAP support */
ALTER TABLE LevelPackInfo ADD COLUMN 'Storyline' INTEGER NOT NULL DEFAULT 0;
ALTER TABLE LevelPackInfo ADD COLUMN 'IAP_item_id' TEXT NOT NULL DEFAULT '';
ALTER TABLE LevelPackInfo ADD COLUMN 'Bought' BOOL NOT NULL DEFAULT 0;

/* Themed duck support */
ALTER TABLE LevelPackInfo ADD COLUMN 'DuckTextureSuffix' TEXT DEFAULT '';

/* Bonus packs (new to 1.4.0) */
INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, PackType, Storyline) VALUES 
									(-1, 'LP_BONUS', 0, 0);

INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, PackType, Storyline) VALUES 
									(-99, 'LP_SECRET', 0, 0);
									
/* remove "big present" button */
DELETE FROM LevelPackInfo WHERE PackName='CALENDAR_PROMO';

/* remove "Christmas" pack */
DELETE FROM LevelPackInfo WHERE PackName='LP_CALENDAR_UNLOCK';

/* New content (Valentine's Day pack) */
INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, Unlocked, HasPlayed, TileTexture, LightingColor, CurtainTexture, PackIcon, DuckTextureSuffix) VALUES 
									(11, 'LP_HEARTS_AND_CRAFTS', 1, 1, 'tile_green', '193 152 192', 'shower_curtain_VALENTINES_2012', 'world_select_VALENTINES_2012', 'VALENTINES_2012');
									
UPDATE LevelPackInfo SET TileTexture='tile_purple', CurtainTexture='shower_curtain_02' WHERE PackName='LP_SWAMPY_PICKS';
									
/*
 * LEVEL INFO
 */
											
/* Add IAP support to levels */
ALTER TABLE LevelInfo ADD COLUMN 'Available' BOOL NOT NULL DEFAULT 1;
ALTER TABLE LevelInfo ADD COLUMN 'IsBonus' BOOL NOT NULL DEFAULT 0;

/* We're also adding bonus level information into the database, so we need to update existing levels (everything except "Planets") */
UPDATE LevelInfo SET IsBonus=1 WHERE PackName='LP_BONUS' AND Name<>'LN_PLANETS';

/* And we've added a "Secret Level" pack, so switch those over as well */
UPDATE LevelInfo SET PackName='LP_SECRET' WHERE Name='LN_JC3';
UPDATE LevelInfo SET PackName='LP_SECRET' WHERE Name='LN_PLANETS';

/* And the actual Valentine's Day levels!! */
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, StartDate) VALUES (50, 'LN_I_HEART_YOU',		'/Levels/i_heart_you',		'LP_HEARTS_AND_CRAFTS', 55, 2, '2012-02-14 00:00:00');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, StartDate) VALUES (51, 'LN_SPLIT_STREAM',		'/Levels/split_stream',		'LP_HEARTS_AND_CRAFTS', 70, 2, '2012-02-15 00:00:00');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, StartDate) VALUES (56, 'LN_SHOOTS_SPIRALS',	'/Levels/Shoots_and_Spirals','LP_HEARTS_AND_CRAFTS', 65, 2, '2012-02-20 00:00:00');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, StartDate) VALUES (53, 'LN_DOWNPOUR',			'/Levels/downpour',			'LP_HEARTS_AND_CRAFTS', 50, 2, '2012-02-17 00:00:00');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, StartDate) VALUES (54, 'LN_MAZE_DOWN',		'/Levels/maze_down',		'LP_HEARTS_AND_CRAFTS', 130, 2, '2012-02-18 00:00:00');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, StartDate) VALUES (55, 'LN_SOMETHING',		'/Levels/Right_On_Track',	'LP_HEARTS_AND_CRAFTS', 90, 2, '2012-02-19 00:00:00');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, StartDate) VALUES (52, 'LN_ALL_GREEN_LIGHTS',	'/Levels/all_green_lights',	'LP_HEARTS_AND_CRAFTS', 90, 2, '2012-02-16 00:00:00');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, StartDate) VALUES (57, 'LN_STEADY_HAND',		'/Levels/sliders_2',		'LP_HEARTS_AND_CRAFTS', 60, 2, '2012-02-21 00:00:00');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, StartDate) VALUES (58, 'LN_ALGAE_RACE',		'/Levels/algae_race',		'LP_HEARTS_AND_CRAFTS', 40, 2, '2012-02-22 00:00:00');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, StartDate) VALUES (59, 'LN_WATER_ACROBATICS',	'/Levels/water_acrobatics',	'LP_HEARTS_AND_CRAFTS', 100, 2, '2012-02-23 00:00:00');
																														
/*
 * DATABASE/SETTINGS
 */

/* Fix level name for 'Planetarum' secret level. */ 
UPDATE LevelInfo SET Name='LN_PLANETS' WHERE ID=2001;
 
 /* Reset AMPS Info */
UPDATE PlayerData SET EventValue=0 WHERE EventName='DateOfNextAMPSCheck';
UPDATE PlayerData SET EventValue=0 WHERE EventName='AMPSDownloadWasInterrupted';

/* remove/add holiday theming */
UPDATE PlayerData SET EventStringValue='VALENTINES_2012' WHERE EventName='ThemeSuffix';

/* remove zappos promotion */
UPDATE PlayerData SET EventStringValue='' WHERE EventName='PromotionSuffix';

/* Last but not least, update the database version number */
UPDATE Settings SET Value=3 WHERE Name='DatabaseVersion';