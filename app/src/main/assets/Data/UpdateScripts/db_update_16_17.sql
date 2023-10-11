/* Modify HubInfo table, ButtonType, DuckyCounterTexture fields.*/

ALTER TABLE HubInfo ADD DisplayOrder INTEGER NOT NULL DEFAULT 0;
ALTER TABLE HubInfo ADD DuckyCounterTexture TEXT NOT NULL DEFAULT "";

/* modify swampy screen*/
UPDATE HubInfo SET ID=0, TitleTexture='WMW_UI_swampy_logo.png', MainTexture='WMW_UI_swampy_picture.png', FrameTexture='WMW_UI_portal.png', DisplayOrder=1, DuckyCounterTexture='WMW_UI_swampy_duck_counter.png' WHERE Storyline=0 AND ID=10;

/*modify cranky screen*/
UPDATE HubInfo SET ID=1, TitleTexture='WMW_UI_cranky_logo.png', MainTexture='WMW_UI_cranky_picture.png', FrameTexture='WMW_UI_portal.png', DisplayOrder=2, DuckyCounterTexture='WMW_UI_cranky_duck_counter.png' WHERE Storyline=1 AND ID=20;

/*modify mystery duck screen*/
UPDATE HubInfo SET ID=2, TitleTexture='WMW_UI_mystery_logo.png', MainTexture='WMW_UI_mystery_picture.png', FrameTexture='WMW_UI_portal.png', DisplayOrder=3, DuckyCounterTexture='WMW_UI_mystery_duck_counter.png' WHERE Storyline=3 AND ID=15;

/*delete other data row in HubInfo*/
DELETE FROM HubInfo WHERE ID>2;

/* add Level of the week screen and Promotion screen*/
INSERT OR IGNORE INTO HubInfo (ID, Storyline, DisplayOrder) VALUES (3, 4, 0);
INSERT OR IGNORE INTO HubInfo (ID, Storyline, DisplayOrder) VALUES (4, 5, 4);


/* add Mystery Duck packs 9 & 10 */
/* this just copies Name, Filename, Par Time, Is Bonus from existing packs, and changes pack name. */
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, ParTime, IsBonus, PackName, Type, Available) SELECT 
								 ID + 4000, Name, Filename, ParTime, IsBonus, 'LP_NINE_MYSTERY', 1, 0 FROM LevelInfo WHERE PackName='LP_NINE';
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, ParTime, IsBonus, PackName, Type, Available) SELECT 
								 ID + 4000, Name, Filename, ParTime, IsBonus, 'LP_TEN_MYSTERY', 1, 0 FROM LevelInfo WHERE PackName='LP_TEN';
								 
/* Also unlock the first level from each pack */
UPDATE LevelInfo SET Unlocked=1 WHERE PackName='LP_NINE_MYSTERY' AND Filename='/Levels/change_directions';
UPDATE LevelInfo SET Unlocked=1 WHERE PackName='LP_TEN_MYSTERY' AND Filename='/Levels/01_let_it_dry';



