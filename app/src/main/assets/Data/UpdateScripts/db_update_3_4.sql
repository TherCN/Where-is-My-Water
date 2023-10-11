ALTER TABLE LevelPackInfo ADD COLUMN 'PackType' INTEGER NOT NULL DEFAULT 0;
ALTER TABLE LevelPackInfo ADD COLUMN 'Hidden' BOOL NOT NULL DEFAULT 0;
ALTER TABLE LevelPackInfo ADD COLUMN 'PackIcon' TEXT;
ALTER TABLE LevelPackInfo ADD COLUMN 'StartDate' DATETIME;
ALTER TABLE LevelPackInfo ADD COLUMN 'EndDate' DATETIME;

UPDATE LevelPackInfo SET ID=10, PackIcon='world_select_00' WHERE ID=0 AND PackName='LP_ONE';
UPDATE LevelPackInfo SET ID=11, PackIcon='world_select_01' WHERE ID=1 AND PackName='LP_TWO';
UPDATE LevelPackInfo SET ID=12, PackIcon='world_select_02' WHERE ID=2 AND PackName='LP_THREE';
UPDATE LevelPackInfo SET ID=13, PackIcon='world_select_03' WHERE ID=3 AND PackName='LP_FOUR';
UPDATE LevelPackInfo SET ID=14, PackIcon='world_select_04' WHERE ID=4 AND PackName='LP_FIVE';
UPDATE LevelPackInfo SET ID=15, PackIcon='world_select_05' WHERE ID=5 AND PackName='LP_SIX';

INSERT OR IGNORE INTO LevelPackInfo (ID, Unlocked, PackName, PackType, PackIcon) VALUES 
									(3, 1, 'GIFT_APP', 1, 'world_select_gift');
INSERT OR IGNORE INTO LevelPackInfo (ID, Unlocked, PackName, PackType, PackIcon) VALUES 
									(8, 1, 'CRANKY_STORY_TITLE_COMING', 1, 'world_select_cranky');
INSERT OR IGNORE INTO LevelPackInfo (ID, Unlocked, PackName, PackType, PackIcon) VALUES 
									(90, 1, 'MORE_COMING_SOON', 1, 'world_select_more');

INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, StarsRequired, TileTexture, LightingColor, CurtainTexture, LockColor, PackIcon) VALUES 
									(16, 'LP_SEVEN', 305, 'tile_green', '91 193 165', 'shower_curtain_03', '181 255 102', 'world_select_06');

INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Unlocked, ParTime) VALUES (141, 'LN_BALLOON_INTRO', '/Levels/balloon_intro', 'LP_SEVEN', 1, 35);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (142, 'LN_BURST_YOUR_BUBBLE', '/Levels/2_pop', 'LP_SEVEN', 40);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (143, 'LN_GEYSER', '/Levels/geiser', 'LP_SEVEN', 39);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (144, 'LN_BALLOON_BRIDGE', '/Levels/balloon_bridge', 'LP_SEVEN', 38);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (145, 'LN_JAGGED_EDGE', '/Levels/jagged_edge', 'LP_SEVEN', 43);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (146, 'LN_YOU_SHALL_NOT_PASS', '/Levels/you_shall_not_pass', 'LP_SEVEN', 43);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (147, 'LN_TRUST_FALL', '/Levels/firin_mah_lazer', 'LP_SEVEN', 44);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (148, 'LN_DROP_BY_DROP', '/Levels/drop_by_drop', 'LP_SEVEN', 41);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (149, 'LN_BALLOON_CATAPULT', '/Levels/balloon_catapult', 'LP_SEVEN', 49);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (150, 'LN_MIRROR_IMAGE', '/Levels/mirror_image', 'LP_SEVEN', 38);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (151, 'LN_DRAIN_AND_DROP', '/Levels/drain_and_drop', 'LP_SEVEN', 45);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (152, 'LN_HOT_AIR_BALLOON', '/Levels/hot_air_balloon', 'LP_SEVEN', 40);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (153, 'LN_PINBALL', '/Levels/balloon_pinball', 'LP_SEVEN', 60);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (154, 'LN_BALLOON_FOUNTAIN', '/Levels/balloon_fountain', 'LP_SEVEN', 55);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (155, 'LN_BALLOON_JOURNEY', '/Levels/current_pool', 'LP_SEVEN', 53);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (156, 'LN_PURER_PATHS_PREVAIL', '/Levels/purer_paths_prevail', 'LP_SEVEN', 43);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (157, 'LN_PLATFORMER', '/Levels/new_platformer', 'LP_SEVEN', 57);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (158, 'LN_BOOBY_TRAP_STAIRCASE', '/Levels/booby_trap_staircase', 'LP_SEVEN', 71);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (159, 'LN_PUSH_POP', '/Levels/push_pop', 'LP_SEVEN', 51);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (160, 'LN_ROLL_YOUR_OWN_POISON', '/Levels/roll_your_own_poison', 'LP_SEVEN', 75);

INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (92, 'LN_BALLOON_MAZE', '/Levels/balloon_bonus_2', 'LP_BONUS', 40);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (93, 'LN_TILT_WITH_CAUTION', '/Levels/boom_boom', 'LP_BONUS', 40);

INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, IgnoreInStarCount) VALUES (1000, 'LN_FISTFUL_OF_NOTHING', '/Levels/fist_full_of_nothing', 'LP_BONUS', 40, 1);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, IgnoreInStarCount) VALUES (1001, 'LN_CHEAT_CODE', '/Levels/super_c', 'LP_BONUS', 40, 1);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, IgnoreInStarCount) VALUES (1002, 'LN_PLANETS', '/Levels/planets', 'LP_BONUS', 40, 1);

INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (36, 'Collect_Actor_Hat');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (37, 'Collect_Bullhorn');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (38, 'Collect_Flashlight');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (39, 'Collect_Drum');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (40, 'Collect_Horn');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (41, 'Collect_Violin');

INSERT OR IGNORE INTO Achievements (rowid, Points, ID, PreEarnedDescription, EarnedDescription, Image) VALUES (30, '', 'ACH_LP_SEVEN', 'ACH_LP_SEVEN_HOWTO', 'ACH_LP_SEVEN_DESC', 'ACH_LP_SEVEN.png');
INSERT OR IGNORE INTO Achievements (rowid, Points, ID, PreEarnedDescription, EarnedDescription, Image) VALUES (31, '', 'ACH_THREESTAR_LP_SEVEN', 'ACH_THREESTAR_LP_SEVEN_HOWTO', 'ACH_THREESTAR_LP_SEVEN_DESC', 'ACH_THREESTAR_LP_SEVEN.png');

ALTER TABLE LevelInfo ADD COLUMN 'Type' INTEGER DEFAULT 0;
ALTER TABLE LevelInfo ADD COLUMN 'StartDate' DATETIME;
ALTER TABLE LevelInfo ADD COLUMN 'EndDate' DATETIME;

ALTER TABLE PlayerData ADD COLUMN 'EventStringValue' TEXT;
INSERT OR IGNORE INTO PlayerData (EventName, EventValue, EventStringValue) VALUES ('PromotionSuffix', -1, '');
INSERT OR IGNORE INTO PlayerData (EventName, EventValue, EventStringValue) VALUES ('ThemeSuffix', -1, 'WINTER_2011');

UPDATE PlayerData SET EventValue=0 WHERE EventName='DateOfNextAMPSCheck';
UPDATE PlayerData SET EventValue=0 WHERE EventName='AMPSDownloadWasInterrupted';

INSERT OR IGNORE INTO Settings (Name, Value) VALUES ('PreferredLanguage', -1);

UPDATE Settings SET Value=4 WHERE Name='DatabaseVersion';