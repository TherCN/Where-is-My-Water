/*
 * LEVEL PACK INFO
 */

/* Add new tables for Cranky pack/IAP support */
ALTER TABLE LevelPackInfo ADD COLUMN 'Storyline' INTEGER NOT NULL DEFAULT 0;
ALTER TABLE LevelPackInfo ADD COLUMN 'IAP_item_id' TEXT NOT NULL DEFAULT '';
ALTER TABLE LevelPackInfo ADD COLUMN 'Bought' BOOL NOT NULL DEFAULT 0;

/* Cranky pack now takes up half the carousel, so move "More Coming Soon" down to halfway */
UPDATE LevelPackInfo SET ID=40 WHERE ID=90;

/* Bonus packs (new to 1.4.0) */
INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, PackType, Storyline) VALUES 
									(-1, 'LP_BONUS', 0, 0);
INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, PackType, Storyline, IAP_item_id) VALUES 
									(-2, 'LP_BONUS_CRANKY', 0, 1, 'crankypack01');

INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, PackType, Storyline) VALUES 
									(-99, 'LP_SECRET', 0, 0);
									
/* Cranky packs */
UPDATE LevelPackInfo SET PackName='crankypack01_NAME' WHERE PackName='CRANKY_STORY_TITLE_COMING';

INSERT OR IGNORE INTO LevelPackInfo (ID, Unlocked, PackName, PackType, PackIcon, Storyline, IAP_item_id, TileTexture) VALUES 
									(60, 1, 'LP_CRANKY_ONE', 0, 'world_select_cranky_00', 1, 'crankypack01', 'cranky_bricks_purple');
INSERT OR IGNORE INTO LevelPackInfo (ID, Unlocked, PackName, PackType, PackIcon, Storyline, IAP_item_id, TileTexture, Bought) VALUES 
									(61, 1, 'LP_CRANKY_TWO', 3, 'world_select_cranky_01', 1, 'crankypack01', 'cranky_bricks_purple', 0);
		
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
UPDATE LevelInfo SET PackName='LP_SECRET' WHERE Name='LN_FISTFUL_OF_NOTHING';
UPDATE LevelInfo SET PackName='LP_SECRET' WHERE Name='LN_CHEAT_CODE';
UPDATE LevelInfo SET PackName='LP_SECRET' WHERE Name='LN_PLANETS';
																																						
/* Cranky levels, packs 1 and 2 */
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Unlocked, ParTime) VALUES (2000,						'LN_SECOND_DIG',			'/Levels/second_dig',				'LP_CRANKY_ONE', 1, 15);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (2001,								'LN_MEET_ME_IN_THE_MIDDLE',	'/Levels/meet_me_in_the_middle',	'LP_CRANKY_ONE', 35);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (2002,								'LN_PURPLE_RAIN',			'/Levels/waterfall',				'LP_CRANKY_ONE', 37);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (2003,								'LN_LAWN_SPRINKLER',		'/Levels/lawn_sprinkler',			'LP_CRANKY_ONE', 50);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (2004,								'LN_AROUND_THE_WORLD',		'/Levels/around_the_world',			'LP_CRANKY_ONE', 65);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2005,				'LN_BRIDGE_OVER',			'/Levels/alignment_issues',			'LP_CRANKY_ONE', 45, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2006,				'LN_VALVE_THE_PRESS',		'/Levels/valve_the_press',			'LP_CRANKY_ONE', 40, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2007,				'LN_SPLIT_ENDS',			'/Levels/hold_it_right_there',		'LP_CRANKY_ONE', 45, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2008,				'LN_SWIRLY_BOMB',			'/Levels/BHVR_swirlie_bomb',		'LP_CRANKY_ONE', 35, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2009,				'LN_SLIDESHOW',				'/Levels/BHVR_machine_room',		'LP_CRANKY_ONE', 42, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2010,				'LN_BOOMSTICK',				'/Levels/boomstick',				'LP_CRANKY_ONE', 45, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2011,				'LN_CONNECT_THE_DOTS',		'/Levels/BHVR_drain_match',			'LP_CRANKY_ONE', 35, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2012,				'LN_FOUNDRY',				'/Levels/BHVR_the_foundry',			'LP_CRANKY_ONE', 66, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2013,				'LN_BRIDGE_BREAKER',		'/Levels/bridge_breaker',			'LP_CRANKY_ONE', 75, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2014,				'LN_POISON_DODGE',			'/Levels/poison_dodge',				'LP_CRANKY_ONE', 70, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2015,				'LN_DUCK_INVADERS',			'/Levels/duck_invaders',			'LP_CRANKY_ONE', 40, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2016,				'LN_MUST_COME_DOWN',		'/Levels/must_come_down',			'LP_CRANKY_ONE', 35, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2017,				'LN_ORDER_POOL',			'/Levels/order_pool',				'LP_CRANKY_ONE', 34, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2018,				'LN_WATER_BOMB_DODGER',		'/Levels/BHVR_water_bomb_dodger',	'LP_CRANKY_ONE', 38, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2019,				'LN_POLLUTON_SOLUTION',		'/Levels/CR_pollution',				'LP_CRANKY_ONE', 58, 1, 0);

INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Unlocked, ParTime, Type, Available) VALUES (2020,	'LN_DOWN_THE_STAIRS',		'/Levels/stream_grind',				'LP_CRANKY_TWO', 1, 35, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2021,				'LN_STEAM_BOMB_DODGER',		'/Levels/BHVR_steam_bomb_dodger',	'LP_CRANKY_TWO', 42, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2022,				'LN_RECYCLE',				'/Levels/reuser',					'LP_CRANKY_TWO', 44, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2023,				'LN_CONVERT_EM',			'/Levels/BHVR_dirt_it_out',			'LP_CRANKY_TWO', 55, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2024,				'LN_REGROUP',				'/Levels/regroup',					'LP_CRANKY_TWO', 45, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2025,				'LN_UNDER_PRESSURE',		'/Levels/CR_levitation',			'LP_CRANKY_TWO', 115, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2026,				'LN_MOSSY_PATH',			'/Levels/BHVR_mossy_path',			'LP_CRANKY_TWO', 35, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2027,				'LN_VALVE_CONTROL',			'/Levels/BHVR_valve_control',		'LP_CRANKY_TWO', 60, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2028,				'LN_MID_AIR_COLLISION',		'/Levels/mid_air_collision',		'LP_CRANKY_TWO', 40, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2029,				'LN_RECONTAMINATION',		'/Levels/CR_recontamination',		'LP_CRANKY_TWO', 55, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2030,				'LN_VOLCANO',				'/Levels/volcano',					'LP_CRANKY_TWO', 40, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2031,				'LN_STEAM_SCULPTER',		'/Levels/BHVR_steam_sculptor',		'LP_CRANKY_TWO', 35, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2032,				'LN_OOZE_STOPPER',			'/Levels/ooze_stopper',				'LP_CRANKY_TWO', 45, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2033,				'LN_VICIOUS_CYCLE',			'/Levels/CR_vicious_cycle',			'LP_CRANKY_TWO', 60, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2034,				'LN_PIPE_CLEANER',			'/Levels/CR_pipe_cleaner',			'LP_CRANKY_TWO', 70, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2035,				'LN_WORTHLESS_WATER',		'/Levels/CR_worthless_water',		'LP_CRANKY_TWO', 40, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2036,				'LN_FUSION_GRIND',			'/Levels/BHVR_fusion_grind',		'LP_CRANKY_TWO', 50, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2037,				'LN_LAYER_CAKE',			'/Levels/layer_cake',				'LP_CRANKY_TWO', 42, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2038,				'LN_AQUA_TOOL',				'/Levels/CR_aqua_tool',				'LP_CRANKY_TWO', 125, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2039,				'LN_MAKE_IT_BREAK',			'/Levels/CR_make_it_break_it',		'LP_CRANKY_TWO', 80, 1, 0);

/* Cranky bonus levels */
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Unlocked, ParTime, Type, Available) VALUES (2500,	'LN_BALANCE_OUT',			'/Levels/drop_it',					'LP_BONUS_CRANKY', 1, 40, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Unlocked, ParTime, Type, Available) VALUES (2501,	'LN_TURKEY_LEG',			'/Levels/turkey_leg',				'LP_BONUS_CRANKY', 1, 40, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Unlocked, ParTime, Type, Available) VALUES (2502,	'LN_POLKA_DOTS',			'/Levels/rising_tide',				'LP_BONUS_CRANKY', 1, 40, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Unlocked, ParTime, Type, Available) VALUES (2503,	'LN_CONTAMINATION_MAZE',	'/Levels/convert_em',				'LP_BONUS_CRANKY', 1, 40, 1, 0);

/*
 * CRANKY CHALLENGES
 */
CREATE TABLE "CrankyChallengeInfo" ("ID" INTEGER PRIMARY KEY  NOT NULL  UNIQUE , "Available" BOOL DEFAULT 0, "IAP_item_id" TEXT, "Completed" BOOL DEFAULT 0, "LevelName" TEXT, "LevelRequirements" TEXT, "TimesPlayed" INTEGER DEFAULT 0, "TimesCompleted" INTEGER DEFAULT 0, "Desc" TEXT);

/* DATA - Challenge set 1 */
INSERT OR IGNORE INTO CrankyChallengeInfo (ID, Desc, Available, IAP_item_id, LevelName, LevelRequirements ) VALUES 
										( 10, 'CHALLENGE_CRANKY_DUCKS', 1, 'crankypack01', '/Levels/drain_it_first', 'crankyducks ducks:3' );

INSERT OR IGNORE INTO CrankyChallengeInfo (ID, Desc, Available, IAP_item_id, LevelName, LevelRequirements ) VALUES 
										( 11, 'CHALLENGE_NO_BALLOON', 1, 'crankypack01', '/Levels/balloon_bridge', 'nospout:Spout3 nopop:WaterBalloon5' );

