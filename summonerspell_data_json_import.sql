--- C:\Users\drew\Downloads\champion_info_2.json ---Link to JSON file

DECLARE @JSON_TABLE VARCHAR(MAX)

SELECT @JSON_TABLE = BulkColumn
FROM OPENROWSET(BULK 'C:\Users\drew\Downloads\summoner_spell_info.json', SINGLE_CLOB) T

SELECT
x.[key] AS id
,JSON_VALUE(x.[value],'$.summonerLevel') AS summonerLevel
,JSON_VALUE(x.[value],'$.name') AS name
,JSON_VALUE(x.[value],'$.description') AS description

--- INTO LeagueData.dbo.summonerspell_data

FROM OPENJSON(@JSON_TABLE)
	WITH(
		data	NVARCHAR(MAX) AS JSON
	) AS parent_group

CROSS APPLY OPENJSON(parent_group.data)
	WITH(
		id				INT
		,summonerLevel	INT
		,name			VARCHAR(50)
		,description	VARCHAR(100)
	) AS Table_data
CROSS APPLY OPENJSON(parent_group.data) x

