/*
 * LEVEL PACK INFO
 */
 
INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, StarsRequired, TileTexture, LightingColor, CurtainTexture, LockColor, PackIcon) VALUES 
									(18, 'LP_NINE', 425, 'tile_yellow', '188 153 71', 'shower_curtain_01', '217 102 255', 'world_select_08');
                                    
INSERT OR IGNORE INTO LevelPackInfo (ID, Unlocked, PackName, PackType, PackIcon, Storyline, IAP_item_id, TileTexture, Bought) VALUES 
									(62, 1, 'LP_CRANKY_THREE', 3, 'world_select_cranky_02', 1, 'crankypack01', 'cranky_bricks_purple', 0);
									
INSERT OR IGNORE INTO LevelPackInfo (ID, Unlocked, PackName, PackType, PackIcon, Storyline, IAP_item_id, TileTexture, Bought, StarsRequired) VALUES 
									(63, 1, 'LP_CRANKY_FOUR', 3, 'world_select_cranky_03', 1, 'crankypack01', 'cranky_bricks_purple', 0, -1);
		
/* Cranky secret levels! */
INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, PackType, Storyline) VALUES 
									(-100, 'LP_SECRET_CRANKY', 0, 1);
			
					
/*
 * LEVEL INFO
 */

/* Swampy Levels */
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Unlocked) VALUES (181,	'LN_CHANGE_DIRECTION',		'/Levels/change_directions',		'LP_NINE', 90, 1);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (182,			'LN_MIX_IT_UP',				'/Levels/hydrospheres',			    'LP_NINE', 90);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (183,			'LN_ALTERNATING_CURRENTS',	'/Levels/switch_it_up',			    'LP_NINE', 90);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (184,			'LN_ONE_SHOT_WONDER',		'/Levels/one_in_the_barrel',		'LP_NINE', 90);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (185,			'LN_CONJUNCTION_JUNCTION',	'/Levels/FlippingSwitches',			'LP_NINE', 90);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (186,			'LN_HALF_AND_HALF_TWO',		'/Levels/spread_the_wealth',		'LP_NINE', 90);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (187,			'LN_CROSSING_GUARD',		'/Levels/pass_the_peas',		    'LP_NINE', 90);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (188,			'LN_STOPPED_UP',		    '/Levels/stoppit',					'LP_NINE', 90);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (189,			'LN_STOP_AND_DROP',			'/Levels/plop',     				'LP_NINE', 90);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (190,			'LN_KEEP_IT_UP',			'/Levels/keep_it_up',		    	'LP_NINE', 90);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (191,			'LN_RAINMAKER',				'/Levels/rainmaker',				'LP_NINE', 90);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (192,			'LN_HALF_EMPTY',		    '/Levels/flooded_shooting',			'LP_NINE', 90);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (193,			'LN_OCTOSPOUT',			    '/Levels/octospout',		    	'LP_NINE', 90);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (194,			'LN_EXPLODING_ELEVATOR',    '/Levels/all_is_needed',			'LP_NINE', 90);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (195,			'LN_TRI_CYCLE',		        '/Levels/controlled_thought-JOSE',	'LP_NINE', 90);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (196,			'LN_STEAM_SPLITTER',		'/Levels/steam_splitter',			'LP_NINE', 90);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (197,			'LN_OOZEPOCALYPSE',			'/Levels/oozepocalypse2012',		'LP_NINE', 90);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (198,			'LN_LEVITATING_LIQUIDS',	'/Levels/juggling',  	    		'LP_NINE', 90);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (199,			'LN_OOZE_IT_OR_LOSE_IT',	'/Levels/need_all_of_it',			'LP_NINE', 90);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (200,			'LN_FULL_OF_HOT_AIR',		'/Levels/valve_playground',			'LP_NINE', 200);

/* Swampy Bonus Levels */
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, IsBonus) VALUES (96,	'LN_DONUTS',				'/Levels/donuts',					'LP_BONUS', 100, 1);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, IsBonus) VALUES (97,	'LN_TWO_WAY_STREAMS',		'/Levels/Y-No-Bonus',				'LP_BONUS', 100, 1);


