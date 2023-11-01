--- C:\Users\drew\Downloads\champion_info_2.json ---Link to JSON file

DECLARE @JSON_TABLE VARCHAR(MAX)

SELECT @JSON_TABLE = BulkColumn
FROM OPENROWSET(BULK 'C:\Users\drew\Downloads\champion_info_2.json', SINGLE_CLOB) T

SELECT
x.[key] AS name_key
,JSON_VALUE(x.[value],'$.title') AS title
,JSON_VALUE(x.[value],'$.id') AS id
,JSON_VALUE(x.[value],'$.name') AS name

--- INTO LeagueData.dbo.champ_data

FROM OPENJSON(@JSON_TABLE)
	WITH(
		data	NVARCHAR(MAX) AS JSON
	) AS parent_group

CROSS APPLY OPENJSON(parent_group.data)
	WITH(
		title	VARCHAR(50)
        ,id		INT
		,name	VARCHAR(50)
	) AS Table_data
CROSS APPLY OPENJSON(parent_group.data) x
