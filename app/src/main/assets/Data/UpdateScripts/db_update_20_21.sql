/** BEGIN ALLIE CONTENT */

/* Create hub pack for Allie and insert it next to Swampy */
UPDATE HubInfo SET DisplayOrder = 4 WHERE rowid = 2 AND ID = 2;
UPDATE HubInfo SET DisplayOrder = 3 WHERE rowid = 1 AND ID = 1;
UPDATE HubInfo SET DisplayOrder = 5 WHERE rowid = 4 AND ID = 4;
INSERT OR IGNORE INTO HubInfo (rowid, ID, Storyline, IAP_item_id, Bought, TitleTexture, MainTexture, FrameTexture, TextColor, TextLine1, TextLine2, DuckCharacter, ItemCharacter, DuckSQL1, DuckSQL2, ItemSQL1, ItemSQL2, TextButton, AlertText, Unlocked, DisplayOrder, DuckyCounterTexture) VALUES (5, 5, 6, 'alliepack01', 0, 'WMW_UI_allie_logo.png', 'WMW_UI_allie_empty.webp', 'WMW_UI_portal.webp', '41 37 100', 'HUB_TEXT_ALLIE_TITLE', 'HUB_TEXT_ALLIE_BODY', '☥', '', '', '', '', '', 'PLAY', 'ALLIE_NEW_ALERT_LAUNCH', 0, 2, 'WMW_UI_allie_duck_counter.png');

/* Updated assets to webp */
UPDATE HubInfo SET MainTexture = 'WMW_UI_swampy_empty.webp', FrameTexture = 'WMW_UI_portal.webp' WHERE rowid = 0 AND ID = 0;
UPDATE HubInfo SET MainTexture = 'WMW_UI_cranky_empty.webp', FrameTexture = 'WMW_UI_portal.webp' WHERE rowid = 1 AND ID = 1;
UPDATE HubInfo SET MainTexture = 'WMW_UI_mystery_empty.webp', FrameTexture = 'WMW_UI_portal.webp' WHERE rowid = 2 AND ID = 2;



/* Add IAP into game */
INSERT OR IGNORE INTO IAPInfo (rowid, ID, Internal, iOS, Google, Amazon) VALUES (8, 8, 'alliepack01', 'disney.wmw.alliepack', 'com.disney.wmwpaid.goo.2207501', 'com.disney.wmwpaid.ama.2207503');
INSERT OR IGNORE INTO IAPInfo (rowid, ID, Internal, iOS, Google, Amazon) VALUES (9, 9, 'locksmith_allie', 'disney.wmw.locksmithallie', 'com.disney.wmwpaid.goo.2207502', 'com.disney.wmwpaid.ama.2207504');

/* Add level packs */
INSERT OR IGNORE INTO LevelPackInfo (rowid, ID, PackName, Unlocked, HasPlayed, StarsRequired, TileTexture, LightingColor, CurtainTexture, LockColor, HasAlerted, PackType, Hidden, PackIcon, StartDate, EndDate, Storyline, IAP_item_id, Bought, DuckTextureSuffix, FB_AlbumName, DisplayPackName, LS_Unlocked, GrayType) VALUES(90,90,'LP_ALLIE_ONE',1,0,0,'allie_bricks_blue','255 255 255','shower_curtain_01','255 162 0',0,0,0,'world_select_allie_00',NULL,NULL,6,'alliepack01',0,'','Allie 01 - Warming Up','',0,0);
INSERT OR IGNORE INTO LevelPackInfo (rowid, ID, PackName, Unlocked, HasPlayed, StarsRequired, TileTexture, LightingColor, CurtainTexture, LockColor, HasAlerted, PackType, Hidden, PackIcon, StartDate, EndDate, Storyline, IAP_item_id, Bought, DuckTextureSuffix, FB_AlbumName, DisplayPackName, LS_Unlocked, GrayType) VALUES(91,91,'LP_ALLIE_TWO',0,0,25,'allie_bricks_blue','255 255 255','shower_curtain_01','0 210 255',0,3,0,'world_select_allie_01',NULL,NULL,6,'alliepack01',0,'','Allie 02 - Tuning In','',0,0);
INSERT OR IGNORE INTO LevelPackInfo (rowid, ID, PackName, Unlocked, HasPlayed, StarsRequired, TileTexture, LightingColor, CurtainTexture, LockColor, HasAlerted, PackType, Hidden, PackIcon, StartDate, EndDate, Storyline, IAP_item_id, Bought, DuckTextureSuffix, FB_AlbumName, DisplayPackName, LS_Unlocked, GrayType) VALUES(92,92,'LP_ALLIE_THREE',0,0,65,'allie_bricks_blue','255 255 255','shower_curtain_01','255 162 0',0,3,0,'world_select_allie_00',NULL,NULL,6,'alliepack01',0,'','Allie 03 - [REPLACE]','',0,0);
INSERT OR IGNORE INTO LevelPackInfo (rowid, ID, PackName, Unlocked, HasPlayed, StarsRequired, TileTexture, LightingColor, CurtainTexture, LockColor, HasAlerted, PackType, Hidden, PackIcon, StartDate, EndDate, Storyline, IAP_item_id, Bought, DuckTextureSuffix, FB_AlbumName, DisplayPackName, LS_Unlocked, GrayType) VALUES(93,93,'LP_ALLIE_FOUR',0,0,135,'allie_bricks_blue','255 255 255','shower_curtain_01','0 210 255',0,3,0,'world_select_allie_00',NULL,NULL,6,'alliepack01',0,'','Allie 04 - [REPLACE]','',0,0);

