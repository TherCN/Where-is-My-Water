/*
 * IAP INFORMATION
 */
 
/* Drop the old table, and then create the new, improved one */
/*	(the new one has the Internal ID as unique) */
 
DROP TABLE IAPInfo;

CREATE TABLE "IAPInfo" (	"ID" INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL  UNIQUE, 

							"Internal" TEXT  NOT NULL  UNIQUE, 
							
							"iOS" TEXT DEFAULT '', 
							"Google" TEXT DEFAULT '', 
							"Amazon" TEXT DEFAULT '' );
 
 
/* Re-insert IAP info */
INSERT OR IGNORE INTO IAPInfo (Internal, iOS, Google, Amazon) VALUES ('crankypack01',		'disney.wmw.crankypack01.2206506',	'2206519', '2206472');
INSERT OR IGNORE INTO IAPInfo (Internal, iOS, Google, Amazon) VALUES ('locksmith_one',		'disney.wmw.locksmith_one',			'2206619', '2206666');
INSERT OR IGNORE INTO IAPInfo (Internal, iOS, Google, Amazon) VALUES ('locksmith_swampy',	'disney.wmw.locksmith_swampy',		'2206620', '2206667');
INSERT OR IGNORE INTO IAPInfo (Internal, iOS, Google, Amazon) VALUES ('locksmith_cranky',	'disney.wmw.locksmith_cranky',		'2206621', '2206668');
INSERT OR IGNORE INTO IAPInfo (Internal, iOS, Google, Amazon) VALUES ('locksmith_mystery',	'disney.wmw.locksmith_mystery',		'2206624', '2206669');
INSERT OR IGNORE INTO IAPInfo (Internal, iOS, Google, Amazon) VALUES ('mysteryduck01',		'disney.wmw.mysteryduck01',			'2206625', '2206670');






/*
 *	DATABASE/SETTINGS
 */
 
/* Remove "Subtitles" from the Settings table (it was accidentally inserted) */
DELETE FROM Settings WHERE Name='SubtitlesOn';	

/* Last but not least, update the database version number */
UPDATE Settings SET Value=13 WHERE Name='DatabaseVersion';