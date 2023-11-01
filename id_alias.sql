SELECT
/*---General Game Info---*/
	 g.gameId
	,g.creationTime
	,g.gameDuration
	,g.seasonId
	,g.winner
	,g.firstBlood
	,g.firstTower
	,g.firstInhibitor
	,g.firstBaron
	,g.firstDragon
	,g.firstRiftHerald
/*-----------------------*/

/*---Blue Team General Info---*/
	,g.t1_towerKills		AS blue_towerKills
	,g.t1_inhibitorKills	AS blue_inhibitorKills
	,g.t1_baronKills		AS blue_baronKills
	,g.t1_dragonKills		AS blue_dragonKills
	,g.t1_riftHeraldKills	AS blue_riftHeraldKills
/*---Blue Team Picked Champ Names---*/
	,c1.name  AS blue_champ1_name
	,c2.name  AS blue_champ2_name
	,c3.name  AS blue_champ3_name
	,c4.name  AS blue_champ4_name
	,c5.name  AS blue_champ5_name
/*---Blue Team Banned Champ Names---*/
	,c11.name AS blue_ban1_name
	,c12.name AS blue_ban2_name
	,c13.name AS blue_ban3_name
	,c14.name AS blue_ban4_name
	,c15.name AS blue_ban5_name
/*---Blue Team Summoner Spells---*/
	,s1.name   AS blue_champ1_sum_name1
	,s2.name   AS blue_champ2_sum_name1
	,s3.name   AS blue_champ3_sum_name1
	,s4.name   AS blue_champ4_sum_name1
	,s5.name   AS blue_champ5_sum_name1
	,s6.name   AS blue_champ1_sum_name2
	,s7.name   AS blue_champ2_sum_name2
	,s8.name   AS blue_champ3_sum_name2
	,s9.name   AS blue_champ4_sum_name2
	,s10.name  AS blue_champ5_sum_name2
/*-----------------------*/

/*---Red Team General Info---*/
	,g.t2_towerKills		AS red_towerKills
	,g.t2_inhibitorKills	AS red_inhibitorKills
	,g.t2_baronKills		AS red_baronKills
	,g.t2_dragonKills		AS red_dragonKills
	,g.t2_riftHeraldKills	AS red_riftHeraldKills
/*---Red Team Picked Champ Names---*/
	,c6.name  AS red_champ1_name
	,c7.name  AS red_champ2_name
	,c8.name  AS red_champ3_name
	,c9.name  AS red_champ4_name
	,c10.name AS red_champ5_name
/*---Red Team Banned Champ Names---*/
	,c16.name AS red_ban1_name
	,c17.name AS red_ban2_name
	,c18.name AS red_ban3_name
	,c19.name AS red_ban4_name
	,c20.name AS red_ban5_name
/*---Red Team Summoner Spells---*/
	,s11.name  AS red_champ1_sum_name1
	,s12.name  AS red_champ2_sum_name1
	,s13.name  AS red_champ3_sum_name1
	,s14.name  AS red_champ4_sum_name1
	,s15.name  AS red_champ5_sum_name1
	,s16.name  AS red_champ1_sum_name2
	,s17.name  AS red_champ2_sum_name2
	,s18.name  AS red_champ3_sum_name2
	,s19.name  AS red_champ4_sum_name2
	,s20.name  AS red_champ5_sum_name2
/*-----------------------*/

/*-----------------------*/
INTO LeagueData.dbo.gamesaliased_data
/*-----------------------*/

/*-----------------------*/
FROM games g
/*-----------------------*/


/*---Blue Team Picked Champ Names---*/
JOIN champ_data c1  ON g.t1_champ1id = c1.id
JOIN champ_data c2  ON g.t1_champ2id = c2.id
JOIN champ_data c3  ON g.t1_champ3id = c3.id
JOIN champ_data c4  ON g.t1_champ4id = c4.id
JOIN champ_data c5  ON g.t1_champ5id = c5.id
/*---Blue Team Banned Champ Names---*/
JOIN champ_data c11 ON g.t1_ban1 = c11.id
JOIN champ_data c12 ON g.t1_ban2 = c12.id
JOIN champ_data c13 ON g.t1_ban3 = c13.id
JOIN champ_data c14 ON g.t1_ban4 = c14.id
JOIN champ_data c15 ON g.t1_ban5 = c15.id
/*---Blue Team Summoner Spell Names---*/
JOIN summonerspell_data s1  ON g.t1_champ1_sum1 = s1.id
JOIN summonerspell_data s2  ON g.t1_champ2_sum1 = s2.id
JOIN summonerspell_data s3  ON g.t1_champ3_sum1 = s3.id
JOIN summonerspell_data s4  ON g.t1_champ4_sum1 = s4.id
JOIN summonerspell_data s5  ON g.t1_champ5_sum1 = s5.id
JOIN summonerspell_data s6  ON g.t1_champ1_sum2 = s6.id
JOIN summonerspell_data s7  ON g.t1_champ2_sum2 = s7.id
JOIN summonerspell_data s8  ON g.t1_champ3_sum2 = s8.id
JOIN summonerspell_data s9  ON g.t1_champ4_sum2 = s9.id
JOIN summonerspell_data s10 ON g.t1_champ5_sum2 = s10.id
/*-----------------------*/

/*---Red Team Picked Champ Names---*/
JOIN champ_data c6  ON g.t2_champ1id = c6.id
JOIN champ_data c7  ON g.t2_champ2id = c7.id
JOIN champ_data c8  ON g.t2_champ3id = c8.id
JOIN champ_data c9  ON g.t2_champ4id = c9.id
JOIN champ_data c10 ON g.t2_champ5id = c10.id
/*---Red Team Banned Champ Names---*/
JOIN champ_data c16 ON g.t2_ban1 = c16.id
JOIN champ_data c17 ON g.t2_ban2 = c17.id
JOIN champ_data c18 ON g.t2_ban3 = c18.id
JOIN champ_data c19 ON g.t2_ban4 = c19.id
JOIN champ_data c20 ON g.t2_ban5 = c20.id
/*---Red Team Summoner Spell Names---*/
JOIN summonerspell_data s11  ON g.t2_champ1_sum1 = s11.id
JOIN summonerspell_data s12  ON g.t2_champ2_sum1 = s12.id
JOIN summonerspell_data s13  ON g.t2_champ3_sum1 = s13.id
JOIN summonerspell_data s14  ON g.t2_champ4_sum1 = s14.id
JOIN summonerspell_data s15  ON g.t2_champ5_sum1 = s15.id
JOIN summonerspell_data s16  ON g.t2_champ1_sum2 = s16.id
JOIN summonerspell_data s17  ON g.t2_champ2_sum2 = s17.id
JOIN summonerspell_data s18  ON g.t2_champ3_sum2 = s18.id
JOIN summonerspell_data s19  ON g.t2_champ4_sum2 = s19.id
JOIN summonerspell_data s20  ON g.t2_champ5_sum2 = s20.id
/*-----------------------*/