/* Add levels here */
/* Pack 1 */
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5000, 5000, 'LN_UP_WE_GO', '/Levels/allie1lev01_up_we_go', 0, 'LP_ALLIE_ONE', 0, 0, 1, 40.0, 0, -1, 0, 0, 0, 0, null, null, 1, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5001, 5001, 'LN_CROSSING_STEAMS', '/Levels/allie1lev02_crossing_steams', 0, 'LP_ALLIE_ONE', 0, 0, 0, 45.0, 0, -1, 0, 0, 0, 0, null, null, 1, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5002, 5002, 'LN_PATHFINDER', '/Levels/allie1lev03_pathfinder', 0, 'LP_ALLIE_ONE', 0, 0, 0, 55.0, 0, -1, 0, 0, 0, 0, null, null, 1, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5003, 5003, 'LN_BOILER_ROOM', '/Levels/allie1lev04_boiler_room', 0, 'LP_ALLIE_ONE', 0, 0, 0, 50.0, 0, -1, 0, 0, 0, 1, null, null, 1, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5004, 5004, 'LN_DOWN_IS_UP', '/Levels/allie1lev05_down_is_up', 0, 'LP_ALLIE_ONE', 0, 0, 0, 50.0, 0, -1, 0, 0, 0, 1, null, null, 1, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5005, 5005, 'LN_PRECIPITATION', '/Levels/allie1lev06_precipitation', 0, 'LP_ALLIE_ONE', 0, 0, 0, 65.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5006, 5006, 'LN_SWIMMIN_HOLES', '/Levels/allie1lev07_swimmin_holes', 0, 'LP_ALLIE_ONE', 0, 0, 0, 55.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5007, 5007, 'LN_SERIES_OF_TUBES', '/Levels/allie1lev08_series_of_tubes', 0, 'LP_ALLIE_ONE', 0, 0, 0, 75.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5008, 5008, 'LN_FAN_WITH_A_PLAN', '/Levels/allie1lev09_fan_with_a_plan', 0, 'LP_ALLIE_ONE', 0, 0, 0, 40.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5009, 5009, 'LN_RIDE_THE_WINDS', '/Levels/allie1lev10_ride_the_winds', 0, 'LP_ALLIE_ONE', 0, 0, 0, 45.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5010, 5010, 'LN_TURN_IT_UP', '/Levels/allie1lev11_turn_it_up', 0, 'LP_ALLIE_ONE', 0, 0, 0, 45.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5011, 5011, 'LN_WHITE_WATER_RAPIDS', '/Levels/allie1lev12_white_water_rapids', 0, 'LP_ALLIE_ONE', 0, 0, 0, 55.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5012, 5012, 'LN_CRYSTAL_CAVERN', '/Levels/allie1lev13_crystal_cavern', 0, 'LP_ALLIE_ONE', 0, 0, 0, 60.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5013, 5013, 'LN_A_TOUCH_OF_STEAM', '/Levels/allie1lev14_a_touch_of_steam', 0, 'LP_ALLIE_ONE', 0, 0, 0, 50.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5014, 5014, 'LN_BBQ_GRILL', '/Levels/allie1lev15_bbq_grill', 0, 'LP_ALLIE_ONE', 0, 0, 0, 45.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5015, 5015, 'LN_SKI_SLOPE', '/Levels/allie1lev16_ski_slope', 0, 'LP_ALLIE_ONE', 0, 0, 0, 60.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5016, 5016, 'LN_CHILLY_DOGS', '/Levels/allie1lev17_chilly_dogs', 0, 'LP_ALLIE_ONE', 0, 0, 0, 55.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5017, 5017, 'LN_SWITCHING_SIDES', '/Levels/allie1lev18_switching_sides', 0, 'LP_ALLIE_ONE', 0, 0, 0, 70.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5018, 5018, 'LN_FLOOD_GATE', '/Levels/allie1lev19_flood_gate', 0, 'LP_ALLIE_ONE', 0, 0, 0, 60.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5019, 5019, 'LN_WAIT_FOR_IT', '/Levels/allie1lev20_wait_for_it', 0, 'LP_ALLIE_ONE', 0, 0, 0, 50.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);

