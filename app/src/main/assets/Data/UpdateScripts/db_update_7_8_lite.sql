/*add one column to LevelPackInfo*/
ALTER TABLE LevelPackInfo ADD GrayType BOOL NOT NULL DEFAULT 0;

/*delete LP_Mystery pack*/
DELETE FROM LevelPackInfo WHERE PackName='LP_MYSTERY';

/* Franken pack */
INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, Unlocked, HasPlayed, TileTexture, LightingColor, CurtainTexture, PackIcon, DuckTextureSuffix, GrayType) VALUES 
									(11, 'LP_FRANKEN', 1, 0, 'tile_magenta', '192 137 177', 'Frankenweenie_shower_curtain1', 'WMW_Level_Icon_frankenweenie', '', 1);

/* Frankie levels!! */
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, PackName, ParTime, Unlocked, Type) VALUES (82, 'LN_SKELETON_DANCE', '/Levels/01_skeleton_dance', 'LP_FRANKEN', 35, 1, 0);
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, PackName, ParTime, StartDate, Type) VALUES (83, 'LN_DARK_AND_STORMY', '/Levels/02_dark_and_stormy', 'LP_FRANKEN', 40, '2012-09-28 00:00:00', 2);
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, PackName, ParTime, StartDate, Type) VALUES (84, 'LN_GHOST_BUSTER',	'/Levels/03_ghost_buster', 'LP_FRANKEN', 60, '2012-09-29 00:00:00', 2);
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, PackName, ParTime, StartDate, Type) VALUES (85, 'LN_TOWER_OF_TERROR', '/Levels/04_tower_of_terror', 'LP_FRANKEN', 45, '2012-09-30 00:00:00', 2);
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, PackName, ParTime, StartDate, Type) VALUES (86, 'LN_HAUNTED_MANSION', '/Levels/05_haunted_mansion', 'LP_FRANKEN', 45, '2012-10-01 00:00:00', 2);
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, PackName, ParTime, StartDate, Type) VALUES (87, 'LN_SIX_FEET_UNDER', '/Levels/06_six_feet_under', 'LP_FRANKEN', 48, '2012-10-02 00:00:00', 2);
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, PackName, ParTime, StartDate, Type) VALUES (88, 'LN_CATACOMBS', '/Levels/07_catacombs', 'LP_FRANKEN', 40, '2012-10-03 00:00:00', 2);
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, PackName, ParTime, StartDate, Type) VALUES (89, 'LN_ALONG_CAME_A_SWAMPY', '/Levels/08_along_came_a_swampy', 'LP_FRANKEN', 50, '2012-10-04 00:00:00', 2);
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, PackName, ParTime, StartDate, Type) VALUES (90, 'LN_DARK_DESCENT', '/Levels/09_dark_descent', 'LP_FRANKEN', 65, '2012-10-05 00:00:00', 2);
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, PackName, ParTime, StartDate, Type) VALUES (91, 'LN_HYDRANT', '/Levels/10_hydrant', 'LP_FRANKEN', 56, '2012-10-06 00:00:00', 2);

/* Franken bonus level pack*/
INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, TileTexture, CurtainTexture, DuckTextureSuffix, GrayType) VALUES (-2, 'LP_BONUS_FRANKEN', 'tile_magenta', 'Frankenweenie_shower_curtain1', '', 1);
                                    
/* Frankie Bonus level!! */
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, Type, IsBonus) VALUES (1001,	'LN_DEAD_ENDS',	'/Levels/B1_dead_ends',	'LP_BONUS_FRANKEN', 90, 2, 1);

/* collectibles */
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (3, 'Collectables_Frankenweenie_1');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (4, 'Collectables_Frankenweenie_2');
INSERT OR IGNORE INTO CollectibleInfo (ID, Basename) VALUES (5, 'Collectables_Frankenweenie_3');

/* hide swampy's pick */
UPDATE LevelPackInfo SET Hidden=1 WHERE PackName='LP_SWAMPY_PICKS';

/* add perry demo pack*/
INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, Unlocked, PackType, PackIcon) VALUES (13, 'LP_PERRY', 1, 1, 'WMW_Level_Icon_perry_demo');

/* add two secret levels */
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, IgnoreInStarCount) VALUES (2005, 'LN_EVERY_WHICH_WAY', '/Levels/HASBRO', 'LP_SECRET', 46, 1);
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, PackName, ParTime, IgnoreInStarCount, Type, StartDate, EndDate) VALUES (2006, 'LN_MAKE_A_WISH', '/Levels/make_a_wish', 'LP_SECRET', 44, 1, 2, '2012-09-15 00:00:00', '2012-09-29 00:00:00');

/* Last but not least, update the database version number */
UPDATE Settings SET Value=8 WHERE Name='DatabaseVersion';
