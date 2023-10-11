/*
 * ADDING COLUMNS for Facebook "like" a level support
 */
 
ALTER TABLE LevelPackInfo ADD COLUMN 'FB_AlbumName' TEXT NOT NULL DEFAULT '';

/*
 * New HUB info
 */

/* New table creation */
CREATE TABLE "HubInfo" (	"ID" INTEGER PRIMARY KEY  NOT NULL  UNIQUE , 
							"Storyline" INTEGER DEFAULT -1, 
							"IAP_item_id" TEXT DEFAULT '', 
							"Bought" BOOL DEFAULT 1, 
							
							"TitleTexture" TEXT DEFAULT '',
							"MainTexture" TEXT DEFAULT '', 
							"FrameTexture" TEXT DEFAULT '', 
							
							"TextColor" TEXT DEFAULT '',
							
							"TextLine1" TEXT DEFAULT '', 
							"TextLine2" TEXT DEFAULT '', 
							
							"DuckCharacter" TEXT DEFAULT '', 
							"ItemCharacter" TEXT DEFAULT '', 
							
							"DuckSQL1" TEXT DEFAULT '',
							"DuckSQL2" TEXT DEFAULT '',
							
							"ItemSQL1" TEXT DEFAULT '',
							"ItemSQL2" TEXT DEFAULT '',
							
							"TextButton" TEXT DEFAULT '',
							
							"AlertText" TEXT DEFAULT ''	);

/* Actual table content */
/* Swampy */
INSERT OR IGNORE INTO HubInfo (	ID, Storyline, TitleTexture, MainTexture, FrameTexture, TextColor,
								TextLine1, TextLine2, DuckCharacter, ItemCharacter, TextButton,
								ItemSQL1, ItemSQL2) VALUES
							  (	10, 0, 'WMW_UI_swampy_logo.png', 'WMW_UI_storyicon_swampy.png', 'WMW_UI_pipeframe.png', '37 108 138',
								'HUB_TEXT_SWAMPY_TITLE', 'HUB_TEXT_SWAMPY_BODY', '☆', '⚀', 'PLAY',
								'SELECT count(ID) FROM CollectibleInfo WHERE Unlocked=1', 'SELECT count(ID) FROM CollectibleInfo' );

/* Cranky */
INSERT OR IGNORE INTO HubInfo (	ID, Storyline, TitleTexture, MainTexture, FrameTexture, TextColor,
								TextLine1, TextLine2, DuckCharacter, ItemCharacter, TextButton, IAP_item_id, Bought, AlertText,
								ItemSQL1, ItemSQL2) VALUES
							  (	20, 1, 'WMW_UI_cranky_logo.png', 'WMW_UI_storyicon_cranky.png', 'WMW_UI_pipeframe.png', '91 148 43',
								'HUB_TEXT_CRANKY_TITLE', 'HUB_TEXT_CRANKY_BODY', '☠', '♨', 'PLAY', 'crankypack01', 0, 'CRANKY_NEW_ALERT_OVERSTUFFED',
								'SELECT CASE WHEN count(ID) <= 3 THEN -1 ELSE count(ID) END FROM FoodInfo WHERE Unlocked=1', 'SELECT count(ID) FROM FoodInfo' );
							  
/* Lost Levels */
INSERT OR IGNORE INTO HubInfo (	ID, Storyline, TitleTexture, MainTexture, FrameTexture, TextColor,
								TextLine1, TextLine2, DuckCharacter, TextButton, AlertText ) VALUES
							  (	80, 2, 'WMW_UI_lostlevels_logo.png', 'WMW_UI_storyicon_lostlevels.png', 'WMW_UI_pipeframe.png', '37 108 138',
								'', 'HUB_TEXT_LOST_TITLE', '☆', 'PLAY', 'LOST_NEW_ALERT_LAUNCH' );
							  
/* Gift This App */
INSERT OR IGNORE INTO HubInfo (	ID, Storyline, MainTexture, FrameTexture, TextColor,
								TextLine1, TextLine2, TextButton) VALUES
							  (	90, -1, 'WMW_UI_storyicon_gift.png', 'WMW_UI_pipeframe.png', '37 108 138',
								'', 'HUB_TEXT_GIFT_TITLE', 'GIFT' );


/*
 * LEVEL PACK INFO
 */
                 