/* Pack 2 */
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5020, 5020, 'LN_WHERES_MY_STEAM', '/Levels/allie2lev01_wheres_my_steam', 0, 'LP_ALLIE_TWO', 0, 0, 1, 35.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5021, 5021, 'LN_STEAM_CLEANING', '/Levels/allie2lev02_steam_cleaning', 0, 'LP_ALLIE_TWO', 0, 0, 0, 45.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5022, 5022, 'LN_BREAK_ON_THROUGH', '/Levels/allie2lev03_break_on_through', 0, 'LP_ALLIE_TWO', 0, 0, 0, 55.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5023, 5023, 'LN_WRAPPED_IN_A_BOW', '/Levels/allie2lev04_wrapped_in_a_bow', 0, 'LP_ALLIE_TWO', 0, 0, 0, 60.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5024, 5024, 'LN_TOUR_GUIDES', '/Levels/allie2lev05_tour_guides', 0, 'LP_ALLIE_TWO', 0, 0, 0, 70.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5025, 5025, 'LN_MASH_UP', '/Levels/allie2lev06_mash_up', 0, 'LP_ALLIE_TWO', 0, 0, 0, 65.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5026, 5026, 'LN_CLEAR_WAY', '/Levels/allie2lev07_clear_the_way', 0, 'LP_ALLIE_TWO', 0, 0, 0, 70.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5027, 5027, 'LN_SWITCHAROO', '/Levels/allie2lev08_switcharoo', 0, 'LP_ALLIE_TWO', 0, 0, 0, 55.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5028, 5028, 'LN_MAKING_THE_ROUNDS', '/Levels/allie2lev09_making_the_rounds', 0, 'LP_ALLIE_TWO', 0, 0, 0, 65.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5029, 5029, 'LN_KEEP_YOUR_GUARD_UP_AND_DOWN', '/Levels/allie2lev10_keep_your_guard_up_and_down', 0, 'LP_ALLIE_TWO', 0, 0, 0, 80.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5030, 5030, 'LN_JUST_PASSING_THROUGH', '/Levels/allie2lev11_just_passing_through', 0, 'LP_ALLIE_TWO', 0, 0, 0, 60.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5031, 5031, 'LN_ON_THE_BREEZE', '/Levels/allie2lev12_on_the_breeze', 0, 'LP_ALLIE_TWO', 0, 0, 0, 50.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5032, 5032, 'LN_ROUND_THE_BEND', '/Levels/allie2lev13_round_the_bend', 0, 'LP_ALLIE_TWO', 0, 0, 0, 45.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5033, 5033, 'LN_MELTDOWN', '/Levels/allie2lev14_meltdown', 0, 'LP_ALLIE_TWO', 0, 0, 0, 65.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5034, 5034, 'LN_HYDRAULIC_LIFT', '/Levels/allie2lev15_hydraulic_lift', 0, 'LP_ALLIE_TWO', 0, 0, 0, 55.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5035, 5035, 'LN_TRACK_AND_FIELD', '/Levels/allie2lev16_track_and_field', 0, 'LP_ALLIE_TWO', 0, 0, 0, 85.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5036, 5036, 'LN_SLIDING_GUARDIAN', '/Levels/allie2lev17_sliding_guardian', 0, 'LP_ALLIE_TWO', 0, 0, 0, 60.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5037, 5037, 'LN_PORTCULLIS', '/Levels/allie2lev18_portcullis', 0, 'LP_ALLIE_TWO', 0, 0, 0, 95.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5038, 5038, 'LN_GROWING_GUARDIAN', '/Levels/allie2lev19_growing_guardian', 0, 'LP_ALLIE_TWO', 0, 0, 0, 85.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5039, 5039, 'LN_TIC_TAC_TOE', '/Levels/allie2lev20_tic_tac_toe', 0, 'LP_ALLIE_TWO', 0, 0, 0, 45.0, 0, -1, 0, 0, 0, 1, null, null, 0, 0);

/* Add bonus levels here */
INSERT INTO LevelPackInfo (rowid, ID, PackName, Unlocked, HasPlayed, StarsRequired, TileTexture, LightingColor, CurtainTexture, LockColor, HasAlerted, PackType, Hidden, PackIcon, StartDate, EndDate, Storyline, IAP_item_id, Bought, DuckTextureSuffix, FB_AlbumName, DisplayPackName, LS_Unlocked, GrayType) VALUES (-4, -4, 'LP_BONUS_ALLIE', '0', '0', 30, 'tile_world_01', '255 255 255', 'shower_curtain_01', '255 255 255', '0', 0, '0', null, null, null, 6, 'alliepack01', '0', '', 'Allie Bonus Levels', '', '0', '0');

INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5500, 5500, 'LN_COLD_SHOULDER', '/Levels/allie_bonus_cold_shoulder', 0, 'LP_BONUS_ALLIE', 0, 0, '0', 50.0, 0, -1, 0, 0, '0', 1, null, null, '0', '1');
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5501, 5501, 'LN_MYSTERY_BURROW', '/Levels/allie_bonus_mystery_burrow', 0, 'LP_BONUS_ALLIE', 0, 0, '0', 50.0, 0, -1, 0, 0, '0', 1, null, null, '0', '1');
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5502, 5502, 'LN_LEFT_BRAIN_RIGHT_BRAIN', '/Levels/allie_bonus_left_brain_right_brain', 0, 'LP_BONUS_ALLIE', 0, 0, '0', 40.0, 0, -1, 0, 0, '0', 1, null, null, '0', '1');
INSERT INTO LevelInfo (rowid, ID, Name, Filename, Stars, PackName, TimesPlayed, TimesFinished, Unlocked, ParTime, BestScore, CollectibleFound, PlayTime, TimesRetried, IgnoreInStarCount, Type, StartDate, EndDate, Available, IsBonus) VALUES (5503, 5503, 'LN_CHECKERBOARD', '/Levels/allie_bonus_checkerboard', 0, 'LP_BONUS_ALLIE', 0, 0, '0', 65.0, 0, -1, 0, 0, '0', 1, null, null, '0', '1');


