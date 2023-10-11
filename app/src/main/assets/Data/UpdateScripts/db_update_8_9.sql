/*
 * LEVEL PACK INFO
 */
 
INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, StarsRequired, TileTexture, LightingColor, CurtainTexture, LockColor, PackIcon) VALUES 
									(17, 'LP_EIGHT', 365, 'tile_magenta', '192 137 177', 'shower_curtain_04', '102 250 255', 'world_select_07');
	
			
/*
 * LEVEL INFO
 */
	
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Unlocked) VALUES (161,	'LN_FIRST_FAN',				'/Levels/first_fan',			'LP_EIGHT', 25, 1);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (162,			'LN_FAN_INTRO',				'/Levels/fan_intro',			'LP_EIGHT', 30);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (163,			'LN_UPDRAFT',				'/Levels/updraft',			    'LP_EIGHT', 30);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (164,			'LN_OVERLAP',				'/Levels/overlap',			    'LP_EIGHT', 40);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (165,			'LN_ON_AND_OFF',			'/Levels/on_and_off',			'LP_EIGHT', 35);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (166,			'LN_VACUUM_TUTORIAL',		'/Levels/Vacuum_Tutorial',		'LP_EIGHT', 40);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (167,			'LN_VOID',					'/Levels/void',					'LP_EIGHT', 40);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (168,			'LN_PULL_UP',				'/Levels/dirty_fan',			'LP_EIGHT', 40);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (169,			'LN_OCCULSION_TUTORIAL',	'/Levels/occlude_tutorial',     'LP_EIGHT', 30);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (170,			'LN_MAKE_UP_YOUR_MIND',		'/Levels/flip_flop',		    'LP_EIGHT', 50);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (171,			'LN_FREEFALLIN',			'/Levels/freefallin',			'LP_EIGHT', 35);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (172,			'LN_VACUUM_BRIDGE',			'/Levels/Vacuum_Bridge',		'LP_EIGHT', 70);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (173,			'LN_ALL_YOUR_DUCKS',		'/Levels/fan_divert',		    'LP_EIGHT', 60);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (174,			'LN_ICE_PIT',				'/Levels/ice_pit',				'LP_EIGHT', 90);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (175,			'LN_WATER_WORLD',			'/Levels/waterworld',			'LP_EIGHT', 50);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (176,			'LN_PULL_ME_UP',			'/Levels/pass_the_balloon',		'LP_EIGHT', 50);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (177,			'LN_EVIL_FAN',				'/Levels/evil_fan',				'LP_EIGHT', 70);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (178,			'LN_FAN_CLEANER',			'/Levels/mid_air_mix',  	    'LP_EIGHT', 40);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (179,			'LN_WIND_SLOOPER',			'/Levels/wind_slooper',			'LP_EIGHT', 55);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (180,			'LN_GRAVITY_DYNAMO',		'/Levels/gravity_dynamo',		'LP_EIGHT', 100);

INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, IsBonus) VALUES (94,	'LN_SPRING_CLEANING',		'/Levels/spring_cleaning',		'LP_BONUS', 40, 1);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, IsBonus) VALUES (95,	'LN_AIR_MAZE',				'/Levels/Mini_G_Dynamo',		'LP_BONUS', 40, 1);


/*
 * ACHIEVEMENTS
 */

INSERT OR IGNORE INTO Achievements (rowid, Points, ID, PreEarnedDescription, EarnedDescription, Image) VALUES (32, '', 'ACH_LP_EIGHT', 'ACH_LP_EIGHT_HOWTO', 'ACH_LP_EIGHT_DESC', 'ACH_LP_EIGHT.png');
INSERT OR IGNORE INTO Achievements (rowid, Points, ID, PreEarnedDescription, EarnedDescription, Image) VALUES (33, '', 'ACH_THREESTAR_LP_EIGHT', 'ACH_THREESTAR_LP_EIGHT_HOWTO', 'ACH_THREESTAR_LP_EIGHT_DESC', 'ACH_THREESTAR_LP_EIGHT.png');
INSERT OR IGNORE INTO Achievements (rowid, Points, ID, PreEarnedDescription, EarnedDescription, Image) VALUES (34, '', 'ACH_PLANETARIUM', 'ACH_PLANETARIUM_HOWTO', 'ACH_PLANETARIUM_DESC', 'ACH_PLANETARIUM.png');
INSERT OR IGNORE INTO Achievements (rowid, Points, ID, PreEarnedDescription, EarnedDescription, Image) VALUES (35, '', 'ACH_QUICKFINISH_2', 'ACH_QUICKFINISH_2_HOWTO', 'ACH_QUICKFINISH_2_DESC', 'ACH_QUICKFINISH_2.png');


/*
 * COLLECTIBLES
 */

INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (42, 'Collect_Cleat');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (43, 'Collect_Helmet');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (44, 'Collect_Glove');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (45, 'Collect_Dart');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (46, 'Collect_Knight');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (47, 'Collect_Dice');


/*
 * DATABASE/SETTINGS
 */

/* Reset AMPS Info */
UPDATE PlayerData SET EventValue=0 WHERE EventName='DateOfNextAMPSCheck';
UPDATE PlayerData SET EventValue=0 WHERE EventName='AMPSDownloadWasInterrupted';

/* Last but not least, update the database version number */
UPDATE Settings SET Value=9 WHERE Name='DatabaseVersion';