/*
 *	HUB INFO
 */

/* Mystery Ducks */
INSERT OR IGNORE INTO HubInfo (	ID, Storyline, TitleTexture, MainTexture, FrameTexture, TextColor,
								TextLine1, TextLine2, DuckCharacter, TextButton, IAP_item_id, Bought, AlertText ) VALUES
							  (	15, 3, 'UI_mysteryduck_logo.png', 'UI_storyicon_mysteryduck.png', 'WMW_UI_pipeframe.png', '75 21 13',
								'HUB_TEXT_MYSTERY_TITLE', 'HUB_TEXT_MYSTERY_BODY', '≛', 'PLAY', 'mysteryduck01', 0, 'MYSTERY_NEW_ALERT_LAUNCH' );
								
/* Perry Demo */
INSERT OR IGNORE INTO HubInfo (	ID, Storyline, TitleTexture, MainTexture, FrameTexture, TextColor,
								TextLine1, TextLine2, TextButton, AlertText ) VALUES
							  (	85, -1, 'WMW_UI_perry_logo.png', 'story_perry_icon.png', 'WMW_UI_pipeframe.png', '0 72 131',
								'HUB_TEXT_PERRY_TITLE', 'HUB_TEXT_PERRY_BODY', 'PLAY', 'PERRY_NEW_ALERT_LAUNCH' );


/* Change text for "Gift" button */
UPDATE HubInfo SET TextButton='GIFT' WHERE ID=90;


/* Add Swampy Alert badge */
UPDATE HubInfo SET AlertText='SWAMPY_NEW_ALERT_OUT_TO_DRY' WHERE ID=10;


/* Adding Column for StoryLine "Unlocked" support */
ALTER TABLE HubInfo ADD COLUMN 'Unlocked' BOOL DEFAULT 0;



/*
 *	LEVEL PACK INFO
 */

/* New Swampy chapter */
INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, StarsRequired, TileTexture, LightingColor, CurtainTexture, LockColor, PackIcon, FB_AlbumName) VALUES 
									(19, 'LP_TEN', 485, 'tile_purple', '193 152 192', 'shower_curtain_02', '181 255 102', 'WMW_world_select_09', 'Swampy 10 - Out to Dry');


/* If Cranky hasn't been purchased, change the locked and stars required status*/
UPDATE LevelPackInfo SET Unlocked=0, StarsRequired=25, LockColor="181 255 102" WHERE PackName="LP_CRANKY_TWO" AND Bought=0;
UPDATE LevelPackInfo SET Unlocked=0, StarsRequired=65, LockColor="217 102 255" WHERE PackName="LP_CRANKY_THREE" AND Bought=0;
UPDATE LevelPackInfo SET Unlocked=0, StarsRequired=125, LockColor="181 255 102" WHERE PackName="LP_CRANKY_FOUR" AND Bought=0;


/* Add a new "DisplayPackName" columns (so we can make the Mystery packs use the same names as Swampy) */
ALTER TABLE LevelPackInfo ADD COLUMN 'DisplayPackName' TEXT NOT NULL DEFAULT '';


/* Mystery Level Packs */
INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, DisplayPackName, StarsRequired, TileTexture, LockColor, PackIcon, Storyline, IAP_item_id, Unlocked) VALUES 
									(41, 'LP_ONE_MYSTERY', 'LP_ONE', 0, 'MD_brick_tile', '217 102 255', 'world_select_00', 3, 'mysteryduck01', 1);
									
									
INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, DisplayPackName, StarsRequired, TileTexture, LockColor, PackIcon, Storyline, PackType, IAP_item_id) VALUES 
									(42, 'LP_TWO_MYSTERY', 'LP_TWO', 12, 'MD_brick_tile', '102 250 255', 'world_select_01', 3, 3, 'mysteryduck01');
									
INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, DisplayPackName, StarsRequired, TileTexture, LockColor, PackIcon, Storyline, PackType, IAP_item_id) VALUES 
									(43, 'LP_THREE_MYSTERY', 'LP_THREE', 30, 'MD_brick_tile', '217 102 255', 'world_select_02', 3, 3, 'mysteryduck01');
									
INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, DisplayPackName, StarsRequired, TileTexture, LockColor, PackIcon, Storyline, PackType, IAP_item_id) VALUES 
									(44, 'LP_FOUR_MYSTERY', 'LP_FOUR', 45, 'MD_brick_tile', '181 255 102', 'world_select_03', 3, 3, 'mysteryduck01');
									
INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, DisplayPackName, StarsRequired, TileTexture, LockColor, PackIcon, Storyline, PackType, IAP_item_id) VALUES 
									(45, 'LP_FIVE_MYSTERY', 'LP_FIVE', 65, 'MD_brick_tile', '102 250 255', 'world_select_04', 3, 3, 'mysteryduck01');
									
INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, DisplayPackName, StarsRequired, TileTexture, LockColor, PackIcon, Storyline, PackType, IAP_item_id) VALUES 
									(46, 'LP_SIX_MYSTERY', 'LP_SIX', 85, 'MD_brick_tile', '217 102 255', 'world_select_05', 3, 3, 'mysteryduck01');
									
INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, DisplayPackName, StarsRequired, TileTexture, LockColor, PackIcon, Storyline, PackType, IAP_item_id) VALUES 
									(47, 'LP_SEVEN_MYSTERY', 'LP_SEVEN', 105, 'MD_brick_tile', '181 255 102', 'world_select_06', 3, 3, 'mysteryduck01');
									
INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, DisplayPackName, StarsRequired, TileTexture, LockColor, PackIcon, Storyline, PackType, IAP_item_id) VALUES 
									(48, 'LP_EIGHT_MYSTERY', 'LP_EIGHT', 125, 'MD_brick_tile', '102 250 255', 'world_select_07', 3, 3, 'mysteryduck01');
									
INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, DisplayPackName, StarsRequired, TileTexture, LockColor, PackIcon, Storyline, PackType, IAP_item_id) VALUES 
									(49, 'LP_NINE_MYSTERY', 'LP_NINE', 145, 'MD_brick_tile', '217 102 255', 'world_select_08', 3, 3, 'mysteryduck01');
									
INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, DisplayPackName, StarsRequired, TileTexture, LockColor, PackIcon, Storyline, PackType, IAP_item_id) VALUES 
									(50, 'LP_TEN_MYSTERY', 'LP_TEN', 165, 'MD_brick_tile', '181 255 102', 'WMW_world_select_09', 3, 3, 'mysteryduck01');
									
/* Mystery "More Coming Soon" */
INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, PackIcon, Unlocked, PackType, Storyline) VALUES 
									(59, 'COMING_SOON', 'WMW_mystery_comingsoon', 1, 1, 3);
									
/* Mystery Bonus Pack */
INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, PackType, Storyline, IAP_item_id) VALUES 
									(-3, 'LP_BONUS_MYSTERY', 0, 3, 'mysteryduck01');


/* Adding New Column to remember Locksmith duck for each level pack */
ALTER TABLE LevelPackInfo ADD COLUMN 'LS_Unlocked' BOOL DEFAULT 0;




/*
 *	LEVELS
 */
