/*
 * LEVEL INFO
 */
 
/* New Mystery levels!! */
UPDATE LevelInfo SET Name='LN_YELLOW_BRICK_ROAD',  FileName='/Levels/yellow_brick_road',			ParTime=23,		Stars=0,	BestScore=0 WHERE Name='LN_DONT_DILLY_DALLY';

UPDATE LevelInfo SET Name='LN_DIVERT',  FileName='/Levels/divert_FREE',			ParTime=23,		Stars=0,	BestScore=0 WHERE Name='LN_DEEP_DIG';

UPDATE LevelInfo SET Name='LN_FLINGING_HORSESHOES',  FileName='/Levels/flinging_horseshoes_FREE',			ParTime=33,		Stars=0,	BestScore=0 WHERE Name='LN_JUMP_ON_IT';

UPDATE LevelInfo SET Name='LN_BOMB_CHAIN',  FileName='/Levels/bomb_chain_FREE',			ParTime=28,		Stars=0,	BestScore=0 WHERE Name='LN_TAKE_ME_HIGHER';

UPDATE LevelInfo SET Name='LN_TAKE_ME_HIGHER',  FileName='/Levels/can_you_take_me_higher_FREE',			ParTime=43,		Stars=0,	BestScore=0 WHERE Name='LN_ANOTHER_CASTLE';

UPDATE LevelInfo SET Name='LN_MULTITOUCH',  FileName='/Levels/multitouch_FREE',			ParTime=33,		Stars=0,	BestScore=0 WHERE Name='LN_MINE_FIELD';

UPDATE LevelInfo SET Name='LN_REDIRECTION',  FileName='/Levels/redirection',			ParTime=63,		Stars=0,	BestScore=0 WHERE Name='LN_RAT_IN_A_MAZE';

UPDATE LevelInfo SET Name='LN_AROUND_THE_BOMB',  FileName='/Levels/around_the_bomb',			ParTime=32,		Stars=0,	BestScore=0 WHERE Name='LN_CURSE_OF_THE_ALGAE';

UPDATE LevelInfo SET Name='LN_SWITCH_OFF_GRASS',  FileName='/Levels/switch_off_the_grass',			ParTime=34,		Stars=0,	BestScore=0 WHERE Name='LN_INTO_THE_CAVE';

UPDATE LevelInfo SET Name='LN_MOMENTUM_101',  FileName='/Levels/momentum_101_FREE',			ParTime=29,		Stars=0,	BestScore=0 WHERE Name='LN_FROM_ON_HIGH';

/* New Swampy's Picks */
UPDATE LevelInfo SET Name='LN_FIRST_FAN',  FileName='/Levels/first_fan',			ParTime=25,		Stars=0,	BestScore=0 WHERE Name='LN_FIRST_MUD_ALSO';
UPDATE LevelInfo SET Name='LN_OVERLAP',			FileName='/Levels/overlap',		ParTime=40,		Stars=0,	BestScore=0 WHERE Name='LN_DRY_ME';
UPDATE LevelInfo SET Name='LN_ON_AND_OFF',    FileName='/Levels/on_and_off_FREE',			ParTime=35,		Stars=0,	BestScore=0 WHERE Name='LN_SLOW_IT_DOWN';
UPDATE LevelInfo SET Name='LN_VACUUM_TUTORIAL', FileName='/Levels/Vacuum_Tutorial',			ParTime=40,	Stars=0,	BestScore=0 WHERE Name='LN_FILL_THE_COLUMS';
UPDATE LevelInfo SET Name='LN_PULL_UP',	FileName='/Levels/dirty_fan_FREE',		ParTime=40,		Stars=0,	BestScore=0 WHERE Name='LN_SLOOP_DU_JOUR';

/* Unhide Swampy's Picks */
UPDATE LevelPackInfo SET Hidden=0 WHERE PackName='LP_SWAMPY_PICKS';

/*
 * DATABASE/SETTINGS
 */

/* Last but not least, update the database version number */
UPDATE Settings SET Value=7 WHERE Name='DatabaseVersion';
