/*
 * DATABASE/SETTINGS
 */

/* Remove Target promotion */
UPDATE PlayerData SET EventStringValue='' WHERE EventName='PromotionSuffix';

/* Last but not least, update the database version number */
UPDATE Settings SET Value=5 WHERE Name='DatabaseVersion';