/*
 * LEVEL PACK INFO
 */
									
/* Remove "Valentines" pack */
DELETE FROM LevelPackInfo WHERE PackName='LP_HEARTS_AND_CRAFTS';

/* New content (Valentine's Day pack) */
INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, Unlocked, HasPlayed, TileTexture, LightingColor, CurtainTexture, PackIcon, DuckTextureSuffix) VALUES 
									(11, 'LP_DAYS_OF_SUMMER', 1, 1, 'tile_magenta', '192 137 177', 'shower_curtain_04', 'world_select_TARGET_2012', '');
									
																																													
/*
 * LEVEL INFO
 */
		
/* Target levels!! */
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, StartDate) VALUES (60,	'LN_TOUCH_FOR_WATER',	'/Levels/02_TOUCH_FOR_WATER',	'LP_DAYS_OF_SUMMER', 50, 2, '2012-05-13 00:00:00');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, StartDate) VALUES (61,	'LN_LAST_IS_FIRST',		'/Levels/03_LAST_IS_FIRST',		'LP_DAYS_OF_SUMMER', 60, 2, '2012-05-14 00:00:00');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, StartDate) VALUES (62,	'LN_SLOOP_SCHOOL',		'/Levels/04_SLOOP_SCHOOL',		'LP_DAYS_OF_SUMMER', 75, 2, '2012-05-15 00:00:00');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, StartDate) VALUES (63,	'LN_DUAL_TOOLS',		'/Levels/06_DUAL_TOOLS',		'LP_DAYS_OF_SUMMER', 70, 2, '2012-05-16 00:00:00');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, StartDate) VALUES (64,	'LN_TRIGGER_PATH',		'/Levels/05_TRIGGER_PATH',		'LP_DAYS_OF_SUMMER', 44, 2, '2012-05-17 00:00:00');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, StartDate) VALUES (65,	'LN_SPAGHETTI_SPOUTS',	'/Levels/01_SPAGHETTI_SPOUTS',	'LP_DAYS_OF_SUMMER', 63, 2, '2012-05-18 00:00:00');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, StartDate) VALUES (66,	'LN_UPHILL_BATTLE',		'/Levels/08_PUSH_UPS',			'LP_DAYS_OF_SUMMER', 55, 2, '2012-05-19 00:00:00');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, StartDate) VALUES (67,	'LN_BLAST_TUBE',		'/Levels/07_BLAST_TUBE',		'LP_DAYS_OF_SUMMER', 45, 2, '2012-05-20 00:00:00');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, StartDate) VALUES (68,	'LN_AROUND_THE_ROCK',	'/Levels/09_AROUND_THE_ROCK',	'LP_DAYS_OF_SUMMER', 54, 2, '2012-05-21 00:00:00');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, StartDate) VALUES (69,	'LN_ZIG_ZAG',			'/Levels/10_ZIG_ZAG',			'LP_DAYS_OF_SUMMER', 61, 2, '2012-05-22 00:00:00');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, StartDate) VALUES (70,	'LN_BEFORE_THE_FLOOD',	'/Levels/11_BEFORE_THE_FLOOD',	'LP_DAYS_OF_SUMMER', 64, 2, '2012-05-23 00:00:00');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, StartDate) VALUES (71,	'LN_MASTER_SLOOPER',	'/Levels/12_MASTER_SLOOPER',	'LP_DAYS_OF_SUMMER', 66, 2, '2012-05-24 00:00:00');

/* Bonus */
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, IsBonus) VALUES				(1001,	'LN_FOOTPRINT',			'/Levels/B1_FOOTPRINT',		'LP_BONUS', 40, 1);

/* Secret */
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, IgnoreInStarCount) VALUES	(2002,	'LN_UPS_AND_DOWNS',		'/Levels/UPS_AND_DOWNS',	'LP_SECRET', 60, 1);		


/*
 * COLLECTIBLES
 */

INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (3, 'Collect_BeachBall');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (4, 'Collect_Popsicle');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (5, 'Collect_FlipFlop');

																																														
/*
 * DATABASE/SETTINGS
 */

/* Remove holiday theming */
UPDATE PlayerData SET EventStringValue='' WHERE EventName='ThemeSuffix';

/* Add Target promotion */
UPDATE PlayerData SET EventStringValue='TARGET_2012' WHERE EventName='PromotionSuffix';


/* We're storing the language preference differently now... */
INSERT OR IGNORE INTO PlayerData (EventName, EventValue, EventStringValue) VALUES ('PreferredLanguage', -1, '');

/* iCloud default settings */
INSERT OR IGNORE INTO PlayerData (ID, EventName, EventValue, EventStringValue) VALUES (17, 'ShouldDeleteLocalAmpsCat', 1, '');
INSERT OR IGNORE INTO PlayerData (EventName, EventValue) VALUES ('CloudSyncPrompted', 0);
INSERT OR IGNORE INTO Settings (Name, Value) VALUES ('CloudSync', 0);
INSERT OR IGNORE INTO Settings (Name, Value) VALUES ('RateAppAvailable', 1);

/* Last but not least, update the database version number */
UPDATE Settings SET Value=4 WHERE Name='DatabaseVersion';