INSERT OR IGNORE INTO CrankyChallengeInfo (ID, Desc, Available, IAP_item_id, LevelName, LevelRequirements ) VALUES 
										( 12, 'CHALLENGE_NO_WATER', 1, 'crankypack01', '/Levels/reptiles_and_plumbers', 'losefluid:water nospout:Spout2 waitforwin:0' );

/* DATA - Challenge set 2 */
INSERT OR IGNORE INTO CrankyChallengeInfo (ID, Desc, Available, IAP_item_id, LevelName, LevelRequirements ) VALUES 
										( 20, 'CHALLENGE_CRANKY_DUCKS', 0, 'crankypack01', '/Levels/crossing_the_river', 'crankyducks ducks:3' );

INSERT OR IGNORE INTO CrankyChallengeInfo (ID, Desc, Available, IAP_item_id, LevelName, LevelRequirements ) VALUES 
										( 21, 'CHALLENGE_NO_BRIDGE', 0, 'crankypack01', '/Levels/tarred_and_feathered', 'noswitch:Switch4 ducks:3 winwait:3' );

INSERT OR IGNORE INTO CrankyChallengeInfo (ID, Desc, Available, IAP_item_id, LevelName, LevelRequirements ) VALUES 
										( 22, 'CHALLENGE_ZERO_DUCK', 0, 'crankypack01', '/Levels/the_grid', 'ducks:0' );

/* DATA - Challenge set 3 */
INSERT OR IGNORE INTO CrankyChallengeInfo (ID, Desc, Available, IAP_item_id, LevelName, LevelRequirements ) VALUES 
										( 30, 'CHALLENGE_CRANKY_DUCKS', 0, 'crankypack01', '/Levels/double_launch_redux', 'crankyducks ducks:3' );

INSERT OR IGNORE INTO CrankyChallengeInfo (ID, Desc, Available, IAP_item_id, LevelName, LevelRequirements ) VALUES 
										( 31, 'CHALLENGE_NO_EXPLOSIONS', 0, 'crankypack01', '/Levels/force_field', 'explosions:0' );

INSERT OR IGNORE INTO CrankyChallengeInfo (ID, Desc, Available, IAP_item_id, LevelName, LevelRequirements ) VALUES 
										( 32, 'CHALLENGE_NO_ORANGE_GATE', 0, 'crankypack01', '/Levels/ventilation_shaft', 'noswitch:Switch2' );

/* DATA - Challenge set 4 */
INSERT OR IGNORE INTO CrankyChallengeInfo (ID, Desc, Available, IAP_item_id, LevelName, LevelRequirements ) VALUES 
										( 40, 'CHALLENGE_CRANKY_DUCKS', 0, 'crankypack01', '/Levels/booby_trap_staircase', 'crankyducks ducks:3' );

INSERT OR IGNORE INTO CrankyChallengeInfo (ID, Desc, Available, IAP_item_id, LevelName, LevelRequirements ) VALUES 
										( 41, 'CHALLENGE_ALL_EXPLOSIONS', 0, 'crankypack01', '/Levels/poison_dodge', 'explosions:8 ignoremixing' );

INSERT OR IGNORE INTO CrankyChallengeInfo (ID, Desc, Available, IAP_item_id, LevelName, LevelRequirements ) VALUES 
										( 42, 'CHALLENGE_SQUEEZE_POP', 0, 'crankypack01', '/Levels/geiser', 'nofingerpop:WaterBalloon25 waitforwin:0' );
											
											
/*
 * IAP INFO (new to 1.3.5)
 */
 
/* Create the table */
CREATE TABLE 'main'.'IAPInfo' ('ID' INTEGER PRIMARY KEY  NOT NULL  UNIQUE );

ALTER TABLE IAPInfo ADD COLUMN 'Internal'	TEXT;
ALTER TABLE IAPInfo ADD COLUMN 'iOS'		TEXT;
ALTER TABLE IAPInfo ADD COLUMN 'Google'		TEXT;
ALTER TABLE IAPInfo ADD COLUMN 'Amazon'		TEXT;

/* Insert Cranky Pack 01 */
INSERT OR IGNORE INTO IAPInfo (Internal, iOS, Google, Amazon) VALUES ('crankypack01', 'disney.wmw.crankypack01.2206506', '2206519', '2206472');

/*
 * DATABASE/SETTINGS
 */

/* Reset AMPS Info */
UPDATE PlayerData SET EventValue=0 WHERE EventName='DateOfNextAMPSCheck';
UPDATE PlayerData SET EventValue=0 WHERE EventName='AMPSDownloadWasInterrupted';

/* add setting about presenting not yet bought challenges */
INSERT OR IGNORE INTO Settings (Name, Value) VALUES ('PresentUnavailableChallenges', 1);

/* remove holiday theming */
UPDATE PlayerData SET EventStringValue='' WHERE EventName='ThemeSuffix';

/* Last but not least, update the database version number */
UPDATE Settings SET Value=6 WHERE Name='DatabaseVersion';