/* Christmas pack */
INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, Unlocked, TileTexture, LightingColor, CurtainTexture, PackIcon, Storyline) VALUES 
									(80, 'LP_CALENDAR_UNLOCK', 1, 'tile_purple', '193 152 192', 'shower_curtain_01_WINTER_2011', 'world_select_ten_days_o_swampy', 2);
 
/* Valentine's Day pack */
INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, Unlocked, TileTexture, LightingColor, CurtainTexture, PackIcon, Storyline) VALUES 
									(81, 'LP_HEARTS_AND_CRAFTS', 1, 'tile_green', '91 193 165', 'shower_curtain_VALENTINES_2012', 'world_select_VALENTINES_2012', 2);
									
/* We also drop the Cranky and Gift buttons on the World Select Carousel */
DELETE FROM LevelPackInfo WHERE PackName='GIFT_APP';
DELETE FROM LevelPackInfo WHERE PackName='crankypack01_NAME';

/* Update the texture for the fourth Cranky pack */
UPDATE LevelPackInfo SET PackIcon='intro_pack_104' WHERE PackName='LP_CRANKY_FOUR';

/* Swampy secret levels! */
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, IgnoreInStarCount) VALUES	(1006,	'LN_GOOD_MORNING',		'/Levels/LN_GOOD_MORNING',	'LP_SECRET', 30, 1);	                                    
                                    
/* Cranky secret levels! */
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, IgnoreInStarCount) VALUES	(1007,	'LN_SARAS_LEVEL',		'/Levels/S3_SARAS_LEVEL',	'LP_SECRET_CRANKY', 30, 1);	

/*
 * LEVEL INFO
 */
 
/* Swampy Secret Levels */
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, IgnoreInStarCount) VALUES (1005,         'LN_UPS_AND_DOWNS',          '/Levels/UPS_AND_DOWNS',             'LP_SECRET', 60, 1);	

/* Lost Levels - Christmas */
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Unlocked) VALUES	(3000, 'LN_ALLEY_OOP',				'/Levels/alley_oop',			'LP_CALENDAR_UNLOCK', 40, 1 );
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES				(3001, 'LN_KITCHEN_TIMER',			'/Levels/kitchen_timer',		'LP_CALENDAR_UNLOCK', 42 );
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES				(3002, 'LN_PARTICLE_ACCELERATOR',	'/Levels/particle_accelerator',	'LP_CALENDAR_UNLOCK', 35 );
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES				(3003, 'LN_LEAKY_ELEVATOR',			'/Levels/leaky_elevator',		'LP_CALENDAR_UNLOCK', 30 );
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES				(3004, 'LN_DOUBLE_DOOR',			'/Levels/double_door',			'LP_CALENDAR_UNLOCK', 54 );
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES				(3005, 'LN_CONTROLLED_BLAST',		'/Levels/too_much_water',		'LP_CALENDAR_UNLOCK', 70 );
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES				(3006, 'LN_OUT_OF_ORDER',			'/Levels/bank_job',				'LP_CALENDAR_UNLOCK', 60 );
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES				(3007, 'LN_CYCLICAL',				'/Levels/loop_around',			'LP_CALENDAR_UNLOCK', 40 );
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES				(3008, 'LN_BOMB_STICK',				'/Levels/bombstick',			'LP_CALENDAR_UNLOCK', 63 );
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES				(3009, 'LN_AROUND_THE_WORLD',		'/Levels/cut_cut_cut',			'LP_CALENDAR_UNLOCK', 45 );

INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Type, IsBonus) VALUES (3500, 'LN_SPLIT_DOWN_THE_MIDDLE', '/Levels/LN_SPLIT_DOWN_THE_MIDDLE', 'LP_CALENDAR_UNLOCK', 1, 1);

