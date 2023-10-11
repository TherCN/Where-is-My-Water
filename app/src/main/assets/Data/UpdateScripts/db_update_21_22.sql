/* Reset AMPS Info */
UPDATE PlayerData SET EventValue=0 WHERE EventName='DateOfNextAMPSCheck';
UPDATE PlayerData SET EventValue=0 WHERE EventName='AMPSDownloadWasInterrupted';

/* Fix for missing Mystery Level Pack 7 - this code will do nothing if the levels already exist */
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, ParTime, IsBonus, PackName, Type, Available) SELECT 
								 ID + 4000, Name, Filename, ParTime, IsBonus, 'LP_SEVEN_MYSTERY', 1, 0 FROM LevelInfo WHERE PackName='LP_SEVEN';

/* Fix for database inconsistencies */
UPDATE Achievements SET ID='ACH_THREESTAR_LP_CALENDAR_UNLOCK', PreEarnedDescription='ACH_THREESTAR_LP_CALENDAR_UNLOCK_HOWTO', EarnedDescription='ACH_THREESTAR_LP_CALENDAR_UNLOCK_DESC', FacebookDescription='ACH_THREESTAR_LP_CALENDAR_UNLOCK_FB', Image='ACH_THREESTAR_LP_LOST1.png' WHERE ID='ACH_THREESTAR_LP_LOST1';
UPDATE Achievements SET ID='ACH_THREESTAR_LP_HEARTS_AND_CRAFTS', PreEarnedDescription='ACH_THREESTAR_LP_HEARTS_AND_CRAFTS_HOWTO', EarnedDescription='ACH_THREESTAR_LP_HEARTS_AND_CRAFTS_DESC', FacebookDescription='ACH_THREESTAR_LP_HEARTS_AND_CRAFTS_FB', Image='ACH_THREESTAR_LP_LOST2.png' WHERE ID='ACH_THREESTAR_LP_LOST2';

UPDATE LevelPackInfo SET FB_AlbumName='Cranky Bonus Levels' WHERE ID='LP_BONUS_CRANKY';
UPDATE LevelPackInfo SET FB_AlbumName='Bonus Levels' WHERE ID='LP_BONUS';
UPDATE LevelPackInfo SET FB_AlbumName='Lost Levels 02 - Hearts and Crafts' WHERE ID='LP_HEARTS_AND_CRAFTS';
UPDATE LevelPackInfo SET FB_AlbumName='Lost Levels 01 - 10 Days of Swampy' WHERE ID='LP_CALENDAR_UNLOCK';
INSERT OR IGNORE INTO Settings (Name, Value) VALUES ('RateAppAvailable', 1);
UPDATE CrankyChallengeInfo SET LevelRequirements='losefluid:ooze ducks:3' WHERE Desc='CHALLENGE_NO_GREEN_OOZE';
UPDATE LevelInfo SET Name='LN_SARAS_LEVEL' WHERE Filename='/Levels/S3_SARAS_LEVEL';
UPDATE LevelInfo SET IgnoreInStarCount=1 WHERE Name='LN_SPLIT_DOWN_THE_MIDDLE';
UPDATE LevelInfo SET IgnoreInStarCount=1 WHERE Name='LN_CIRCULATORY_SYSTEM';

/* Add misc level packs */
INSERT OR IGNORE INTO LevelPackInfo (rowid, ID, PackName, Unlocked, HasPlayed, StarsRequired, TileTexture, LightingColor, CurtainTexture, LockColor, HasAlerted, PackType, Hidden, PackIcon, StartDate, EndDate, Storyline, IAP_item_id, Bought, DuckTextureSuffix, FB_AlbumName, DisplayPackName, LS_Unlocked, GrayType) VALUES(-21,-21,'LP_BURSTLY_REWARD',0,0,30,'tile_world_01','255 255 255','shower_curtain_01','255 255 255',0,0,0,NULL,NULL,NULL,0,'',0,'','','',0,0);
INSERT OR IGNORE INTO LevelPackInfo (rowid, ID, PackName, Unlocked, HasPlayed, StarsRequired, TileTexture, LightingColor, CurtainTexture, LockColor, HasAlerted, PackType, Hidden, PackIcon, StartDate, EndDate, Storyline, IAP_item_id, Bought, DuckTextureSuffix, FB_AlbumName, DisplayPackName, LS_Unlocked, GrayType) VALUES(100,100,'WATER_TWO',1,0,30,'tile_world_01','255 255 255','shower_curtain_01','255 255 255',0,1,0,'world_select_more',NULL,NULL,0,'',0,'','','',0,0);