/* Remove the old feep LOTW */
DELETE FROM LOWInfo WHERE rowid = 4 AND ID = 4;

/* Add level of the week here */
INSERT INTO LevelPackInfo (rowid, ID, PackName, Unlocked, HasPlayed, StarsRequired, TileTexture, LightingColor, CurtainTexture, LockColor, HasAlerted, PackType, Hidden, PackIcon, StartDate, EndDate, Storyline, IAP_item_id, Bought, DuckTextureSuffix, FB_AlbumName, DisplayPackName, LS_Unlocked, GrayType) VALUES (-13, -13, 'LP_ALLIE_LOTW', 1, 0, 30, 'allie_bricks_blue', '255 255 255', 'shower_curtain_01', '255 255 255', 0, 0, 0, null, null, null, 6, '', 0, '', '', '', 0, 0);
INSERT INTO LOWInfo (rowid, ID, Storyline, PackName, DisplayOrder, LevelName, DownloadDate, PortalTexture, PlayButtonTexture, BannerTexture, levelStoryline) VALUES (5, 5, 6, 'LP_ALLIE_LOTW', 1, 'LN_ALGAED_UP_AND_NOWHERE_TO_GO', '2012-11-17 00:00:00', 'WMW_UI_low_allie.png', 'WMW_UI_low_allie_level_icon_%d.png', 'WMW_UI_low_allie_banner.png', 6);

/* Shift down cranky and md */
UPDATE LOWInfo SET DisplayOrder = 2 WHERE rowid = 2 AND ID = 2;
UPDATE LOWInfo SET DisplayOrder = 3 WHERE rowid = 3 AND ID = 3;

/* Add allie Level of the Week starting at 9000 series */
INSERT OR IGNORE INTO LevelInfo (rowid, ID, Name, FileName, PackName, Unlocked, ParTime) VALUES (9000, 9000, 'LN_ALGAED_UP_AND_NOWHERE_TO_GO', '/Levels/LOW_Allie', 'LP_ALLIE_LOTW', 1, 66);
UPDATE LOWInfo SET LevelName= 'LN_ALGAED_UP_AND_NOWHERE_TO_GO', DownloadDate= '2013-01-24 00:00:00', levelStoryline= 6 WHERE Storyline= 6;

/* Add allie songs to be unlocked after challenges are complete */
CREATE TABLE AllieSongs(ID INTEGER NOT NULL, song TEXT, unlocked BOOL DEFAULT 0, PRIMARY KEY (id));
INSERT INTO "AllieSongs" VALUES(1,'/Audio/Music/Allie_Song_WheresMyWater_03.mp3',1);
INSERT INTO "AllieSongs" VALUES(2,'/Audio/Music/Allie_Song_Chopsticks_03.mp3',1);
INSERT INTO "AllieSongs" VALUES(3,'/Audio/Music/Allie_Song_BareNeccessities_03.mp3',0);
INSERT INTO "AllieSongs" VALUES(4,'/Audio/Music/Allie_Song_LondonBridge_03.mp3',0);
INSERT INTO "AllieSongs" VALUES(5,'/Audio/Music/Allie_Song_PiratesLife_03.mp3',0);
INSERT INTO "AllieSongs" VALUES(6,'/Audio/Music/Allie_Song_Frere_Jacque_03.mp3',0);

/* Add Allie Challenges*/
CREATE TABLE "AllieChallengeInfo" ("ID" INTEGER PRIMARY KEY  NOT NULL  UNIQUE , "Available" BOOL DEFAULT 0, "IAP_item_id" TEXT, "Completed" BOOL DEFAULT 0, "LevelName" TEXT, "TimesPlayed" INTEGER DEFAULT 0, "TimesCompleted" INTEGER DEFAULT 0, "Desc" TEXT);