/* Lost Levels - Valentines */
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Unlocked) VALUES	(3010, 'LN_I_HEART_YOU',			'/Levels/i_heart_you',			'LP_HEARTS_AND_CRAFTS', 55, 1 );
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES				(3011, 'LN_SPLIT_STREAM',			'/Levels/split_stream',			'LP_HEARTS_AND_CRAFTS', 70 );
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES				(3012, 'LN_SHOOTS_SPIRALS',			'/Levels/Shoots_and_Spirals',	'LP_HEARTS_AND_CRAFTS', 65 );
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES				(3013, 'LN_DOWNPOUR',				'/Levels/downpour',				'LP_HEARTS_AND_CRAFTS', 50 );
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES				(3014, 'LN_MAZE_DOWN',				'/Levels/maze_down',			'LP_HEARTS_AND_CRAFTS', 130 );
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES				(3015, 'LN_SOMETHING',				'/Levels/Right_On_Track',		'LP_HEARTS_AND_CRAFTS', 90 );
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES				(3016, 'LN_ALL_GREEN_LIGHTS',		'/Levels/all_green_lights',		'LP_HEARTS_AND_CRAFTS', 90 );
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES				(3017, 'LN_STEADY_HAND',			'/Levels/sliders_2',			'LP_HEARTS_AND_CRAFTS', 60 );
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES				(3018, 'LN_ALGAE_RACE',				'/Levels/algae_race',			'LP_HEARTS_AND_CRAFTS', 40 );
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES				(3019, 'LN_WATER_ACROBATICS',		'/Levels/water_acrobatics',		'LP_HEARTS_AND_CRAFTS', 100 );

INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Type, IsBonus) VALUES (3501, 'LN_CIRCULATORY_SYSTEM', '/Levels/got_heart', 'LP_HEARTS_AND_CRAFTS', 1, 1);

/* Cranky Levels */
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Unlocked, ParTime, Type, Available) VALUES (2060, 'LN_CUT_FIRST',			'/Levels/01_CUT_FIRST',				'LP_CRANKY_FOUR', 1, 30, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2061,			 'LN_DONT_BE_GREEDY',		'/Levels/02_DONT_BE_GREEDY',		'LP_CRANKY_FOUR', 40, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2062,			 'LN_CLEAR_PATH',			'/Levels/03_CLEAR_A_PATH',			'LP_CRANKY_FOUR', 50, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2063,			 'LN_ACID_RAIN',			'/Levels/04_ACID_RAIN',				'LP_CRANKY_FOUR', 40, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2064,			 'LN_HEROS_JOURNEY',		'/Levels/05_HEROS_JOURNEY',			'LP_CRANKY_FOUR', 50, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2065,			 'LN_POISON_POWER',			'/Levels/06_POISON_POWER',			'LP_CRANKY_FOUR', 60, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2066,			 'LN_WATER_CATCHER',	    '/Levels/07_WATER_CATCHER',			'LP_CRANKY_FOUR', 60, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2067,			 'LN_CROSSING_PATHS_NAME',		'/Levels/08_CROSSING_PATHS',		'LP_CRANKY_FOUR', 50, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2068,			 'LN_HOT_AIR_TRIGGER',		'/Levels/09_HOT_AIR_TRIGGER',		'LP_CRANKY_FOUR', 60, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2069,			 'LN_MAKE_A_MOUNTAIN',		'/Levels/10_MAKE_A_MOUNTAIN',		'LP_CRANKY_FOUR', 70, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2070,			 'LN_OCCLUSION_JOURNEY',	'/Levels/11_WIND_SHIELD',		    'LP_CRANKY_FOUR', 50, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2071,			 'LN_CLOSING_TIMER',	    '/Levels/12_CLOSING_TIMER',			'LP_CRANKY_FOUR', 35, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2072,			 'LN_TEAR_DOWN_THE_WALLS',  '/Levels/13_TEAR_DOWN_THE_WALLS',	'LP_CRANKY_FOUR', 60, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2073,			 'LN_WIND_BUCKET',			'/Levels/14_WIND_BUCKET',			'LP_CRANKY_FOUR', 40, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2074,			 'LN_GAINING_GROUND',		'/Levels/15_GAINING_GROUND',		'LP_CRANKY_FOUR', 75, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2075,			 'LN_POISON_GAUNTLET',		'/Levels/16_POISON_GAUNTLET',		'LP_CRANKY_FOUR', 75, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2076,			 'LN_CHEMICAL_REACTIONS',	'/Levels/17_CHEMICAL_REACTIONS',	'LP_CRANKY_FOUR', 60, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2077,			 'LN_MASTER_MOLD',			'/Levels/18_MASTER_MOLD',			'LP_CRANKY_FOUR', 60, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2078,			 'LN_WHERES_MY_POISON',		'/Levels/19_WHERES_MY_POISON',		'LP_CRANKY_FOUR', 115, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2079,			 'LN_DOOMSDAY_CLOCK',		'/Levels/20_DOOMSDAY_CLOCK',		'LP_CRANKY_FOUR', 30, 1, 0);		

