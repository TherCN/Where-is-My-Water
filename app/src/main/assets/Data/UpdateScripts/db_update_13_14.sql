
/*
 * LEVELS (For Mystery Duck)
 */
 
/* this just copies Name, Filename, Par Time, Is Bonus from existing packs, and changes pack name. */
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, ParTime, IsBonus, PackName, Type, Available) SELECT 
								 ID + 4000, Name, Filename, ParTime, IsBonus, 'LP_SIX_MYSTERY', 1, 0 FROM LevelInfo WHERE PackName='LP_SIX';
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, ParTime, IsBonus, PackName, Type, Available) SELECT 
								 ID + 4000, Name, Filename, ParTime, IsBonus, 'LP_SEVEN_MYSTERY', 1, 0 FROM LevelInfo WHERE PackName='LP_SEVEN';								 

/* Also unlock the first level from each pack */
UPDATE LevelInfo SET Unlocked=1 WHERE PackName='LP_SIX_MYSTERY' AND Filename='/Levels/steam_intro';
UPDATE LevelInfo SET Unlocked=1 WHERE PackName='LP_SEVEN_MYSTERY' AND Filename='/Levels/balloon_intro';

/*
 *PACK INFO
 */

/* Summer pack */
INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, Unlocked, TileTexture, LightingColor, CurtainTexture, PackIcon, Storyline, FB_AlbumName) VALUES 
									(82, 'LP_DAYS_OF_SUMMER', 1, 'tile_magenta', '192 137 177', 'WMW_UI_LL_summer_curtain', 'target_world_select_summer_2012', 2, 'Lost Levels 03 - Days of Summer');

/*
 * LEVEL INFO
 */
		
/* Target levels!! */
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Unlocked) VALUES (3020,	'LN_TOUCH_FOR_WATER',	'/Levels/02_TOUCH_FOR_WATER',	'LP_DAYS_OF_SUMMER', 50, 1);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (3021,	'LN_LAST_IS_FIRST',		'/Levels/03_LAST_IS_FIRST',		'LP_DAYS_OF_SUMMER', 60);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (3022,	'LN_SLOOP_SCHOOL',		'/Levels/04_SLOOP_SCHOOL',		'LP_DAYS_OF_SUMMER', 75);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (3023,	'LN_DUAL_TOOLS',		'/Levels/06_DUAL_TOOLS',		'LP_DAYS_OF_SUMMER', 70);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (3024,	'LN_TRIGGER_PATH',		'/Levels/05_TRIGGER_PATH',		'LP_DAYS_OF_SUMMER', 44);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (3025,	'LN_SPAGHETTI_SPOUTS',	'/Levels/01_SPAGHETTI_SPOUTS',	'LP_DAYS_OF_SUMMER', 63);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (3026,	'LN_UPHILL_BATTLE',		'/Levels/08_PUSH_UPS',			'LP_DAYS_OF_SUMMER', 55);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (3027,	'LN_BLAST_TUBE',		'/Levels/07_BLAST_TUBE',		'LP_DAYS_OF_SUMMER', 45);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (3028,	'LN_AROUND_THE_ROCK',	'/Levels/09_AROUND_THE_ROCK',	'LP_DAYS_OF_SUMMER', 54);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (3029,	'LN_ZIG_ZAG',			'/Levels/10_ZIG_ZAG',			'LP_DAYS_OF_SUMMER', 61);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (3030,	'LN_BEFORE_THE_FLOOD',	'/Levels/11_BEFORE_THE_FLOOD',	'LP_DAYS_OF_SUMMER', 64);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (3031,	'LN_MASTER_SLOOPER',	'/Levels/12_MASTER_SLOOPER',	'LP_DAYS_OF_SUMMER', 66);

/* Bonus */
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Type, IsBonus, IgnoreInStarCount) VALUES (3502, 'LN_FOOTPRINT', '/Levels/B1_FOOTPRINT', 'LP_DAYS_OF_SUMMER', 1, 1, 1);