/* Remove LOTW from HubInfo */
DELETE FROM "HubInfo" WHERE Storyline = 4;


/* Add the IAPInfo for the new bundles */
INSERT INTO "IAPInfo" VALUES(10,'crankybundle01','disney.wmw.bundle03Cranky','com.disney.wmwpaid.goo.2208452','com.disney.wmwpaid.ama.2208456');
INSERT INTO "IAPInfo" VALUES(11,'alliebundle01','disney.wmw.bundle02Allie','com.disney.wmwpaid.goo.2208451','com.disney.wmwpaid.ama.2208455');
INSERT INTO "IAPInfo" VALUES(12,'mysterybundle01','disney.wmw.bundle04MD','com.disney.wmwpaid.goo.2208453','com.disney.wmwpaid.ama.2208457');
INSERT INTO "IAPInfo" VALUES(13,'megabundle01','disney.wmw.megabundle01','com.disney.wmwpaid.goo.2208454','com.disney.wmwpaid.ama.2208458');

/* Add push notification table to save pending commands */
CREATE TABLE CommandURI("HeldPushCommand" TEXT);

/* Begin Allie content part 2 */

/* Update level pack information */
UPDATE LevelPackInfo SET PackIcon = 'world_select_allie_02', FB_AlbumName = 'Allie 03 - Rising to the Top' WHERE PackName = "LP_ALLIE_THREE";
UPDATE LevelPackInfo SET PackIcon = 'world_select_allie_03', FB_AlbumName = 'Allie 04 - Symphony in Steam' WHERE PackName = "LP_ALLIE_FOUR";

/* Pack 3 */
INSERT OR IGNORE INTO "LevelInfo" VALUES(5040,'LN_PATHS_OF_MINE','/Levels/allie3lev01_paths_of_mine',0,'LP_ALLIE_THREE',0,0,1,30.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5041,'LN_U_BEND','/Levels/allie3lev02_u_bend',0,'LP_ALLIE_THREE',0,0,0,40.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5042,'LN_BLOW_YOUR_MINE','/Levels/allie3lev03_blow_your_mine',0,'LP_ALLIE_THREE',0,0,0,35.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5043,'LN_VALLEY_OF_EVIL','/Levels/allie3lev04_valley_of_evil',0,'LP_ALLIE_THREE',0,0,0,42.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5044,'LN_OPEN_AND_SHUT','/Levels/allie3lev05_open_and_shut',0,'LP_ALLIE_THREE',0,0,0,63.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5045,'LN_WINDS_OF_CHANGE','/Levels/allie3lev06_winds_of_change',0,'LP_ALLIE_THREE',0,0,0,43.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5046,'LN_UP_AND_AT_THEM','/Levels/allie3lev07_up_and_at_them',0,'LP_ALLIE_THREE',0,0,0,30.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5047,'LN_RELEASE_THE_BALLOONS','/Levels/allie3lev08_release_the_balloons',0,'LP_ALLIE_THREE',0,0,0,51.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5048,'LN_FAN_BOY','/Levels/allie3lev09_fan_boy',0,'LP_ALLIE_THREE',0,0,0,47.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5049,'LN_DONT_BURST_YOUR_BUBBLE','/Levels/allie3lev10_dont_burst_your_bubble',0,'LP_ALLIE_THREE',0,0,0,48.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5050,'LN_DESTRUCTIVE_INTERFERENCE','/Levels/allie3lev11_destructive_interference',0,'LP_ALLIE_THREE',0,0,0,55.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5051,'LN_AIR_TRIGGER','/Levels/allie3lev12_air_trigger',0,'LP_ALLIE_THREE',0,0,0,60.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5052,'LN_DO_NOT_TOUCH','/Levels/allie3lev13_do_not_touch',0,'LP_ALLIE_THREE',0,0,0,40.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5053,'LN_COLLISION_COURSE','/Levels/allie3lev14_collision_course',0,'LP_ALLIE_THREE',0,0,0,50.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5054,'LN_SNAPBACK','/Levels/allie3lev15_snapback',0,'LP_ALLIE_THREE',0,0,0,49.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5055,'LN_AIR_LOCK','/Levels/allie3lev16_air_lock',0,'LP_ALLIE_THREE',0,0,0,63.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5056,'LN_LOOK_BOTH_WAYS','/Levels/allie3lev17_look_both_ways',0,'LP_ALLIE_THREE',0,0,0,69.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5057,'LN_UP_UP_AND_AWAY','/Levels/allie3lev18_up_up_and_away',0,'LP_ALLIE_THREE',0,0,0,70.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5058,'LN_TIME_BOMB','/Levels/allie3lev19_time_bomb',0,'LP_ALLIE_THREE',0,0,0,53.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5059,'LN_RIDE_THE_RAPIDS','/Levels/allie3lev20_ride_the_rapids',0,'LP_ALLIE_THREE',0,0,0,59.0,0,-1,0,0,0,1,NULL,NULL,1,0);

