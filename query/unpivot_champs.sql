
/* first select indicates header names */
SELECT 
 gameId						AS gameId
,'Blue'						AS teamName
,blue_champ1_name			AS champName
,winner						AS winner
,gameDuration				AS gameDuration
,blue_ban1_name				AS champBan
,blue_champ1_sum_name1		AS sumD
,blue_champ1_sum_name2		AS sumF
FROM games_data_aliased

	UNION ALL
SELECT gameid, 'Blue', blue_champ2_name, winner, gameDuration, blue_ban2_name, blue_champ2_sum_name1, blue_champ2_sum_name2 FROM games_data_aliased
	UNION ALL
SELECT gameid, 'Blue', blue_champ3_name, winner, gameDuration, blue_ban3_name, blue_champ3_sum_name1, blue_champ3_sum_name2 FROM games_data_aliased
	UNION ALL
SELECT gameid, 'Blue', blue_champ4_name, winner, gameDuration, blue_ban4_name, blue_champ4_sum_name1, blue_champ4_sum_name2 FROM games_data_aliased
	UNION ALL
SELECT gameid, 'Blue', blue_champ5_name, winner, gameDuration, blue_ban5_name, blue_champ5_sum_name1, blue_champ5_sum_name2 FROM games_data_aliased
	UNION ALL
SELECT gameid, 'Red', red_champ1_name, winner, gameDuration, red_ban1_name, red_champ1_sum_name1, red_champ1_sum_name2 FROM games_data_aliased
	UNION ALL
SELECT gameid, 'Red', red_champ2_name, winner, gameDuration, red_ban2_name, red_champ2_sum_name1, red_champ2_sum_name2 FROM games_data_aliased
	UNION ALL
SELECT gameid, 'Red', red_champ3_name, winner, gameDuration, red_ban3_name, red_champ3_sum_name1, red_champ3_sum_name2 FROM games_data_aliased
	UNION ALL
SELECT gameid, 'Red', red_champ4_name, winner, gameDuration, red_ban4_name, red_champ4_sum_name1, red_champ4_sum_name2 FROM games_data_aliased
	UNION ALL
SELECT gameid, 'Red', red_champ5_name, winner, gameDuration, red_ban5_name, red_champ5_sum_name1, red_champ5_sum_name2 FROM games_data_aliased



-----------------------------------------------
/* Below is syntax to select above into table*/
-----------------------------------------------
SELECT x.* 
INTO LeagueData.dbo.champ_unpivot
  FROM (
	SELECT 
 gameId						AS gameId
,'Blue'						AS teamName
,blue_champ1_name			AS champName
,winner						AS winner
,gameDuration				AS gameDuration
,blue_ban1_name				AS champBan
,blue_champ1_sum_name1		AS sumD
,blue_champ1_sum_name2		AS sumF
FROM games_data_aliased

	UNION ALL
SELECT gameid, 'Blue', blue_champ2_name, winner, gameDuration, blue_ban2_name, blue_champ2_sum_name1, blue_champ2_sum_name2 FROM games_data_aliased
	UNION ALL
SELECT gameid, 'Blue', blue_champ3_name, winner, gameDuration, blue_ban3_name, blue_champ3_sum_name1, blue_champ3_sum_name2 FROM games_data_aliased
	UNION ALL
SELECT gameid, 'Blue', blue_champ4_name, winner, gameDuration, blue_ban4_name, blue_champ4_sum_name1, blue_champ4_sum_name2 FROM games_data_aliased
	UNION ALL
SELECT gameid, 'Blue', blue_champ5_name, winner, gameDuration, blue_ban5_name, blue_champ5_sum_name1, blue_champ5_sum_name2 FROM games_data_aliased
	UNION ALL
SELECT gameid, 'Red', red_champ1_name, winner, gameDuration, red_ban1_name, red_champ1_sum_name1, red_champ1_sum_name2 FROM games_data_aliased
	UNION ALL
SELECT gameid, 'Red', red_champ2_name, winner, gameDuration, red_ban2_name, red_champ2_sum_name1, red_champ2_sum_name2 FROM games_data_aliased
	UNION ALL
SELECT gameid, 'Red', red_champ3_name, winner, gameDuration, red_ban3_name, red_champ3_sum_name1, red_champ3_sum_name2 FROM games_data_aliased
	UNION ALL
SELECT gameid, 'Red', red_champ4_name, winner, gameDuration, red_ban4_name, red_champ4_sum_name1, red_champ4_sum_name2 FROM games_data_aliased
	UNION ALL
SELECT gameid, 'Red', red_champ5_name, winner, gameDuration, red_ban5_name, red_champ5_sum_name1, red_champ5_sum_name2 FROM games_data_aliased) x