/* Mud levels */
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Unlocked) VALUES (201,	'LN_FIRST_MUD_ALSO',		'/Levels/01_let_it_dry',			'LP_TEN', 40, 1);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (202,			'LN_WALL_AND_ALGAE',		'/Levels/02_muddy_floor',	    	'LP_TEN', 45);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (203,			'LN_DRY_ME',				'/Levels/03_cut_and_dry',			'LP_TEN', 55);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (204,			'LN_WALL_ON_THE_SPOT',		'/Levels/04_plug_the_hole',			'LP_TEN', 45);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (205,			'LN_SLOW_IT_DOWN',			'/Levels/05_bog_it_down',			'LP_TEN', 40);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (206,			'LN_MUDDY_JOURNEY',			'/Levels/06_muddy_journey',			'LP_TEN', 60);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (207,			'LN_ODDWALLS',				'/Levels/07_spots_on_the_wall',		'LP_TEN', 75);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (208,			'LN_CAN_YOU_DIG_IT',	    '/Levels/08_can_you_dig_it',		'LP_TEN', 85);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (209,			'LN_DOUBLE_DECKER_BRIDGE',	'/Levels/09_double_decker_bridge', 	'LP_TEN', 55);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (210,			'LN_DRAINCLOG',				'/Levels/10_walls_of_mud',		    'LP_TEN', 45);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (211,			'LN_MUD_TOWERS',			'/Levels/11_mud_bucket',			'LP_TEN', 75);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (212,			'LN_SLOOP_DU_JOUR',	    	'/Levels/12_make_a_ramp',			'LP_TEN', 75);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (213,			'LN_WET_DRY',	    		'/Levels/13_subdivision',		    'LP_TEN', 70);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (214,			'LN_READY_POSITION',		'/Levels/14_misty_mud',				'LP_TEN', 50);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (215,			'LN_MUD_SLOOP',				'/Levels/15_redo',					'LP_TEN', 65);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (216,			'LN_FILL_THE_COLUMS',		'/Levels/16_fill_columns',			'LP_TEN', 100);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (217,			'LN_LANDFILL',				'/Levels/17_landfill',				'LP_TEN', 110);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (218,			'LN_MUD_BOX',				'/Levels/18_bucket_builder',  	    'LP_TEN', 100);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (219,			'LN_SPA_TREATMENT',			'/Levels/19_spa_treatment',			'LP_TEN', 70);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (220,			'LN_MUD_BRIDGE',			'/Levels/20_dry_landing',			'LP_TEN', 60);

/* Mud bonus levels */
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, IsBonus) VALUES (98,	'LN_FULL_OF_MUD',			'/Levels/b1_full_of_mud',			'LP_BONUS', 100, 1);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, IsBonus) VALUES (99,	'LN_FAST_STREAM',			'/Levels/b2_dirt_divert',			'LP_BONUS', 50, 1);

/* "Mi Amore" secret level (on Achievements screen) */
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, IgnoreInStarCount) VALUES 
								(1008, 'LN_MI_AMORE', '/Levels/mi_amore', 'LP_SECRET', 90, 1);

/* fix par times for pack 9 */
UPDATE LevelInfo SET ParTime=35  WHERE Name='LN_CHANGE_DIRECTION';
UPDATE LevelInfo SET ParTime=50  WHERE Name='LN_MIX_IT_UP';
UPDATE LevelInfo SET ParTime=75  WHERE Name='LN_ALTERNATING_CURRENTS';
UPDATE LevelInfo SET ParTime=50  WHERE Name='LN_ONE_SHOT_WONDER';
UPDATE LevelInfo SET ParTime=70  WHERE Name='LN_CONJUNCTION_JUNCTION';
UPDATE LevelInfo SET ParTime=50  WHERE Name='LN_HALF_AND_HALF_TWO';
UPDATE LevelInfo SET ParTime=60  WHERE Name='LN_CROSSING_GUARD';
UPDATE LevelInfo SET ParTime=45  WHERE Name='LN_STOPPED_UP';
UPDATE LevelInfo SET ParTime=50  WHERE Name='LN_STOP_AND_DROP';
UPDATE LevelInfo SET ParTime=60  WHERE Name='LN_KEEP_IT_UP';
UPDATE LevelInfo SET ParTime=55  WHERE Name='LN_RAINMAKER';
UPDATE LevelInfo SET ParTime=60  WHERE Name='LN_HALF_EMPTY';
UPDATE LevelInfo SET ParTime=75  WHERE Name='LN_OCTOSPOUT';
UPDATE LevelInfo SET ParTime=75  WHERE Name='LN_EXPLODING_ELEVATOR';
UPDATE LevelInfo SET ParTime=100 WHERE Name='LN_TRI_CYCLE';
UPDATE LevelInfo SET ParTime=70  WHERE Name='LN_STEAM_SPLITTER';
UPDATE LevelInfo SET ParTime=30  WHERE Name='LN_OOZEPOCALYPSE';
UPDATE LevelInfo SET ParTime=90  WHERE Name='LN_LEVITATING_LIQUIDS';
UPDATE LevelInfo SET ParTime=70  WHERE Name='LN_OOZE_IT_OR_LOSE_IT';
UPDATE LevelInfo SET ParTime=180 WHERE Name='LN_FULL_OF_HOT_AIR';
UPDATE LevelInfo SET ParTime=40  WHERE Name='LN_DONUTS';
UPDATE LevelInfo SET ParTime=50  WHERE Name='LN_TWO_WAY_STREAMS';