/* Pack 4 */
INSERT OR IGNORE INTO "LevelInfo" VALUES(5060,'LN_SWITCHING_SIDES','/Levels/allie4lev01_switching_sides',0,'LP_ALLIE_FOUR',0,0,1,53.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5061,'LN_TOGETHER_AS_ONE','/Levels/allie4lev02_together_as_one',0,'LP_ALLIE_FOUR',0,0,0,40.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5062,'LN_TAKE_THE_PLUNGE','/Levels/allie4lev03_take_the_plunge',0,'LP_ALLIE_FOUR',0,0,0,33.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5063,'LN_IN_THE_NICK_OF_SLIME','/Levels/allie4lev04_in_the_nick_of_slime',0,'LP_ALLIE_FOUR',0,0,0,32.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5064,'LN_BOOM_SHAKE_THE_ROOM','/Levels/allie4lev05_boom_shake_the_room',0,'LP_ALLIE_FOUR',0,0,0,66.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5065,'LN_TOGETHER_AT_BLAST','/Levels/allie4lev06_together_at_blast',0,'LP_ALLIE_FOUR',0,0,0,38.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5066,'LN_ON_THE_RISE','/Levels/allie4lev07_on_the_rise',0,'LP_ALLIE_FOUR',0,0,0,49.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5067,'LN_READY_TO_ROCK','/Levels/allie4lev08_ready_to_rock',0,'LP_ALLIE_FOUR',0,0,0,77.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5068,'LN_BLOW_THE_MAN_DOWN','/Levels/allie4lev09_blow_the_man_down',0,'LP_ALLIE_FOUR',0,0,0,61.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5069,'LN_RACE_AGAINST_SLIME','/Levels/allie4lev10_race_against_slime',0,'LP_ALLIE_FOUR',0,0,0,52.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5070,'LN_CATCHING_UP','/Levels/allie4lev11_catching_up',0,'LP_ALLIE_FOUR',0,0,0,50.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5071,'LN_ONE_GOOD_TURN_DESERVES_ANOTHER','/Levels/allie4lev12_one_good_turn_deserves_another',0,'LP_ALLIE_FOUR',0,0,0,42.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5072,'LN_BALLOON_OVER_TROUBLED_BORDERS','/Levels/allie4lev13_balloon_over_troubled_borders',0,'LP_ALLIE_FOUR',0,0,0,90.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5073,'LN_A_COAL_OUT_OF_REACH','/Levels/allie4lev14_a_coal_out_of_reach',0,'LP_ALLIE_FOUR',0,0,0,56.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5074,'LN_START_THE_CLOCK','/Levels/allie4lev15_start_the_clock',0,'LP_ALLIE_FOUR',0,0,0,60.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5075,'LN_SPOUTS_AND_LADDERS','/Levels/allie4lev16_spouts_and_ladders',0,'LP_ALLIE_FOUR',0,0,0,57.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5076,'LN_ONE_WAY_OR_ANOTHER','/Levels/allie4lev17_one_way_or_another',0,'LP_ALLIE_FOUR',0,0,0,59.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5077,'LN_COMMUTERS_NIGHTMARE','/Levels/allie4lev18_commuters_nightmare',0,'LP_ALLIE_FOUR',0,0,0,79.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5078,'LN_RISE_TO_THE_MIDDLE','/Levels/allie4lev19_rise_to_the_middle',0,'LP_ALLIE_FOUR',0,0,0,60.0,0,-1,0,0,0,1,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5079,'LN_SMELLS_LIKE_STEAM_SPIRIT','/Levels/allie4lev20_smells_like_steam_spirit',0,'LP_ALLIE_FOUR',0,0,0,30.0,0,-1,0,0,0,1,NULL,NULL,1,0);