/* Achievements */
INSERT OR IGNORE INTO Achievements (rowid, Points, ID, PreEarnedDescription, EarnedDescription, Image, FacebookDescription) VALUES (44, '', 'ACH_THREESTAR_LP_DAYS_OF_SUMMER', 'ACH_THREESTAR_LP_DAYS_OF_SUMMER_HOWTO', 'ACH_THREESTAR_LP_DAYS_OF_SUMMER_DESC', 'ACH_SummerDuck.png','ACH_THREESTAR_LP_DAYS_OF_SUMMER_FB');

/*
 * MYSTERY DUCK CHALLENGES
 */
CREATE TABLE "MysteryChallengeInfo" ("ID" INTEGER PRIMARY KEY  NOT NULL  UNIQUE , "LevelName" TEXT, "Desc" TEXT);

/* DATA - Challenge set 1 */
INSERT OR IGNORE INTO MysteryChallengeInfo (ID, LevelName, Desc ) VALUES 
										( 10, '/Levels/yellow_brick_road', 'BABY_PREVIEW_POPUP_BODY' );
INSERT OR IGNORE INTO MysteryChallengeInfo (ID, LevelName, Desc ) VALUES 
										( 11, '/Levels/dirty_water_and_algae', 'MYSTERY_PREVIEW_POPUP_BODY' );
INSERT OR IGNORE INTO MysteryChallengeInfo (ID, LevelName, Desc ) VALUES 
										( 20, '/Levels/can_you_take_me_higher', 'BABY_PREVIEW_POPUP_BODY' );
INSERT OR IGNORE INTO MysteryChallengeInfo (ID, LevelName, Desc ) VALUES 
										( 21, '/Levels/orbit', 'MEGA_PREVIEW_POPUP_BODY' );
INSERT OR IGNORE INTO MysteryChallengeInfo (ID, LevelName, Desc ) VALUES 
										( 30, '/Levels/rat_in_a_maze', 'MYSTERY_PREVIEW_POPUP_BODY' );
INSERT OR IGNORE INTO MysteryChallengeInfo (ID, LevelName, Desc ) VALUES 
										( 31, '/Levels/going_down', 'MYSTERY_PREVIEW_POPUP_BODY' );
INSERT OR IGNORE INTO MysteryChallengeInfo (ID, LevelName, Desc ) VALUES 
										( 40, '/Levels/curse_of_the_algae_beard', 'MEGA_PREVIEW_POPUP_BODY' );
INSERT OR IGNORE INTO MysteryChallengeInfo (ID, LevelName, Desc ) VALUES 
										( 41, '/Levels/theyve_got_chemistry', 'MYSTERY_PREVIEW_POPUP_BODY' );
INSERT OR IGNORE INTO MysteryChallengeInfo (ID, LevelName, Desc ) VALUES 
										( 50, '/Levels/multi_convert', 'MYSTERY_PREVIEW_POPUP_BODY' );
INSERT OR IGNORE INTO MysteryChallengeInfo (ID, LevelName, Desc ) VALUES 
										( 51, '/Levels/catch_them_all', 'MEGA_PREVIEW_POPUP_BODY' );
INSERT OR IGNORE INTO MysteryChallengeInfo (ID, LevelName, Desc ) VALUES 
										( 60, '/Levels/rise_and_fall', 'BABY_PREVIEW_POPUP_BODY' );
INSERT OR IGNORE INTO MysteryChallengeInfo (ID, LevelName, Desc ) VALUES 
										( 61, '/Levels/jumping_gigawatts', 'MEGA_PREVIEW_POPUP_BODY' );


/*
 *	DATABASE/SETTINGS
 */
 
/* Reset AMPS Info */
UPDATE PlayerData SET EventValue=0 WHERE EventName='DateOfNextAMPSCheck';
UPDATE PlayerData SET EventValue=0 WHERE EventName='AMPSDownloadWasInterrupted';

/* Last but not least, update the database version number */
UPDATE Settings SET Value=14 WHERE Name='DatabaseVersion';
