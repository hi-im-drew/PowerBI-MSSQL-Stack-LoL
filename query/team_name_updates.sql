UPDATE games
SET firstRiftHerald = 
    (CASE WHEN firstRiftHerald = 1 THEN 'Blue'
          WHEN firstRiftHerald = 2 THEN 'Red'
     END)

