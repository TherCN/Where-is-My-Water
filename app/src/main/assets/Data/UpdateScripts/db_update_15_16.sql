/* this just copies Name, Filename, Par Time, Is Bonus from existing packs, and changes pack name. */
INSERT OR IGNORE INTO LevelInfo (ID, Name, Filename, ParTime, IsBonus, PackName, Type, Available) SELECT 
								 ID + 4000, Name, Filename, ParTime, IsBonus, 'LP_EIGHT_MYSTERY', 1, 0 FROM LevelInfo WHERE PackName='LP_EIGHT';								 

/* Also unlock the first level from each pack */
UPDATE LevelInfo SET Unlocked=1 WHERE PackName='LP_EIGHT_MYSTERY' AND Filename='/Levels/first_fan';

/* swampy secret level */
INSERT OR IGNORE INTO LevelInfo (ID, Name, FileName, PackName, ParTime, IgnoreInStarCount) VALUES	(1012,	'LN_FIRE_EXTINGUISHER',		'/Levels/fire_extinguisher',	'LP_SECRET', 70, 1);

/* Swampy youtube vidoe */
INSERT OR IGNORE INTO HubInfo (	ID, Storyline, MainTexture, FrameTexture, TextColor,
								TextLine1, TextLine2, TextButton) VALUES
							  (	95, -1, 'WMW_UI_youtube_icon.png', 'WMW_UI_pipeframe.png', '37 108 138',
								'', 'HUB_TEXT_YOUTUBE_TITLE', 'WATCH_SWAMPYSHOW_YOUTUBE' );
                                
/* add 'more coming soon' icon in Cranky storyline */
INSERT OR IGNORE INTO LevelPackInfo (ID, PackName, PackIcon, Unlocked, PackType, Storyline) VALUES 
									(64, 'MORE_COMING_SOON', 'WMW_UI_cranky_morecomingsoon', 1, 1, 1);

/* Last but not least, update the database version number */
UPDATE Settings SET Value=16 WHERE Name='DatabaseVersion';

/* Delete More coming soon from all story lines */
DELETE FROM LevelPackInfo WHERE PackName='MORE_COMING_SOON' AND ID=40;
DELETE FROM LevelPackInfo WHERE PackName='COMING_SOON' AND ID=59;
DELETE FROM LevelPackInfo WHERE PackName='MORE_COMING_SOON' AND ID=64;