INSERT INTO "AllieChallengeInfo" VALUES(10,1,'alliepack01',0,'/Levels/change_directions',0,0,'ALLIE_CHALLENGE_DESC_SWAMPY_4');
INSERT INTO "AllieChallengeInfo" VALUES(11,1,'alliepack01',0,'/Levels/BHVR_steam_bomb_dodger',0,0,'ALLIE_CHALLENGE_DESC_CRANKY_4');
INSERT INTO "AllieChallengeInfo" VALUES(12,1,'alliepack01',0,'/Levels/allie1lev05_down_is_up',0,0,'ALLIE_CHALLENGE_DESC_ALLIE_4');
INSERT INTO "AllieChallengeInfo" VALUES(20,0,'alliepack01',0,'/Levels/cross_the_streams',0,0,'ALLIE_CHALLENGE_DESC_CRANKY_4');
INSERT INTO "AllieChallengeInfo" VALUES(21,0,'alliepack01',0,'/Levels/allie1lev03_pathfinder',0,0,'ALLIE_CHALLENGE_DESC_ALLIE_4');
INSERT INTO "AllieChallengeInfo" VALUES(22,0,'alliepack01',0,'/Levels/allie1lev13_crystal_cavern',0,0,'ALLIE_CHALLENGE_DESC_ALLIE_4');
INSERT INTO "AllieChallengeInfo" VALUES(30,0,'alliepack01',0,'/Levels/daddy_waterbucks',0,0,'ALLIE_CHALLENGE_DESC_SWAMPY_4');
INSERT INTO "AllieChallengeInfo" VALUES(31,0,'alliepack01',0,'/Levels/up_and_down',0,0,'ALLIE_CHALLENGE_DESC_SWAMPY_4');
INSERT INTO "AllieChallengeInfo" VALUES(32,0,'alliepack01',0,'/Levels/lets_play_catch',0,0,'ALLIE_CHALLENGE_DESC_SWAMPY_4');
INSERT INTO "AllieChallengeInfo" VALUES(40,0,'alliepack01',0,'/Levels/allie2lev02_steam_cleaning',0,0,'ALLIE_CHALLENGE_DESC_ALLIE_4');
INSERT INTO "AllieChallengeInfo" VALUES(41,0,'alliepack01',0,'/Levels/allie2lev08_switcharoo',0,0,'ALLIE_CHALLENGE_DESC_ALLIE_4');
INSERT INTO "AllieChallengeInfo" VALUES(42,0,'alliepack01',0,'/Levels/redirection',0,0,'ALLIE_CHALLENGE_DESC_SWAMPY_4');

/* Music Collection */
CREATE TABLE MusicCollectInfo(ID INTEGER NOT NULL,Basename TEXT(25),ObjectName TEXT(25),GroupName TEXT(25),Unlocked BOOL(1),HasViewed BOOL(1), PRIMARY KEY (ID));

INSERT OR IGNORE INTO MusicCollectInfo (rowid, ID, Basename, ObjectName, GroupName, Unlocked, HasViewed) VALUES (1, 0, 'musiccol_triangle', 'x_musiccol_01', 'MUSICCOL_GROUP_0', 0, 0);
INSERT OR IGNORE INTO MusicCollectInfo (rowid, ID, Basename, ObjectName, GroupName, Unlocked, HasViewed) VALUES (2, 1, 'musiccol_xylophone', 'x_musiccol_02', 'MUSICCOL_GROUP_0', 0, 0);
INSERT OR IGNORE INTO MusicCollectInfo (rowid, ID, Basename, ObjectName, GroupName, Unlocked, HasViewed) VALUES (3, 2, 'musiccol_tambourine', 'x_musiccol_03', 'MUSICCOL_GROUP_0', 0, 0);
INSERT OR IGNORE INTO MusicCollectInfo (rowid, ID, Basename, ObjectName, GroupName, Unlocked, HasViewed) VALUES (4, 3, 'musiccol_tuba', 'x_musiccol_04', 'MUSICCOL_GROUP_1', 0, 0);
INSERT OR IGNORE INTO MusicCollectInfo (rowid, ID, Basename, ObjectName, GroupName, Unlocked, HasViewed) VALUES (5, 4, 'musiccol_marchdrum', 'x_musiccol_05', 'MUSICCOL_GROUP_1', 0, 0);
INSERT OR IGNORE INTO MusicCollectInfo (rowid, ID, Basename, ObjectName, GroupName, Unlocked, HasViewed) VALUES (6, 5, 'musiccol_cymbals', 'x_musiccol_06', 'MUSICCOL_GROUP_1', 0, 0);
INSERT OR IGNORE INTO MusicCollectInfo (rowid, ID, Basename, ObjectName, GroupName, Unlocked, HasViewed) VALUES (7, 6, 'musiccol_saxophone', 'x_musiccol_07', 'MUSICCOL_GROUP_2', 0, 0);
INSERT OR IGNORE INTO MusicCollectInfo (rowid, ID, Basename, ObjectName, GroupName, Unlocked, HasViewed) VALUES (8, 7, 'musiccol_harmonica', 'x_musiccol_08', 'MUSICCOL_GROUP_2', 0, 0);
INSERT OR IGNORE INTO MusicCollectInfo (rowid, ID, Basename, ObjectName, GroupName, Unlocked, HasViewed) VALUES (9, 8, 'musiccol_piano', 'x_musiccol_09', 'MUSICCOL_GROUP_2', 0, 0);
INSERT OR IGNORE INTO MusicCollectInfo (rowid, ID, Basename, ObjectName, GroupName, Unlocked, HasViewed) VALUES (10, 9, 'musiccol_guitar', 'x_musiccol_10', 'MUSICCOL_GROUP_3', 0, 0);
INSERT OR IGNORE INTO MusicCollectInfo (rowid, ID, Basename, ObjectName, GroupName, Unlocked, HasViewed) VALUES (11, 10, 'musiccol_violin', 'x_musiccol_11', 'MUSICCOL_GROUP_3', 0, 0);
INSERT OR IGNORE INTO MusicCollectInfo (rowid, ID, Basename, ObjectName, GroupName, Unlocked, HasViewed) VALUES (12, 11, 'musiccol_harp', 'x_musiccol_12', 'MUSICCOL_GROUP_3', 0, 0);



