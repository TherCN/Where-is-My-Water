INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, StarsRequired, TileTexture, LightingColor, CurtainTexture, LockColor) VALUES 
									(5, 'LP_SIX', 245, 'tile_purple', '193 152 192', 'shower_curtain_02', '217 102 255');

INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, Unlocked, ParTime) VALUES (121, 'LN_STEAM_INTRO', '/Levels/steam_intro', 'LP_SIX', 1, 25);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (122, 'LN_RECYCLER', '/Levels/recycler', 'LP_SIX', 40);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (123, 'LN_CEILING_CATCHER', '/Levels/ceiling_catcher', 'LP_SIX', 40);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (124, 'LN_RISE_AND_FALL', '/Levels/rise_and_fall', 'LP_SIX', 50);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (125, 'LN_A_CLEANER_APPROACH', '/Levels/a_cleaner_approach', 'LP_SIX', 55);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (126, 'LN_CATCH_AND_RELEASE', '/Levels/catch_and_release', 'LP_SIX', 75);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (127, 'LN_SEPARATE_WAYS', '/Levels/separate_ways', 'LP_SIX', 80);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (128, 'LN_THROUGH_THE_BRIDGE', '/Levels/through_the_bridge', 'LP_SIX', 45);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (129, 'LN_OL_SWITCHEROO', '/Levels/ol_switcheroo', 'LP_SIX', 55);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (130, 'LN_BELOW_THE_BBQ', '/Levels/below_the_bbq', 'LP_SIX', 40);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (131, 'LN_A_RACE_TO_THE_FINISH', '/Levels/a_race_to_the_finish', 'LP_SIX', 50);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (132, 'LN_REVOLVING_DOOR', '/Levels/revolving_door', 'LP_SIX', 55);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (133, 'LN_RACE_THE_OOZE', '/Levels/race_the_ooze', 'LP_SIX', 50);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (134, 'LN_STEAM_BOT', '/Levels/steam_bot', 'LP_SIX', 75);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (135, 'LN_VENTILATION_SHAFT', '/Levels/ventilation_shaft', 'LP_SIX', 55);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (136, 'LN_STEAM_QUARANTENE', '/Levels/steam_quarantene', 'LP_SIX', 45);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (137, 'LN_JUMPING_GIGAWATTS', '/Levels/jumping_gigawatts', 'LP_SIX', 50);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (138, 'LN_TRAP_DOOR', '/Levels/trap_door', 'LP_SIX', 45);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (139, 'LN_UP_AND_DOWN', '/Levels/up_and_down', 'LP_SIX', 65);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (140, 'LN_STEAM_JOURNEY', '/Levels/time_to_split', 'LP_SIX', 120);

INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (90, 'LN_STEAM_IT_UP', '/Levels/steam_it_up', 'LP_BONUS', 40);
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime) VALUES (91, 'LN_AROUND_THE_BLOCK', '/Levels/around_the_block', 'LP_BONUS', 40);

INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (30, 'Collect_Skate');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (31, 'Collect_Mitten');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (32, 'Collect_Winter_Hat');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (33, 'Collect_Tie');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (34, 'Collect_Mop');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (35, 'Collect_Lipstick');

INSERT OR IGNORE INTO Achievements (rowid, Points, ID, PreEarnedDescription, EarnedDescription, Image) VALUES (26, '', 'ACH_LP_SIX', 'ACH_LP_SIX_HOWTO', 'ACH_LP_SIX_DESC', 'ACH_LP_SIX.png');
INSERT OR IGNORE INTO Achievements (rowid, Points, ID, PreEarnedDescription, EarnedDescription, Image) VALUES (27, '', 'ACH_THREESTAR_LP_SIX', 'ACH_THREESTAR_LP_SIX_HOWTO', 'ACH_THREESTAR_LP_SIX_DESC', 'ACH_THREESTAR_LP_SIX.png');
INSERT OR IGNORE INTO Achievements (rowid, Points, ID, PreEarnedDescription, EarnedDescription, Image) VALUES (28, '', 'ACH_TRIDUCK_DASH', 'ACH_TRIDUCK_DASH_HOWTO', 'ACH_TRIDUCK_DASH_DESC', 'ACH_TRIDUCK_DASH.png');
INSERT OR IGNORE INTO Achievements (rowid, Points, ID, PreEarnedDescription, EarnedDescription, Image) VALUES (29, '', 'ACH_NO_CONVERTER', 'ACH_NO_CONVERTER_HOWTO', 'ACH_NO_CONVERTER_DESC', 'ACH_NO_CONVERTER.png');

UPDATE Settings SET Value=3 WHERE Name='DatabaseVersion';