/* fix par times for Cranky 3 */
UPDATE LevelInfo SET ParTime=45  WHERE Name='LN_FILL_IT_FIRST';
UPDATE LevelInfo SET ParTime=50  WHERE Name='LN_WATER_WHEEL';
UPDATE LevelInfo SET ParTime=55  WHERE Name='LN_WATERFALL';
UPDATE LevelInfo SET ParTime=50  WHERE Name='LN_CROSS_THE_LINE';
UPDATE LevelInfo SET ParTime=55  WHERE Name='LN_CRANKY_BLAST';
UPDATE LevelInfo SET ParTime=50  WHERE Name='LN_RAINCATCHER';
UPDATE LevelInfo SET ParTime=55  WHERE Name='LN_EXPLOSIVE_COMBINATION';
UPDATE LevelInfo SET ParTime=50  WHERE Name='LN_BOTTOM_FEEDER';
UPDATE LevelInfo SET ParTime=80  WHERE Name='LN_GUSHER';
UPDATE LevelInfo SET ParTime=60  WHERE Name='LN_BLOCKED_SHOTS';
UPDATE LevelInfo SET ParTime=80  WHERE Name='LN_BOXED_IN';
UPDATE LevelInfo SET ParTime=55  WHERE Name='LN_BLOW_YOUR_TOP';
UPDATE LevelInfo SET ParTime=50  WHERE Name='LN_DRIP_DROP_BAM';
UPDATE LevelInfo SET ParTime=55  WHERE Name='LN_UNLEASH_THE_OOZE';
UPDATE LevelInfo SET ParTime=50  WHERE Name='LN_LEAKY_FAUCET';
UPDATE LevelInfo SET ParTime=55  WHERE Name='LN_GRAVITY_PUSH';
UPDATE LevelInfo SET ParTime=50  WHERE Name='LN_CROSS_THE_STREAMS';
UPDATE LevelInfo SET ParTime=60  WHERE Name='LN_WATER_DELIVERY_SERVICE';
UPDATE LevelInfo SET ParTime=100 WHERE Name='LN_PUMP_SYSTEM';
UPDATE LevelInfo SET ParTime=70  WHERE Name='LN_STRAIGHT_AND_NARROW';
UPDATE LevelInfo SET ParTime=50  WHERE Name='LN_FOUR_SQUARE';
UPDATE LevelInfo SET ParTime=45  WHERE Name='LN_THE_LONG_BOMB';
UPDATE LevelInfo SET ParTime=100  WHERE Name='LN_MINING_LASER';





/*
 * COLLECTIBLES
 */

INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (54, 'collectables_lure');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (55, 'collectables_net');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (56, 'collectables_life_vest');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (57, 'collectables_binoculars');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (58, 'collectables_compass');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (59, 'collectables_lantern');



/*
 * ACHIEVEMENTS
 */

INSERT OR IGNORE INTO Achievements (rowid, Points, ID, PreEarnedDescription, EarnedDescription, Image) VALUES (42, '', 'ACH_LP_TEN', 'ACH_LP_TEN_HOWTO', 'ACH_LP_TEN_DESC', 'ACH_LP_TEN.png');
INSERT OR IGNORE INTO Achievements (rowid, Points, ID, PreEarnedDescription, EarnedDescription, Image) VALUES (43, '', 'ACH_THREESTAR_LP_TEN', 'ACH_THREESTAR_LP_TEN_HOWTO', 'ACH_THREESTAR_LP_TEN_DESC', 'ACH_THREESTAR_LP_TEN.png');