/* Cranky Bonus Levels */
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Type, Available, IsBonus) VALUES (2506,	'LN_HIDE_AND_SEEK',			'/Levels/B1_HIDE_AND_SEEK',			'LP_BONUS_CRANKY', 1, 0, 1);		 
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Type, Available, IsBonus) VALUES (2507,	'LN_HOLES_IN_THE_WALLS',		'/Levels/B2_fragile_walls',		'LP_BONUS_CRANKY', 1, 0, 1);
	
	
/*
 * CRANKY CHALLENGES
 */
	
/* DATA - Challenge set 7 */
INSERT OR IGNORE INTO CrankyChallengeInfo ( ID, Desc, Available, IAP_item_id, LevelName, LevelRequirements ) VALUES 
										  ( 70, 'CHALLENGE_BOTTOM_SPOUT', 0, 'crankypack01', '/Levels/drip_drop_bam', 'nospout:Spout54 ducks:3' );

INSERT OR IGNORE INTO CrankyChallengeInfo ( ID, Desc, Available, IAP_item_id, LevelName, LevelRequirements ) VALUES 
										  ( 71, 'CHALLENGE_NO_GREEN_OOZE', 0, 'crankypack01', '/Levels/boxes', 'losefluid:ooze ducks:3' );

INSERT OR IGNORE INTO CrankyChallengeInfo ( ID, Desc, Available, IAP_item_id, LevelName, LevelRequirements ) VALUES 
										  ( 72, 'CHALLENGE_8_Y_SWITCHES', 0, 'crankypack01', '/Levels/octospout', 'yswitchcount:8 ducks:3' );

/* DATA - Challenge set 8 */
INSERT OR IGNORE INTO CrankyChallengeInfo ( ID, Desc, Available, IAP_item_id, LevelName, LevelRequirements ) VALUES 
										  ( 80, 'CHALLENGE_SWAMPY_DUCKS', 0, 'crankypack01', '/Levels/around_the_world', 'swampyducks ducks:3');

INSERT OR IGNORE INTO CrankyChallengeInfo ( ID, Desc, Available, IAP_item_id, LevelName, LevelRequirements ) VALUES 
										  ( 81, 'CHALLENGE_NO_Y', 0, 'crankypack01', '/Levels/03_CLEAR_A_PATH', 'yswitchcount:0' );

INSERT OR IGNORE INTO CrankyChallengeInfo ( ID, Desc, Available, IAP_item_id, LevelName, LevelRequirements ) VALUES 
										  ( 82, 'CHALLENGE_ZERO_DUCK', 0, 'crankypack01', '/Levels/all_green_lights', 'ducks:0' );



/*
 * ACHIEVEMENTS
 */

INSERT OR IGNORE INTO Achievements (rowid, Points, ID, PreEarnedDescription, EarnedDescription, Image) VALUES (39, '', 'ACH_THREESTAR_LP_CALENDAR_UNLOCK', 'ACH_THREESTAR_LP_CALENDAR_UNLOCK_HOWTO', 'ACH_THREESTAR_LP_CALENDAR_UNLOCK_DESC', 'ACH_THREESTAR_LP_LOST1.png');
INSERT OR IGNORE INTO Achievements (rowid, Points, ID, PreEarnedDescription, EarnedDescription, Image) VALUES (40, '', 'ACH_THREESTAR_LP_HEARTS_AND_CRAFTS', 'ACH_THREESTAR_LP_HEARTS_AND_CRAFTS_HOWTO', 'ACH_THREESTAR_LP_HEARTS_AND_CRAFTS_DESC', 'ACH_THREESTAR_LP_LOST2.png');
INSERT OR IGNORE INTO Achievements (rowid, Points, ID, PreEarnedDescription, EarnedDescription, Image) VALUES (41, '', 'ACH_10_DAYS', 'ACH_10_DAYS_HOWTO', 'ACH_10_DAYS_DESC', 'ACH_10_DAYS.png');




/*
 * FOOD DATA
 */

/* Add the new food items. */
INSERT OR IGNORE INTO FoodInfo (ID, Basename, ObjectName, GroupName) VALUES				(21, 'food_boat',		'x_food_23',	'FOOD_GROUP_7');
INSERT OR IGNORE INTO FoodInfo (ID, Basename, ObjectName, GroupName) VALUES				(22, 'food_anchor',		'x_food_24',	'FOOD_GROUP_7');
INSERT OR IGNORE INTO FoodInfo (ID, Basename, ObjectName, GroupName) VALUES				(23, 'food_hat',		'x_food_25',	'FOOD_GROUP_7');