/* Updated ad preference */
UPDATE ADSettings SET PreferAD = 'Allie' WHERE rowid = 1;
UPDATE ADSettings SET PreferAD = 'Allie' WHERE rowid = 2;
UPDATE ADSettings SET PreferAD = 'Allie' WHERE rowid = 3;

/** END ALLIE CONTENT */

/* Add featured level pack */
UPDATE LevelPackInfo SET rowid = 84, ID = 84 WHERE rowid = 81; /* temp change to 84 */
UPDATE LevelPackInfo SET rowid = 81, ID = 81 WHERE rowid = 82;
UPDATE LevelPackInfo SET rowid = 82, ID = 82 WHERE rowid = 84; /* to actual value */
UPDATE LevelPackInfo SET rowid = 83, ID = 83 WHERE rowid = 80;
INSERT INTO LevelPackInfo (rowid, ID, PackName, Unlocked, HasPlayed, StarsRequired, TileTexture, LightingColor, CurtainTexture, LockColor, HasAlerted, PackType, Hidden, PackIcon, StartDate, EndDate, Storyline, IAP_item_id, Bought, DuckTextureSuffix, FB_AlbumName, DisplayPackName, LS_Unlocked, GrayType) VALUES(80,80,'LP_FEATURED',1,0,30,'tile_yellow','255 255 255','shower_curtain_01','255 255 255',0,0,0,'world_select_weekly_rewind',NULL,NULL,2,'',0,'','Lost Levels 04 - Weekly Rewind','',0,0);

/* Need to update SWAMPY and MD level of the week if current one is below last supported DL date */
UPDATE LOWInfo SET LevelName = 'LN_MEET_IN_THE_MIDDLE', DownloadDate = '2013-04-02 12:00:00' where DownloadDate < "2013-01-20 00:00:00" AND ID = 1;
UPDATE LOWInfo SET LevelName = 'LN_MEET_IN_THE_MIDDLE', DownloadDate = '2013-04-02 12:00:00', levelStoryline = 3 where DownloadDate < "2013-01-20 00:00:00" AND ID = 3;

INSERT OR IGNORE INTO LevelInfo (Name, FileName, PackName, Unlocked, ParTime) SELECT 'LN_MEET_IN_THE_MIDDLE', '/Levels/LOW_Mystery', 'LP_MYSTERY_LOTW', 1, 50 WHERE NOT EXISTS (select 1 from LevelInfo where Name = 'LN_MEET_IN_THE_MIDDLE' AND PackName = 'LP_MYSTERY_LOTW');
INSERT OR IGNORE INTO LevelInfo (Name, FileName, PackName, Unlocked, ParTime) SELECT 'LN_MEET_IN_THE_MIDDLE', '/Levels/LOW_Swampy', 'LP_SWAMPY_LOTW', 1, 53 WHERE NOT EXISTS (select 1 from LevelInfo where Name = 'LN_MEET_IN_THE_MIDDLE' AND PackName = 'LP_SWAMPY_LOTW');

/* Add achievement for Featured LP */
INSERT INTO "Achievements" VALUES('','ACH_THREESTAR_LP_FEATURED',0,'ACH_THREESTAR_LP_FEATURED_HOWTO','ACH_THREESTAR_LP_FEATURED_DESC','ACH_THREESTAR_LP_FEATURED_FB.png',0.0,0,'ACH_THREESTAR_LP_FEATURED_FB');


/* Cull any level of the week that isn't currently set */
DELETE FROM LevelInfo WHERE LevelInfo.PackName = "LP_SWAMPY_LOTW" AND LevelInfo.TimesPlayed = 0 AND LevelInfo.Stars == 0 AND Name <> (select LOWInfo.LevelName from LOWInfo where LOWInfo.PackName = "LP_SWAMPY_LOTW");

