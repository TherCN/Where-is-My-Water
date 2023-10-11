/*
 * LEVEL PACK INFO
 */
									
/* Remove "Summers" pack */
DELETE FROM LevelPackInfo WHERE PackName='LP_DAYS_OF_SUMMER';

/* New content (Mystery pack) */
INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, Unlocked, HasPlayed, TileTexture, LightingColor, CurtainTexture, PackIcon, DuckTextureSuffix) VALUES 
									(11, 'LP_MYSTERY', 1, 1, 'MD_brick_tile', '192 137 177', 'shower_curtain_04', 'WMW_mystery_free', '');
		
									
																
/* Adding New Column to remember Locksmith duck for each level pack */
ALTER TABLE LevelPackInfo ADD COLUMN 'LS_Unlocked' BOOL DEFAULT 0;

/* Add a new "DisplayPackName" columns (so we can make the Mystery packs use the same names as Swampy) */
ALTER TABLE LevelPackInfo ADD COLUMN 'DisplayPackName' TEXT NOT NULL DEFAULT '';

/* Facebook liking */
ALTER TABLE LevelPackInfo ADD COLUMN 'FB_AlbumName' TEXT NOT NULL DEFAULT '';
							
																																													
/*
 * LEVEL INFO
 */
		
/* Mystery levels!! */
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, PackName, ParTime, StartDate, Type) VALUES
								(72, 'LN_DONT_DILLY_DALLY',		'/Levels/itll_grow_on_you_FREE',		'LP_MYSTERY', 23, '2012-06-28 00:00:00', 2);
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, PackName, ParTime, StartDate, Type) VALUES
								(73, 'LN_DEEP_DIG',				'/Levels/deep_dig_FREE',				'LP_MYSTERY', 32, '2012-06-29 00:00:00', 2);
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, PackName, ParTime, StartDate, Type) VALUES
								(74, 'LN_JUMP_ON_IT',			'/Levels/jump_on_it',					'LP_MYSTERY', 19, '2012-06-30 00:00:00', 2);
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, PackName, ParTime, StartDate, Type) VALUES
								(75, 'LN_TAKE_ME_HIGHER',		'/Levels/there_and_back_again',			'LP_MYSTERY', 45, '2012-07-01 00:00:00', 2);
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, PackName, ParTime, StartDate, Type) VALUES
								(76, 'LN_ANOTHER_CASTLE',		'/Levels/another_castle',				'LP_MYSTERY', 40, '2012-07-02 00:00:00', 2);
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, PackName, ParTime, StartDate, Type) VALUES
								(77, 'LN_MINE_FIELD',			'/Levels/mine_field_FREE',				'LP_MYSTERY', 55, '2012-07-03 00:00:00', 2);
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, PackName, ParTime, StartDate, Type) VALUES
								(78, 'LN_RAT_IN_A_MAZE',		'/Levels/rat_in_a_maze_FREE',			'LP_MYSTERY', 45, '2012-07-04 00:00:00', 2);
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, PackName, ParTime, StartDate, Type) VALUES
								(79, 'LN_CURSE_OF_THE_ALGAE',	'/Levels/curse_of_the_algae_beard_FREE', 'LP_MYSTERY', 55, '2012-07-05 00:00:00', 2);
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, PackName, ParTime, StartDate, Type) VALUES
								(80, 'LN_INTO_THE_CAVE',		'/Levels/into_the_cave_FREE',			'LP_MYSTERY', 45, '2012-07-06 00:00:00', 2);
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, PackName, ParTime, StartDate, Type) VALUES
								(81, 'LN_FROM_ON_HIGH',			'/Levels/from_on_high',					'LP_MYSTERY', 70, '2012-07-07 00:00:00', 2);


/* New Swampy's Picks */
UPDATE LevelInfo SET Name='LN_FIRST_MUD_ALSO',  FileName='/Levels/01_let_it_dry',			ParTime=40,		Stars=0,	BestScore=0 WHERE Name='LN_MIND_THE_GAP';
UPDATE LevelInfo SET Name='LN_DRY_ME',			FileName='/Levels/03_cut_and_dry_FREE',		ParTime=55,		Stars=0,	BestScore=0 WHERE Name='LN_WHAT_GOES_UP';
UPDATE LevelInfo SET Name='LN_SLOW_IT_DOWN',    FileName='/Levels/05_bog_it_down',			ParTime=40,		Stars=0,	BestScore=0 WHERE Name='LN_CONVERTER_JOURNEY';
UPDATE LevelInfo SET Name='LN_FILL_THE_COLUMS', FileName='/Levels/16_fill_columns',			ParTime=100,	Stars=0,	BestScore=0 WHERE Name='LN_RECYCLER';
UPDATE LevelInfo SET Name='LN_SLOOP_DU_JOUR',	FileName='/Levels/12_make_a_ramp_FREE',		ParTime=75,		Stars=0,	BestScore=0 WHERE Name='LN_JAGGED_EDGE';

/* Secret Level (Collectibles screen) */
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, IgnoreInStarCount) VALUES 
								(2003, 'LN_WATERSLIDE', '/Levels/waterslide', 'LP_SECRET', 90, 1);

/* "Mi Amore" secret level (on Achievements screen) */
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, IgnoreInStarCount) VALUES 
								(2004, 'LN_MI_AMORE', '/Levels/mi_amore', 'LP_SECRET', 90, 1);


/* Remove the Target bonus level */
DELETE FROM LevelInfo WHERE Name='LN_FOOTPRINT';



/*
 *	ACHIEVEMENTS
 */

/* Needs to be the same as the Full Version, even though there's no levels to like. */
ALTER TABLE Achievements ADD COLUMN 'FacebookDescription' TEXT NOT NULL DEFAULT '';


/*
 * COLLECTIBLES
 */

/* Remove Target Collectibles */

DELETE FROM CollectibleInfo WHERE Basename='Collect_BeachBall';
DELETE FROM CollectibleInfo WHERE Basename='Collect_Popsicle';
DELETE FROM CollectibleInfo WHERE Basename='Collect_FlipFlop';

																																														
/*
 * DATABASE/SETTINGS
 */

/* Remove holiday theming */
UPDATE PlayerData SET EventStringValue='' WHERE EventName='ThemeSuffix';

/* Remove Target promotion */
UPDATE PlayerData SET EventStringValue='' WHERE EventName='PromotionSuffix';

/* Last but not least, update the database version number */
UPDATE Settings SET Value=6 WHERE Name='DatabaseVersion';