/* Cranky Levels */
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Unlocked, ParTime, Type, Available) VALUES (2040, 'LN_FILL_IT_FIRST',	     '/Levels/save_your_shot',           'LP_CRANKY_THREE', 1, 90, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2041,			 'LN_WATER_WHEEL',		     '/Levels/giant_wheel_JOSE',         'LP_CRANKY_THREE', 90, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2042,			 'LN_WATERFALL',		     '/Levels/waterfall2',               'LP_CRANKY_THREE', 90, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2043,			 'LN_CROSS_THE_LINE',	     '/Levels/combinator',               'LP_CRANKY_THREE', 90, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2044,			 'LN_CRANKY_BLAST',		     '/Levels/Kblast',                   'LP_CRANKY_THREE', 90, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2045,			 'LN_RAINCATCHER',		     '/Levels/raincatcher',              'LP_CRANKY_THREE', 90, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2046,			 'LN_EXPLOSIVE_COMBINATION', '/Levels/one_drop',                 'LP_CRANKY_THREE', 90, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2047,			 'LN_BOTTOM_FEEDER',	     '/Levels/BottomFeeder',             'LP_CRANKY_THREE', 90, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2048,			 'LN_GUSHER',		         '/Levels/gusher',                   'LP_CRANKY_THREE', 90, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2049,			 'LN_BLOCKED_SHOTS',	     '/Levels/Interruptions',            'LP_CRANKY_THREE', 90, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2050,			 'LN_BOXED_IN',			     '/Levels/boxes',                    'LP_CRANKY_THREE', 90, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2051,			 'LN_BLOW_YOUR_TOP',		 '/Levels/contained',                'LP_CRANKY_THREE', 90, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2052,			 'LN_DRIP_DROP_BAM',	     '/Levels/drip_drop_bam',	         'LP_CRANKY_THREE', 90, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2053,			 'LN_UNLEASH_THE_OOZE',		 '/Levels/circus_ooze_BHVR',	     'LP_CRANKY_THREE', 90, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2054,			 'LN_LEAKY_FAUCET',		     '/Levels/LeakySpoutOneScreen',	     'LP_CRANKY_THREE', 90, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2055,			 'LN_GRAVITY_PUSH',          '/Levels/gravity_work_for_me_TOM',  'LP_CRANKY_THREE', 90, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2056,			 'LN_CROSS_THE_STREAMS',	 '/Levels/cross_the_streams',		 'LP_CRANKY_THREE', 90, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2057,			 'LN_WATER_DELIVERY_SERVICE','/Levels/convergence_points',		 'LP_CRANKY_THREE', 90, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2058,			 'LN_PUMP_SYSTEM',		     '/Levels/pump_system',			     'LP_CRANKY_THREE', 90, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available) VALUES (2059,			 'LN_STRAIGHT_AND_NARROW',	 '/Levels/one_dimensional',		     'LP_CRANKY_THREE', 180, 1, 0);	

/* Cranky Bonus Levels */
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available, IsBonus) VALUES (2504,	'LN_FOUR_SQUARE',           '/Levels/two_dimensional',		     'LP_BONUS_CRANKY', 50, 1, 0, 1);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, Available, IsBonus) VALUES (2505,	'LN_THE_LONG_BOMB',			'/Levels/long_bomb',		         'LP_BONUS_CRANKY', 25, 1, 0, 1);

/* Cranky Secret Level */
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, IgnoreInStarCount) VALUES (1003,         'LN_MINING_LASER',          '/Levels/mining_lazer',             'LP_SECRET_CRANKY', 90, 1);			 
	

/* 
 * We made a mistake - we've forgotten to mark bonus levels as IsBonus in the DB
 * ANNNND, now that Secret levels are part of the LP_SECRET pack, we can do it blindly! 
 */
UPDATE LevelInfo SET IsBonus=1 WHERE PackName='LP_BONUS';
UPDATE LevelInfo SET IsBonus=1 WHERE PackName='LP_BONUS_CRANKY';

	
	
/*
 * CRANKY CHALLENGES
 */
	
/* DATA - Challenge set 5 */
INSERT OR IGNORE INTO CrankyChallengeInfo (ID, Desc, Available, IAP_item_id, LevelName, LevelRequirements ) VALUES 
										( 50, 'CHALLENGE_ZERO_DUCK', 0, 'crankypack01', '/Levels/smash_them_together', 'ducks:0' );

INSERT OR IGNORE INTO CrankyChallengeInfo (ID, Desc, Available, IAP_item_id, LevelName, LevelRequirements ) VALUES 
										( 51, 'CHALLENGE_EXPLOSIONS_TRI', 0, 'crankypack01', '/Levels/mine_field', 'explosions:11 ducks:3 winwait:5' );