/* Add Facebook-specific achievement descriptions */
ALTER TABLE Achievements ADD COLUMN 'FacebookDescription' TEXT NOT NULL DEFAULT '';
UPDATE Achievements SET FacebookDescription='ACH_LP_ONE_FB' WHERE ID='ACH_LP_ONE';
UPDATE Achievements SET FacebookDescription='ACH_LP_TWO_FB' WHERE ID='ACH_LP_TWO';
UPDATE Achievements SET FacebookDescription='ACH_LP_THREE_FB' WHERE ID='ACH_LP_THREE';
UPDATE Achievements SET FacebookDescription='ACH_LP_FOUR_FB' WHERE ID='ACH_LP_FOUR';
UPDATE Achievements SET FacebookDescription='ACH_THREESTAR_LP_ONE_FB' WHERE ID='ACH_THREESTAR_LP_ONE';
UPDATE Achievements SET FacebookDescription='ACH_THREESTAR_LP_TWO_FB' WHERE ID='ACH_THREESTAR_LP_TWO';
UPDATE Achievements SET FacebookDescription='ACH_THREESTAR_LP_THREE_FB' WHERE ID='ACH_THREESTAR_LP_THREE';
UPDATE Achievements SET FacebookDescription='ACH_THREESTAR_LP_FOUR_FB' WHERE ID='ACH_THREESTAR_LP_FOUR';
UPDATE Achievements SET FacebookDescription='ACH_1_COLLECTIBLE_FB' WHERE ID='ACH_1_COLLECTIBLE';
UPDATE Achievements SET FacebookDescription='ACH_10_COLLECTIBLES_FB' WHERE ID='ACH_10_COLLECTIBLES';
UPDATE Achievements SET FacebookDescription='ACH_ALL_COLLECTIBLES_FB' WHERE ID='ACH_ALL_COLLECTIBLES';
UPDATE Achievements SET FacebookDescription='ACH_UNLOCK_A_BONUS_LEVEL_FB' WHERE ID='ACH_UNLOCK_A_BONUS_LEVEL';
UPDATE Achievements SET FacebookDescription='ACH_LP_BONUS_FB' WHERE ID='ACH_LP_BONUS';
UPDATE Achievements SET FacebookDescription='ACH_SHALLOWBATH_FB' WHERE ID='ACH_SHALLOWBATH';
UPDATE Achievements SET FacebookDescription='ACH_EMBARRASS_FB' WHERE ID='ACH_EMBARRASS';
UPDATE Achievements SET FacebookDescription='ACH_POISONWATER_FB' WHERE ID='ACH_POISONWATER';
UPDATE Achievements SET FacebookDescription='ACH_UGLYDUCKLING_FB' WHERE ID='ACH_UGLYDUCKLING';
UPDATE Achievements SET FacebookDescription='ACH_EFFICIENT_CUT_FB' WHERE ID='ACH_EFFICIENT_CUT';
UPDATE Achievements SET FacebookDescription='ACH_QUICKFINISH_FB' WHERE ID='ACH_QUICKFINISH';
UPDATE Achievements SET FacebookDescription='ACH_CONFIDENCE_FB' WHERE ID='ACH_CONFIDENCE';
UPDATE Achievements SET FacebookDescription='ACH_LASTDROP_FB' WHERE ID='ACH_LASTDROP';
UPDATE Achievements SET FacebookDescription='ACH_OCD_FB' WHERE ID='ACH_OCD';
UPDATE Achievements SET FacebookDescription='ACH_WHO_FB' WHERE ID='ACH_WHO';
UPDATE Achievements SET FacebookDescription='ACH_LP_FIVE_FB' WHERE ID='ACH_LP_FIVE';
UPDATE Achievements SET FacebookDescription='ACH_THREESTAR_LP_FIVE_FB' WHERE ID='ACH_THREESTAR_LP_FIVE';
UPDATE Achievements SET FacebookDescription='ACH_LP_SIX_FB' WHERE ID='ACH_LP_SIX';
UPDATE Achievements SET FacebookDescription='ACH_THREESTAR_LP_SIX_FB' WHERE ID='ACH_THREESTAR_LP_SIX';
UPDATE Achievements SET FacebookDescription='ACH_TRIDUCK_DASH_FB' WHERE ID='ACH_TRIDUCK_DASH';
UPDATE Achievements SET FacebookDescription='ACH_NO_CONVERTER_FB' WHERE ID='ACH_NO_CONVERTER';
UPDATE Achievements SET FacebookDescription='ACH_LP_SEVEN_FB' WHERE ID='ACH_LP_SEVEN';
UPDATE Achievements SET FacebookDescription='ACH_THREESTAR_LP_SEVEN_FB' WHERE ID='ACH_THREESTAR_LP_SEVEN';
UPDATE Achievements SET FacebookDescription='ACH_LP_EIGHT_FB' WHERE ID='ACH_LP_EIGHT';
UPDATE Achievements SET FacebookDescription='ACH_THREESTAR_LP_EIGHT_FB' WHERE ID='ACH_THREESTAR_LP_EIGHT';
UPDATE Achievements SET FacebookDescription='ACH_PLANETARIUM_FB' WHERE ID='ACH_PLANETARIUM';
UPDATE Achievements SET FacebookDescription='ACH_QUICKFINISH_2_FB' WHERE ID='ACH_QUICKFINISH_2';
UPDATE Achievements SET FacebookDescription='ACH_LP_NINE_FB' WHERE ID='ACH_LP_NINE';
UPDATE Achievements SET FacebookDescription='ACH_THREESTAR_LP_NINE_FB' WHERE ID='ACH_THREESTAR_LP_NINE';
UPDATE Achievements SET FacebookDescription='ACH_MINING_LASER_FB' WHERE ID='ACH_MINING_LASER';
UPDATE Achievements SET FacebookDescription='ACH_THREESTAR_LP_CALENDAR_UNLOCK_FB' WHERE ID='ACH_THREESTAR_LP_CALENDAR_UNLOCK';
UPDATE Achievements SET FacebookDescription='ACH_THREESTAR_LP_HEARTS_AND_CRAFTS_FB' WHERE ID='ACH_THREESTAR_LP_HEARTS_AND_CRAFTS';
UPDATE Achievements SET FacebookDescription='ACH_10_DAYS_FB'	WHERE ID='ACH_10_DAYS';
UPDATE Achievements SET FacebookDescription='ACH_LP_TEN_FB' WHERE ID='ACH_LP_TEN';
UPDATE Achievements SET FacebookDescription='ACH_THREESTAR_LP_TEN_FB' WHERE ID='ACH_THREESTAR_LP_TEN';
UPDATE Achievements SET FacebookDescription='ACH_LITE_ALL_DUCKS_FB' WHERE ID='ACH_LITE_ALL_DUCKS';