INSERT OR IGNORE INTO FoodInfo (ID, Basename, ObjectName, GroupName) VALUES				(24, 'food_jello',		'x_food_26',	'FOOD_GROUP_8');
INSERT OR IGNORE INTO FoodInfo (ID, Basename, ObjectName, GroupName) VALUES				(25, 'food_lollipop',	'x_food_27',	'FOOD_GROUP_8');
INSERT OR IGNORE INTO FoodInfo (ID, Basename, ObjectName, GroupName) VALUES				(26, 'food_cake',		'x_food_28',	'FOOD_GROUP_8');


/*
 * Level Pack Facebook Album Names
 */
UPDATE LevelPackInfo SET 'FB_AlbumName'='Swampy 01 - Meet Swampy'            WHERE PackName='LP_ONE';
UPDATE LevelPackInfo SET 'FB_AlbumName'='Swampy 02 - Troubled Waters'        WHERE PackName='LP_TWO';
UPDATE LevelPackInfo SET 'FB_AlbumName'='Swampy 03 - Under Pressure'         WHERE PackName='LP_THREE';
UPDATE LevelPackInfo SET 'FB_AlbumName'='Swampy 04 - Sink or Swim'           WHERE PackName='LP_FOUR';
UPDATE LevelPackInfo SET 'FB_AlbumName'='Swampy 05 - Change is Good'         WHERE PackName='LP_FIVE';
UPDATE LevelPackInfo SET 'FB_AlbumName'='Swampy 06 - Boiling Point'          WHERE PackName='LP_SIX';
UPDATE LevelPackInfo SET 'FB_AlbumName'='Swampy 07 - Stretched Thin'         WHERE PackName='LP_SEVEN';
UPDATE LevelPackInfo SET 'FB_AlbumName'='Swampy 08 - Caution to the Wind'    WHERE PackName='LP_EIGHT';
UPDATE LevelPackInfo SET 'FB_AlbumName'='Swampy 09 - Rising Tide'            WHERE PackName='LP_NINE';

UPDATE LevelPackInfo SET 'FB_AlbumName'='Swampy Bonus Levels'      WHERE PackName='LP_BONUS';
UPDATE LevelPackInfo SET 'FB_AlbumName'='Cranky Bonus Levels'      WHERE PackName='LP_BONUS_CRANKY';

UPDATE LevelPackInfo SET 'FB_AlbumName'='Cranky 01 - Crankys First Course'  WHERE PackName='LP_CRANKY_ONE';
UPDATE LevelPackInfo SET 'FB_AlbumName'='Cranky 02 - Hunger Pains'           WHERE PackName='LP_CRANKY_TWO';
UPDATE LevelPackInfo SET 'FB_AlbumName'='Cranky 03 - Bulking Up'             WHERE PackName='LP_CRANKY_THREE';
UPDATE LevelPackInfo SET 'FB_AlbumName'='Cranky 04 - Overstuffed'            WHERE PackName='LP_CRANKY_FOUR';


UPDATE LevelPackInfo SET 'FB_AlbumName'='Lost Levels 01 - 10 Days of Swampy' WHERE PackName='LP_CALENDAR_UNLOCK';
UPDATE LevelPackInfo SET 'FB_AlbumName'='Lost Levels 02 - Hearts and Crafts' WHERE PackName='LP_HEARTS_AND_CRAFTS';

/*
 * DATABASE/SETTINGS
*/

/* Add RateApp available into db */
INSERT OR IGNORE INTO Settings (Name, Value) VALUES ('RateAppAvailable', 1);

/* Remember the last day we played, so we can do a 10-days-in-a-row achievement */
INSERT OR IGNORE INTO PlayerData (EventName, EventValue) VALUES ('DateLastPlayed', 0);

/* Remember consecutive days we played, so we can do that achievement */
INSERT OR IGNORE INTO PlayerData (EventName, EventValue) VALUES ('ConsecutiveDaysPlayed', 0);

/* Reset AMPS Info */
UPDATE PlayerData SET EventValue=0 WHERE EventName='DateOfNextAMPSCheck';
UPDATE PlayerData SET EventValue=0 WHERE EventName='AMPSDownloadWasInterrupted';

/* Last but not least, update the database version number */
UPDATE Settings SET Value=11 WHERE Name='DatabaseVersion';