/* Update any existing levels */
UPDATE OR IGNORE LevelInfo SET ID = 6000, PackName = 'LP_FEATURED', Unlocked = 1, FileName = '/Levels/W001S_Sweat_the_Small_Stuff' WHERE Name = "LN_SWEAT_STUFF" AND PackName = 'LP_SWAMPY_LOTW' ;
UPDATE OR IGNORE LevelInfo SET ID = 6001, PackName = 'LP_FEATURED', Unlocked = 0, FileName = '/Levels/W002S_Turkey_Baster' WHERE Name = "LN_TURKEY_BASTER" AND PackName = 'LP_SWAMPY_LOTW';
UPDATE OR IGNORE LevelInfo SET ID = 6002, PackName = 'LP_FEATURED', Unlocked = 0, FileName = '/Levels/W003S_Lose_the_Ooze' WHERE Name = "LN_LOSE_THE_OOZE" AND PackName = 'LP_SWAMPY_LOTW';
UPDATE OR IGNORE LevelInfo SET ID = 6003, PackName = 'LP_FEATURED', Unlocked = 0, FileName = '/Levels/W004S_Lowered_Expectations' WHERE Name = "LN_LOWERED_EXPECTATIONS" AND PackName = 'LP_SWAMPY_LOTW';
UPDATE OR IGNORE LevelInfo SET ID = 6004, PackName = 'LP_FEATURED', Unlocked = 0, FileName = '/Levels/W005S_We_All_Scream_for_Iced_Steam' WHERE Name = "LN_ICED_STEAM" AND PackName = 'LP_SWAMPY_LOTW';
UPDATE OR IGNORE LevelInfo SET ID = 6005, PackName = 'LP_FEATURED', Unlocked = 0, FileName = '/Levels/W006S_Dirty_Algae' WHERE Name = "LN_DIRTY_ALGAE" AND PackName = 'LP_SWAMPY_LOTW';
UPDATE OR IGNORE LevelInfo SET ID = 6006, PackName = 'LP_FEATURED', Unlocked = 0, FileName = '/Levels/W007S_Down_the_Chimney' WHERE Name = "LN_DOWN_CHIMNEY" AND PackName = 'LP_SWAMPY_LOTW';
UPDATE OR IGNORE LevelInfo SET ID = 6007, PackName = 'LP_FEATURED', Unlocked = 0, FileName = '/Levels/W008S_MidNight_Stroke' WHERE Name = "LN_MIDNIGHT_STROKE" AND PackName = 'LP_SWAMPY_LOTW';
UPDATE OR IGNORE LevelInfo SET ID = 6008, PackName = 'LP_FEATURED', Unlocked = 0, FileName = '/Levels/W009S_Intersection' WHERE Name = "LN_INTERSECTION" AND PackName = 'LP_SWAMPY_LOTW';
UPDATE OR IGNORE LevelInfo SET ID = 6009, PackName = 'LP_FEATURED', Unlocked = 0, FileName = '/Levels/W010S_Ooze_and_Aahs' WHERE Name = "LN_OOZE_AND_AAHS" AND PackName = 'LP_SWAMPY_LOTW';
UPDATE OR IGNORE LevelInfo SET ID = 6010, PackName = 'LP_FEATURED', Unlocked = 0, FileName = '/Levels/W011S_Send_It_Through' WHERE Name = "LN_SEND_IT_THROUGH" AND PackName = 'LP_SWAMPY_LOTW';
UPDATE OR IGNORE LevelInfo SET ID = 6011, PackName = 'LP_FEATURED', Unlocked = 0, FileName = '/Levels/make_a_wish_2' WHERE Name = "LN_BDAY_CAKE" AND PackName = 'LP_SWAMPY_LOTW';
UPDATE OR IGNORE LevelInfo SET ID = 6012, PackName = 'LP_FEATURED', Unlocked = 0, FileName = '/Levels/PFS_Aulani' WHERE Name = "LN_AULANI" AND PackName = 'LP_SWAMPY_LOTW';
UPDATE OR IGNORE LevelInfo SET ID = 6013, PackName = 'LP_FEATURED', Unlocked = 0, FileName = '/Levels/Aulani_Lazy_River' WHERE Name = "LN_SERENE_RAPIDS" AND PackName = 'LP_SWAMPY_LOTW';
UPDATE OR IGNORE LevelInfo SET ID = 6014, PackName = 'LP_FEATURED', Unlocked = 0, FileName = '/Levels/Volcano2' WHERE Name = "LN_PUU_KILO" AND PackName = 'LP_SWAMPY_LOTW';