/* Challenges */
INSERT OR IGNORE INTO "AllieChallengeInfo" VALUES(50,0,'alliepack01',0,'/Levels/allie3lev01_paths_of_mine',0,0,'ALLIE_CHALLENGE_DESC_ALLIE_4');
INSERT OR IGNORE INTO "AllieChallengeInfo" VALUES(51,0,'alliepack01',0,'/Levels/push_pop',0,0,'ALLIE_CHALLENGE_DESC_SWAMPY_4');
INSERT OR IGNORE INTO "AllieChallengeInfo" VALUES(52,0,'alliepack01',0,'/Levels/allie3lev09_fan_boy',0,0,'ALLIE_CHALLENGE_DESC_ALLIE_4');
INSERT OR IGNORE INTO "AllieChallengeInfo" VALUES(60,0,'alliepack01',0,'/Levels/double_dipping',0,0,'ALLIE_CHALLENGE_DESC_SWAMPY_4');
INSERT OR IGNORE INTO "AllieChallengeInfo" VALUES(61,0,'alliepack01',0,'/Levels/allie3lev04_valley_of_evil',0,0,'ALLIE_CHALLENGE_DESC_ALLIE_4');
INSERT OR IGNORE INTO "AllieChallengeInfo" VALUES(62,0,'alliepack01',0,'/Levels/raincatcher',0,0,'ALLIE_CHALLENGE_DESC_CRANKY_4');
INSERT OR IGNORE INTO "AllieChallengeInfo" VALUES(70,0,'alliepack01',0,'/Levels/catch_me_if_you_can',0,0,'ALLIE_CHALLENGE_DESC_SWAMPY_4');
INSERT OR IGNORE INTO "AllieChallengeInfo" VALUES(71,0,'alliepack01',0,'/Levels/allie4lev05_boom_shake_the_room',0,0,'ALLIE_CHALLENGE_DESC_ALLIE_4');
INSERT OR IGNORE INTO "AllieChallengeInfo" VALUES(72,0,'alliepack01',0,'/Levels/allie4lev15_start_the_clock',0,0,'ALLIE_CHALLENGE_DESC_ALLIE_4');
INSERT OR IGNORE INTO "AllieChallengeInfo" VALUES(80,0,'alliepack01',0,'/Levels/converter_gate',0,0,'ALLIE_CHALLENGE_DESC_SWAMPY_4');
INSERT OR IGNORE INTO "AllieChallengeInfo" VALUES(81,0,'alliepack01',0,'/Levels/valve_the_press',0,0,'ALLIE_CHALLENGE_DESC_CRANKY_4');
INSERT OR IGNORE INTO "AllieChallengeInfo" VALUES(82,0,'alliepack01',0,'/Levels/allie4lev02_together_as_one',0,0,'ALLIE_CHALLENGE_DESC_ALLIE_4');

/* Bonus levels */
INSERT OR IGNORE INTO "LevelInfo" VALUES(5504,'LN_PATHS_WE_BREAK','/Levels/allie_bonus_paths_we_break',0,'LP_BONUS_ALLIE',0,0,0,32.0,0,-1,0,0,0,1,NULL,NULL,0,1);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5505,'LN_TRICK_TRACK','/Levels/allie_bonus_trick_track',0,'LP_BONUS_ALLIE',0,0,0,55.0,0,-1,0,0,0,1,NULL,NULL,0,1);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5506,'LN_DRILLING_FOR_STEAM','/Levels/allie_bonus_drilling_for_steam',0,'LP_BONUS_ALLIE',0,0,0,37.0,0,-1,0,0,0,1,NULL,NULL,0,1);
INSERT OR IGNORE INTO "LevelInfo" VALUES(5507,'LN_TEAM_EFFORT','/Levels/allie_bonus_team_effort',0,'LP_BONUS_ALLIE',0,0,0,61.0,0,-1,0,0,0,1,NULL,NULL,0,1);

/* Secret Allie Pack */
INSERT OR IGNORE INTO "LevelPackInfo" VALUES(-102,'LP_SECRET_ALLIE',0,0,30,'tile_world_01','255 255 255','shower_curtain_01','255 255 255',0,0,0,NULL,NULL,NULL,6,'',0,'','','',0,0);