/* add LOWInfo table */
CREATE TABLE LOWInfo (ID INTEGER PRIMARY KEY NOT NULL UNIQUE, Storyline INTEGER NOT NULL UNIQUE DEFAULT -1, PackName TEXT NOT NULL DEFAULT 'LP_', DisplayOrder INTEGER NOT NULL DEFAULT -1, LevelName TEXT NOT NULL DEFAULT 'LN_', DownloadDate DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00', PortalTexture TEXT DEFAULT '', PlayButtonTexture TEXT DEFAULT '', BannerTexture TEXT DEFAULT '', levelStoryline INTEGER);

/* add default value into LOWInfo table */
INSERT OR IGNORE INTO LOWInfo (ID, Storyline, PackName, DisplayOrder, LevelName, DownloadDate, PortalTexture, PlayButtonTexture, BannerTexture) VALUES (1, 0, 'LP_SWAMPY_LOTW',0, 'LN_', '2012-12-24 00:00:00', 'WMW_UI_low_swampy.png', 'WMW_UI_low_swampy_level_icon_%d.png', 'WMW_UI_low_swampy_banner.png');
INSERT OR IGNORE INTO LOWInfo (ID, Storyline, PackName, DisplayOrder, LevelName, DownloadDate, PortalTexture, PlayButtonTexture, BannerTexture) VALUES (2, 1, 'LP_CRANKY_LOTW',1, 'LN_', '2012-12-24 00:00:00', 'WMW_UI_low_cranky.png', 'WMW_UI_low_cranky_level_icon_%d.png', 'WMW_UI_low_cranky_banner.png');
INSERT OR IGNORE INTO LOWInfo (ID, Storyline, PackName, DisplayOrder, LevelName, DownloadDate, PortalTexture, PlayButtonTexture, BannerTexture) VALUES (3, 3, 'LP_MYSTERY_LOTW',2, 'LN_', '2012-12-24 00:00:00', 'WMW_UI_low_mystery.png', 'WMW_UI_low_mystery_level_icon_%d.png', 'WMW_UI_low_mystery_banner.png');
INSERT OR IGNORE INTO LOWInfo (ID, Storyline, PackName, DisplayOrder, LevelName, DownloadDate, PortalTexture, PlayButtonTexture, BannerTexture, levelStoryline) VALUES (4, 4, '',3, 'LN_', '2012-12-24 00:00:00', 'WMW_UI_low_creature_feep.png', 'WMW_UI_low_creature_feep_level_icon_%d.png', 'WMW_UI_low_creature_feep_banner.png', 0);

/* add new LevelPacks into the LevelPackInfo Table*/
INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, Unlocked, TileTexture, LightingColor, CurtainTexture, PackIcon, Storyline, FB_AlbumName) VALUES 
									(-10, 'LP_SWAMPY_LOTW', 1, 'tile_yellow', '188 153 71', 'shower_curtain_01', 'world_select_00', 0, 'Swampy');

INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, Unlocked, TileTexture, LightingColor, CurtainTexture, PackIcon, Storyline, FB_AlbumName) VALUES 
									(-11, 'LP_CRANKY_LOTW', 1, 'cranky_bricks_purple', '255 255 255', 'shower_curtain_01', 'world_select_cranky_00', 1, 'Cranky 01 - Crankys First Course');

INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, Unlocked, TileTexture, LightingColor, CurtainTexture, PackIcon, Storyline, FB_AlbumName) VALUES 
									(-12, 'LP_MYSTERY_LOTW', 1, 'MD_brick_tile', '255 255 255', 'shower_curtain_01', 'world_select_00', 3, '');


/* add LOW levels for week 1*/

/* add LOW levels for week 1*/
INSERT OR IGNORE INTO LevelInfo (Name, FileName, PackName, Unlocked, ParTime) VALUES ('LN_STRAIGHT_SHOT', '/Levels/LOW_Cranky', 'LP_CRANKY_LOTW', 1, 43);
UPDATE LOWInfo SET LevelName= 'LN_STRAIGHT_SHOT', DownloadDate= '2012-11-22 00:00:00', levelStoryline= 1 WHERE Storyline= 1;

UPDATE LOWInfo SET LevelName= 'LN_SPLIT_ENDS', DownloadDate= '2012-11-17 00:00:00', levelStoryline= 1, PackName= 'LP_CRANKY_ONE' WHERE Storyline= 4;

INSERT OR IGNORE INTO LevelInfo (Name, FileName, PackName, Unlocked, ParTime) VALUES ('LN_SWEAT_STUFF', '/Levels/LOW_Mystery', 'LP_MYSTERY_LOTW', 1, 50);
UPDATE LOWInfo SET LevelName= 'LN_SWEAT_STUFF', DownloadDate= '2012-11-20 00:00:00', levelStoryline= 3 WHERE Storyline= 3;

INSERT OR IGNORE INTO LevelInfo (Name, FileName, PackName, Unlocked, ParTime) VALUES ('LN_SWEAT_STUFF', '/Levels/LOW_Swampy', 'LP_SWAMPY_LOTW', 1, 50);
UPDATE LOWInfo SET LevelName= 'LN_SWEAT_STUFF', DownloadDate= '2012-11-17 00:00:00', levelStoryline= 0 WHERE Storyline= 0;

/* add new field for NewHubViewed to PlayerData */
INSERT OR IGNORE INTO PlayerData (ID, EventName, EventValue) VALUES (31, 'NewHubViewed', 0);

/* change default value of show in ADSettings table to false */
UPDATE ADSettings SET Show= 0;

/* Last but not least, update the database version number */
UPDATE Settings SET Value=17 WHERE Name='DatabaseVersion';