/*
 * LEVELS (For Mystery Duck)
 */
 
/* this just copies Name, Filename, Par Time, Is Bonus from existing packs, and changes pack name. */
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, ParTime, IsBonus, PackName, Type, Available) SELECT 
								 ID + 4000, Name, Filename, ParTime, IsBonus, 'LP_ONE_MYSTERY', 1, 0 FROM LevelInfo WHERE PackName='LP_ONE';
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, ParTime, IsBonus, PackName, Type, Available) SELECT 
								 ID + 4000, Name, Filename, ParTime, IsBonus, 'LP_TWO_MYSTERY', 1, 0 FROM LevelInfo WHERE PackName='LP_TWO';
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, ParTime, IsBonus, PackName, Type, Available) SELECT 
								 ID + 4000, Name, Filename, ParTime, IsBonus, 'LP_THREE_MYSTERY', 1, 0 FROM LevelInfo WHERE PackName='LP_THREE';
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, ParTime, IsBonus, PackName, Type, Available) SELECT 
								 ID + 4000, Name, Filename, ParTime, IsBonus, 'LP_FOUR_MYSTERY', 1, 0 FROM LevelInfo WHERE PackName='LP_FOUR';
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, ParTime, IsBonus, PackName, Type, Available) SELECT 
								 ID + 4000, Name, Filename, ParTime, IsBonus, 'LP_FIVE_MYSTERY', 1, 0 FROM LevelInfo WHERE PackName='LP_FIVE';