INSERT OR IGNORE INTO CrankyChallengeInfo (ID, Desc, Available, IAP_item_id, LevelName, LevelRequirements ) VALUES 
										( 52, 'CHALLENGE_NO_SWITCH', 0, 'crankypack01', '/Levels/scaffolding', 'noswitch:Switch10 ducks:3 winwait:3' );

/* DATA - Challenge set 6 */
INSERT OR IGNORE INTO CrankyChallengeInfo (ID, Desc, Available, IAP_item_id, LevelName, LevelRequirements ) VALUES 
										( 60, 'CHALLENGE_NO_BRIDGE_BUILDING', 0, 'crankypack01', '/Levels/through_the_bridge', 'noalgaeooze ducks:3 winwait:3');

INSERT OR IGNORE INTO CrankyChallengeInfo (ID, Desc, Available, IAP_item_id, LevelName, LevelRequirements ) VALUES 
										( 61, 'CHALLENGE_ZERO_DUCK', 0, 'crankypack01', '/Levels/Vacuum_Bridge', 'ducks:0' );

INSERT OR IGNORE INTO CrankyChallengeInfo (ID, Desc, Available, IAP_item_id, LevelName, LevelRequirements ) VALUES 
										( 62, 'CHALLENGE_SWAMPY_DUCKS', 0, 'crankypack01', '/Levels/CR_recontamination', 'swampyducks ducks:3 winwait:3' );     



/*
 * FOOD DATA (New to 1.5.0 - this version)
 */

/* Create the table for the food */
CREATE TABLE "FoodInfo" ("ID" INTEGER PRIMARY KEY  NOT NULL  UNIQUE , "Basename" TEXT, "ObjectName" TEXT, "GroupName" TEXT, "Unlocked" BOOL DEFAULT 0, "HasViewed" BOOL DEFAULT 0);

/* Populate the table with 'old' data - all of the existing food items. */
INSERT OR IGNORE INTO FoodInfo (ID, Basename, ObjectName, GroupName, Unlocked, HasViewed) VALUES	(00, 'food_t_bone',			'x_food_11',	'FOOD_GROUP_0', 1, 1);
INSERT OR IGNORE INTO FoodInfo (ID, Basename, ObjectName, GroupName, Unlocked, HasViewed) VALUES	(01, 'food_drumstick',		'x_food_04',	'FOOD_GROUP_0',	1, 1);
INSERT OR IGNORE INTO FoodInfo (ID, Basename, ObjectName, GroupName, Unlocked, HasViewed) VALUES	(02, 'food_gross_fish',		'x_food_05',	'FOOD_GROUP_0', 1, 1);

INSERT OR IGNORE INTO FoodInfo (ID, Basename, ObjectName, GroupName) VALUES				(03, 'food_tire',			'x_food_13',	'FOOD_GROUP_1');
INSERT OR IGNORE INTO FoodInfo (ID, Basename, ObjectName, GroupName) VALUES				(04, 'food_license',		'x_food_21',	'FOOD_GROUP_1');
INSERT OR IGNORE INTO FoodInfo (ID, Basename, ObjectName, GroupName) VALUES				(05, 'food_muffler',		'x_food_22',	'FOOD_GROUP_1');

INSERT OR IGNORE INTO FoodInfo (ID, Basename, ObjectName, GroupName) VALUES				(06, 'food_rotten_apple',	'x_food_09',	'FOOD_GROUP_2');
INSERT OR IGNORE INTO FoodInfo (ID, Basename, ObjectName, GroupName) VALUES				(07, 'food_banana_peel',	'x_food_01',	'FOOD_GROUP_2');
INSERT OR IGNORE INTO FoodInfo (ID, Basename, ObjectName, GroupName) VALUES				(08, 'food_watermelon',		'x_food_14',	'FOOD_GROUP_2');

INSERT OR IGNORE INTO FoodInfo (ID, Basename, ObjectName, GroupName) VALUES				(09, 'food_telephone',		'x_food_12',	'FOOD_GROUP_3');
INSERT OR IGNORE INTO FoodInfo (ID, Basename, ObjectName, GroupName) VALUES				(10, 'food_boot',			'x_food_02',	'FOOD_GROUP_3');
INSERT OR IGNORE INTO FoodInfo (ID, Basename, ObjectName, GroupName) VALUES				(11, 'food_dryer',			'x_food_18',	'FOOD_GROUP_3');