/* Secret levels */
INSERT OR IGNORE INTO "LevelInfo" VALUES(1013,'LN_EGG_IN_SPOON','/Levels/allie_secret_egg_in_spoon',0,'LP_SECRET_ALLIE',0,0,0,69.0,0,-1,0,0,1,0,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(1014,'LN_QUACK_SHOT','/Levels/allie_secret_quack_shot',0,'LP_SECRET_ALLIE',0,0,0,66.0,0,-1,0,0,1,0,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(1015,'LN_ONE_WITH_EVERYTHING','/Levels/cranky_secret_one_with_everything',0,'LP_SECRET_CRANKY',0,0,0,95.0,0,-1,0,0,1,0,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(1016,'LN_CHADLEEE','/Levels/swampy_secret_chadleee',0,'LP_SECRET',0,0,0,54.0,0,-1,0,0,1,0,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(1017,'LN_SEE_YOU_LATER_ALLIGATOR','/Levels/swampy_secret_see_you_later_alligator',0,'LP_SECRET',0,0,0,128.0,0,-1,0,0,1,0,NULL,NULL,1,0);
INSERT OR IGNORE INTO "LevelInfo" VALUES(1018,'LN_WALABER_PIPES','/Levels/swampy_secret_walaber_pipes',0,'LP_SECRET',0,0,0,60.0,0,-1,0,0,1,0,NULL,NULL,1,0);

/* TODO: determine what bonus songs disney want*/
INSERT OR IGNORE INTO "AllieSongs" VALUES(7,'/Audio/Music/Allie_Song_Weasel_03.mp3',0);
INSERT OR IGNORE INTO "AllieSongs" VALUES(8,'/Audio/Music/Allie_Song_The_Entertainer_03.mp3',0);
INSERT OR IGNORE INTO "AllieSongs" VALUES(9,'/Audio/Music/Allie_Song_Beethoven_03.mp3',0);
INSERT OR IGNORE INTO "AllieSongs" VALUES(10,'/Audio/Music/Allie_Song_SmallWorld.mp3',0);

/* Collectibles */
INSERT OR IGNORE INTO "MusicCollectInfo" VALUES(12,'musiccol_banjo','x_musiccol_13','MUSICCOL_GROUP_4',0,0);
INSERT OR IGNORE INTO "MusicCollectInfo" VALUES(13,'musiccol_accordion','x_musiccol_14','MUSICCOL_GROUP_4',0,0);
INSERT OR IGNORE INTO "MusicCollectInfo" VALUES(14,'musiccol_trombone','x_musiccol_15','MUSICCOL_GROUP_4',0,0);
INSERT OR IGNORE INTO "MusicCollectInfo" VALUES(15,'musiccol_keyboard','x_musiccol_16','MUSIC_COLL_GROUP_5',0,0);
INSERT OR IGNORE INTO "MusicCollectInfo" VALUES(16,'musiccol_drumkit','x_musiccol_17','MUSIC_COLL_GROUP_5',0,0);
INSERT OR IGNORE INTO "MusicCollectInfo" VALUES(17,'musiccol_elecguitar','x_musiccol_18','MUSIC_COLL_GROUP_5',0,0);
INSERT OR IGNORE INTO "MusicCollectInfo" VALUES(18,'musiccol_didgeridoo','x_musiccol_19','MUSICCOL_GROUP_6',0,0);
INSERT OR IGNORE INTO "MusicCollectInfo" VALUES(19,'musiccol_panpipe','x_musiccol_20','MUSICCOL_GROUP_6',0,0);
INSERT OR IGNORE INTO "MusicCollectInfo" VALUES(20,'musiccol_bagpipe','x_musiccol_21','MUSICCOL_GROUP_6',0,0);
INSERT OR IGNORE INTO "MusicCollectInfo" VALUES(21,'musiccol_maracas','x_musiccol_22','MUSIC_COLL_GROUP_7',0,0);
INSERT OR IGNORE INTO "MusicCollectInfo" VALUES(22,'musiccol_congas','x_musiccol_23','MUSIC_COLL_GROUP_7',0,0);
INSERT OR IGNORE INTO "MusicCollectInfo" VALUES(23,'musiccol_sitar','x_musiccol_24','MUSIC_COLL_GROUP_7',0,0);

/* Last but not least, update the database version number */
UPDATE Settings SET Value=22 WHERE Name='DatabaseVersion';