/* Conditional insertion of levels if they can't be found */
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Unlocked, ParTime) SELECT 6000, 'LN_SWEAT_STUFF', '/Levels/W001S_Sweat_the_Small_Stuff', 'LP_FEATURED', 1, 50 WHERE NOT EXISTS (select 1 from LevelInfo where Name = 'LN_SWEAT_STUFF' AND PackName = 'LP_SWAMPY_LOTW');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Unlocked, ParTime) SELECT 6001, 'LN_TURKEY_BASTER', '/Levels/W002S_Turkey_Baster', 'LP_FEATURED', 0, 53 WHERE NOT EXISTS (select 1 from LevelInfo where Name = 'LN_TURKEY_BASTER' AND PackName = 'LP_SWAMPY_LOTW');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Unlocked, ParTime) SELECT 6002, 'LN_LOSE_THE_OOZE', '/Levels/W003S_Lose_the_Ooze', 'LP_FEATURED', 0, 40 WHERE NOT EXISTS (select 1 from LevelInfo where Name = 'LN_LOSE_THE_OOZE' AND PackName = 'LP_SWAMPY_LOTW');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Unlocked, ParTime) SELECT 6003, 'LN_LOWERED_EXPECTATIONS', '/Levels/W004S_Lowered_Expectations', 'LP_FEATURED', 0, 69 WHERE NOT EXISTS (select 1 from LevelInfo where Name = 'LN_LOWERED_EXPECTATIONS' AND PackName = 'LP_SWAMPY_LOTW');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Unlocked, ParTime) SELECT 6004, 'LN_ICED_STEAM', '/Levels/W005S_We_All_Scream_for_Iced_Steam', 'LP_FEATURED', 0, 55 WHERE NOT EXISTS (select 1 from LevelInfo where Name = 'LN_ICED_STEAM' AND PackName = 'LP_SWAMPY_LOTW');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Unlocked, ParTime) SELECT 6005, 'LN_DIRTY_ALGAE', '/Levels/W006S_Dirty_Algae', 'LP_FEATURED', 0, 58 WHERE NOT EXISTS (select 1 from LevelInfo where Name = 'LN_DIRTY_ALGAE' AND PackName = 'LP_SWAMPY_LOTW');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Unlocked, ParTime) SELECT 6006, 'LN_DOWN_CHIMNEY', '/Levels/W007S_Down_the_Chimney', 'LP_FEATURED', 0, 55 WHERE NOT EXISTS (select 1 from LevelInfo where Name = 'LN_DOWN_CHIMNEY' AND PackName = 'LP_SWAMPY_LOTW');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Unlocked, ParTime) SELECT 6007, 'LN_MIDNIGHT_STROKE', '/Levels/W008S_MidNight_Stroke', 'LP_FEATURED', 0, 31 WHERE NOT EXISTS (select 1 from LevelInfo where Name = 'LN_MIDNIGHT_STROKE' AND PackName = 'LP_SWAMPY_LOTW');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Unlocked, ParTime) SELECT 6008, 'LN_INTERSECTION', '/Levels/W009S_Intersection', 'LP_FEATURED', 0, 51 WHERE NOT EXISTS (select 1 from LevelInfo where Name = 'LN_INTERSECTION' AND PackName = 'LP_SWAMPY_LOTW');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Unlocked, ParTime) SELECT 6009, 'LN_OOZE_AND_AAHS', '/Levels/W010S_Ooze_and_Aahs', 'LP_FEATURED', 0, 71 WHERE NOT EXISTS (select 1 from LevelInfo where Name = 'LN_OOZE_AND_AAHS' AND PackName = 'LP_SWAMPY_LOTW');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Unlocked, ParTime) SELECT 6010, 'LN_SEND_IT_THROUGH', '/Levels/W011S_Send_It_Through', 'LP_FEATURED', 0, 70 WHERE NOT EXISTS (select 1 from LevelInfo where Name = 'LN_SEND_IT_THROUGH' AND PackName = 'LP_SWAMPY_LOTW');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Unlocked, ParTime) SELECT 6011, 'LN_BDAY_CAKE', '/Levels/make_a_wish_2', 'LP_FEATURED', 0, 163 WHERE NOT EXISTS (select 1 from LevelInfo where Name = 'LN_BDAY_CAKE' AND PackName = 'LP_SWAMPY_LOTW');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Unlocked, ParTime) SELECT 6012, 'LN_AULANI', '/Levels/PFS_Aulani', 'LP_FEATURED', 0, 37 WHERE NOT EXISTS (select 1 from LevelInfo where Name = 'LN_AULANI' AND PackName = 'LP_SWAMPY_LOTW');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Unlocked, ParTime) SELECT 6013, 'LN_SERENE_RAPIDS', '/Levels/Aulani_Lazy_River', 'LP_FEATURED', 0, 35 WHERE NOT EXISTS (select 1 from LevelInfo where Name = 'LN_SERENE_RAPIDS' AND PackName = 'LP_SWAMPY_LOTW');
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Unlocked, ParTime) SELECT 6014, 'LN_PUU_KILO', '/Levels/Volcano2', 'LP_FEATURED', 0, 49 WHERE NOT EXISTS (select 1 from LevelInfo where Name = 'LN_PUU_KILO' AND PackName = 'LP_SWAMPY_LOTW');

/* Add bonus level to pack */
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Unlocked, ParTime, IsBonus, IgnoreInStarCount, Type) VALUES(6015, 'LN_SHUT_THE_WINDOWS', '/Levels/shut_the_windows', 'LP_FEATURED', 0, 50, 1, 1, 1);

/* Lost level pack waiting to be viewed */
INSERT OR IGNORE INTO PlayerData (EventName, EventValue, EventStringValue) VALUES ('LostLevelPackViewed', 0, null);
INSERT OR IGNORE INTO PlayerData (EventName, EventValue, EventStringValue) VALUES ('AlliePackViewed', 0, null);

/* Reset AMPS Info */
UPDATE PlayerData SET EventValue=0 WHERE EventName='DateOfNextAMPSCheck';
UPDATE PlayerData SET EventValue=0 WHERE EventName='AMPSDownloadWasInterrupted';

/* Fix for missing Mystery Level Pack 7 - this code will do nothing if the levels already exist */
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, ParTime, IsBonus, PackName, Type, Available) SELECT 
								 ID + 4000, Name, Filename, ParTime, IsBonus, 'LP_SEVEN_MYSTERY', 1, 0 FROM LevelInfo WHERE PackName='LP_SEVEN';		

/* Last but not least, update the database version number */
UPDATE Settings SET Value=21 WHERE Name='DatabaseVersion';