/* the above sets all of pack 1 of mystery duck to locked.  now adjust the first 5 levels to be available. */
UPDATE LevelInfo SET Type=0, Available=1 WHERE PackName='LP_ONE_MYSTERY' AND Filename='/Levels/first_dig';
UPDATE LevelInfo SET Type=0, Available=1 WHERE PackName='LP_ONE_MYSTERY' AND Filename='/Levels/rock_is_a_hard_place';
UPDATE LevelInfo SET Type=0, Available=1 WHERE PackName='LP_ONE_MYSTERY' AND Filename='/Levels/yellow_brick_road';
UPDATE LevelInfo SET Type=0, Available=1 WHERE PackName='LP_ONE_MYSTERY' AND Filename='/Levels/jump_on_it';
UPDATE LevelInfo SET Type=0, Available=1 WHERE PackName='LP_ONE_MYSTERY' AND Filename='/Levels/itll_grow_on_you';


/* Also unlock the first level from each pack */
UPDATE LevelInfo SET Unlocked=1 WHERE PackName='LP_ONE_MYSTERY' AND Filename='/Levels/first_dig';
UPDATE LevelInfo SET Unlocked=1 WHERE PackName='LP_TWO_MYSTERY' AND Filename='/Levels/can_you_take_me_higher';
UPDATE LevelInfo SET Unlocked=1 WHERE PackName='LP_THREE_MYSTERY' AND Filename='/Levels/mine_field';
UPDATE LevelInfo SET Unlocked=1 WHERE PackName='LP_FOUR_MYSTERY' AND Filename='/Levels/logic_gates';
UPDATE LevelInfo SET Unlocked=1 WHERE PackName='LP_FIVE_MYSTERY' AND Filename='/Levels/converter_intro';





/* FIXES */

/* Sara's  level needs to be identified as a CRANKY secret level */
UPDATE LevelInfo SET PackName='LP_SECRET_CRANKY', Name='LN_SARAS_LEVEL' WHERE FileName='/Levels/S3_SARAS_LEVEL';	




/*
 *	DATABASE/SETTINGS
 */
 
/* We no longer need the Cranky Pack Shown variable (and we've been accdientally adding this field multiple times). */
/* So just delete all of them. */
DELETE FROM PlayerData WHERE EventName='CrankyPackShown';

/* Now guarentee that the DateLastPlayed and ConsecutiveDaysPlayed exist in the database... */
/* WITHOUT deleting progress! */

/* This inserts the data again (copying from any existing old data, and if it can't find anything writing '0') */
INSERT OR IGNORE INTO PlayerData (EventName, EventValue) VALUES 
								 ('DateLastPlayed', (SELECT ifnull( (SELECT EventValue FROM PlayerData WHERE EventName='DateLastPlayed'), 0 )));
INSERT OR IGNORE INTO PlayerData (EventName, EventValue) VALUES 
								 ('ConsecutiveDaysPlayed', (SELECT ifnull( (SELECT EventValue FROM PlayerData WHERE EventName='ConsecutiveDaysPlayed'), 0 )));

/* Then delet any and all old entries (leaving our new, pristine values we just created) */
DELETE FROM PlayerData WHERE (EventName='DateLastPlayed' AND ID < (SELECT max(ID) FROM PlayerData WHERE EventName='DateLastPlayed'));
DELETE FROM PlayerData WHERE (EventName='ConsecutiveDaysPlayed' AND ID < (SELECT max(ID) FROM PlayerData WHERE EventName='ConsecutiveDaysPlayed'));
 
 
 
/* Add an "AllowFacebookPublishing" setting */
INSERT OR IGNORE INTO Settings ( Name, Value ) VALUES ( 'AllowFacebookPublishing', '-1');

/* Reset AMPS Info */
UPDATE PlayerData SET EventValue=0 WHERE EventName='DateOfNextAMPSCheck';
UPDATE PlayerData SET EventValue=0 WHERE EventName='AMPSDownloadWasInterrupted';

/* Last but not least, update the database version number */
UPDATE Settings SET Value=12 WHERE Name='DatabaseVersion';
