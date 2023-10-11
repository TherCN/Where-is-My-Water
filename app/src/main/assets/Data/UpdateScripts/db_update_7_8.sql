/*
 * DATABASE/SETTINGS
 */

/* Delete the level packs that shouldnt be there */
DELETE FROM LevelPackInfo WHERE PackName='LP_EIGHT';
DELETE FROM LevelPackInfo WHERE PackName='LP_HEARTS_AND_CRAFTS';

/* Reset AMPS Info */
UPDATE PlayerData SET EventValue=0 WHERE EventName='DateOfNextAMPSCheck';
UPDATE PlayerData SET EventValue=0 WHERE EventName='AMPSDownloadWasInterrupted';

/* Last but not least, update the database version number */
UPDATE Settings SET Value=8 WHERE Name='DatabaseVersion';