INSERT OR IGNORE INTO FoodInfo (ID, Basename, ObjectName, GroupName) VALUES				(12, 'food_safe',			'x_food_10',	'FOOD_GROUP_4');
INSERT OR IGNORE INTO FoodInfo (ID, Basename, ObjectName, GroupName) VALUES				(13, 'food_can',			'x_food_03',	'FOOD_GROUP_4');
INSERT OR IGNORE INTO FoodInfo (ID, Basename, ObjectName, GroupName) VALUES				(14, 'food_lunchbox',		'x_food_17',	'FOOD_GROUP_4');


/* Add 'new' food items from this update. */
INSERT OR IGNORE INTO FoodInfo (ID, Basename, ObjectName, GroupName) VALUES				(15, 'food_moldy_burger',	'x_food_06',	'FOOD_GROUP_5');
INSERT OR IGNORE INTO FoodInfo (ID, Basename, ObjectName, GroupName) VALUES				(16, 'food_fries',			'x_food_15',	'FOOD_GROUP_5');
INSERT OR IGNORE INTO FoodInfo (ID, Basename, ObjectName, GroupName) VALUES				(17, 'food_drink',			'x_food_16',	'FOOD_GROUP_5');

INSERT OR IGNORE INTO FoodInfo (ID, Basename, ObjectName, GroupName) VALUES				(18, 'food_plunger',		'x_food_08',	'FOOD_GROUP_6');
INSERT OR IGNORE INTO FoodInfo (ID, Basename, ObjectName, GroupName) VALUES				(19, 'food_scrubby',		'x_food_19',	'FOOD_GROUP_6');
INSERT OR IGNORE INTO FoodInfo (ID, Basename, ObjectName, GroupName) VALUES				(20, 'food_tpaper',			'x_food_20',	'FOOD_GROUP_6');

	

/*
 * ACHIEVEMENTS
 */

INSERT OR IGNORE INTO Achievements (rowid, Points, ID, PreEarnedDescription, EarnedDescription, Image) VALUES (36, '', 'ACH_LP_NINE', 'ACH_LP_NINE_HOWTO', 'ACH_LP_NINE_DESC', 'ACH_LP_NINE.png');
INSERT OR IGNORE INTO Achievements (rowid, Points, ID, PreEarnedDescription, EarnedDescription, Image) VALUES (37, '', 'ACH_THREESTAR_LP_NINE', 'ACH_THREESTAR_LP_NINE_HOWTO', 'ACH_THREESTAR_LP_NINE_DESC', 'ACH_THREESTAR_LP_NINE.png');
INSERT OR IGNORE INTO Achievements (rowid, Points, ID, PreEarnedDescription, EarnedDescription, Image) VALUES (38, '', 'ACH_MINING_LASER', 'ACH_MINING_LASER_HOWTO', 'ACH_MINING_LASER_DESC', 'ACH_MINING_LASER.png');



/*
 * COLLECTIBLES
 */

INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (48, 'Collect_Clock');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (49, 'Collect_Iron');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (50, 'Collect_Toaster');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (51, 'Collect_Balloon');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (52, 'Collect_Party_Favor');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (53, 'Collect_Party_Hat');



/*
 * DATABASE/SETTINGS
 */

/* On this update, do the 'We beat levels so give us food' check. */
INSERT OR IGNORE INTO PlayerData (EventName, EventValue) VALUES ('CheckCrankyLevelsForFood', 1);

/* On this update, do the 'We beat levels so give us food' check. */
INSERT OR IGNORE INTO PlayerData (EventName, EventValue) VALUES ('ShouldDeleteLocalAmpsCat', 1);

/* Also on this update, remind players there's more content in Cranky. */
INSERT OR IGNORE INTO PlayerData (EventName, EventValue) VALUES ('NewCrankyContent', 1);

/* We're storing the language preference differently now... */
INSERT OR IGNORE INTO PlayerData (EventName, EventValue, EventStringValue) VALUES ('PreferredLanguage', -1, '');

/* iCloud default settings */
INSERT OR IGNORE INTO PlayerData (EventName, EventValue) VALUES ('CloudSyncPrompted', 0);
INSERT OR IGNORE INTO Settings (Name, Value) VALUES ('CloudSync', 0);

/* Reset AMPS Info */
UPDATE PlayerData SET EventValue=0 WHERE EventName='DateOfNextAMPSCheck';
UPDATE PlayerData SET EventValue=0 WHERE EventName='AMPSDownloadWasInterrupted';

/* Last but not least, update the database version number */
UPDATE Settings SET Value=10 WHERE Name='DatabaseVersion';