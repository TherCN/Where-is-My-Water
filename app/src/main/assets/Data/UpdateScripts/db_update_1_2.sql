INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, StarsRequired, TileTexture, LightingColor, CurtainTexture, LockColor) VALUES 
									(4, 'LP_FIVE', 185, 'tile_yellow', '188 153 71', 'shower_curtain_01', '102 250 255');

INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Unlocked, ParTime) VALUES (101, 'LN_CONVERTER_INTRO', '/Levels/converter_intro', 'LP_FIVE', 1, 30);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (102, 'LN_RECYCLING_WORKS', '/Levels/recycling_works', 'LP_FIVE', 35);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (103, 'LN_OUCH_MY_EYE', '/Levels/ouch_my_eye', 'LP_FIVE', 35);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (104, 'LN_CONVERSION_TEST', '/Levels/test_tube_redux', 'LP_FIVE', 45);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (105, 'LN_CONVERTER_JOURNEY', '/Levels/converter_journey', 'LP_FIVE', 40);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (106, 'LN_CLEAR_AND_SHOOT', '/Levels/clear_and_shoot', 'LP_FIVE', 55);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (107, 'LN_DOUBLE_LAUNCH_REDUX', '/Levels/double_launch_redux', 'LP_FIVE', 45);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (108, 'LN_UNDERCURRENT', '/Levels/undercurrent', 'LP_FIVE', 55);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (109, 'LN_MULTI_CONVERT', '/Levels/multi_convert', 'LP_FIVE', 40);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (110, 'LN_MINER', '/Levels/miner', 'LP_FIVE', 70);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (111, 'LN_CATCH_THEM_ALL', '/Levels/catch_them_all', 'LP_FIVE', 45);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (112, 'LN_SCAFFOLDING', '/Levels/scaffolding', 'LP_FIVE', 35);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (113, 'LN_GET_ON_THE_TRAIN', '/Levels/get_on_the_train', 'LP_FIVE', 55);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (114, 'LN_DOUBLE_DIPPING', '/Levels/double_dipping', 'LP_FIVE', 45);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (115, 'LN_CONVERTER_GATE', '/Levels/converter_gate', 'LP_FIVE', 60);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (116, 'LN_OOZE_IS_ALRIGHT', '/Levels/ooze_is_alright', 'LP_FIVE', 35);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (117, 'LN_PICK_YOUR_POISON', '/Levels/pick_your_poison', 'LP_FIVE', 50);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (118, 'LN_ACROSS_THE_BRIDGE', '/Levels/across_the_bridge', 'LP_FIVE', 60);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (119, 'LN_THE_POT_BOILS_OVER', '/Levels/the_pot_boils_over', 'LP_FIVE', 45);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (120, 'LN_HOOKSHOT_HEAVEN', '/Levels/hookshot_heaven', 'LP_FIVE', 60);

INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (88, 'LN_ONION_PEEL', '/Levels/onion_peel', 'LP_BONUS', 40);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (89, 'LN_NEVER_LET_YOU_GO', '/Levels/never_let_you_go', 'LP_BONUS', 40);

INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (24, 'Collect_Apple');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (25, 'Collect_Statue');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (26, 'Collect_Cab');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (27, 'Collect_Hula');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (28, 'Collect_Mickey');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (29, 'Collect_Sphinx');

INSERT OR IGNORE INTO Achievements (rowid, Points, ID, PreEarnedDescription, EarnedDescription, Image) VALUES (24, '', 'ACH_LP_FIVE', 'ACH_LP_FIVE_HOWTO', 'ACH_LP_FIVE_DESC', 'ACH_LP_FIVE.png');
INSERT OR IGNORE INTO Achievements (rowid, Points, ID, PreEarnedDescription, EarnedDescription, Image) VALUES (25, '', 'ACH_THREESTAR_LP_FIVE', 'ACH_THREESTAR_LP_FIVE_HOWTO', 'ACH_THREESTAR_LP_FIVE_DESC', 'ACH_THREESTAR_LP_FIVE.png');

INSERT OR IGNORE INTO PlayerData (ID, EventName, EventValue) VALUES (7, 'DateOfNextAMPSCheck', 0);
INSERT OR IGNORE INTO PlayerData (ID, EventName, EventValue) VALUES (8, 'AMPSDownloadWasInterrupted', 0);

UPDATE Settings SET Value=2 WHERE Name='DatabaseVersion';