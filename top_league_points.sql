SELECT club_id, club_name, SUM(points) AS total_points
FROM (

    SELECT 
        home_club_id AS club_id,
        home_club_name AS club_name,
        CASE
            WHEN SUBSTRING_INDEX(aggregate, ':', 1) + 0 > SUBSTRING_INDEX(aggregate, ':', -1) + 0 THEN 3
            WHEN SUBSTRING_INDEX(aggregate, ':', 1) + 0 = SUBSTRING_INDEX(aggregate, ':', -1) + 0 THEN 1
            ELSE 0
        END AS points
    FROM SOCCER_DB.games g 
    WHERE competition_id IN ('GB1','ES1','FR1','IT1','L1')
      AND season BETWEEN 2014 AND 2024
      AND aggregate REGEXP '^[0-9]+:[0-9]+$'

    UNION ALL

    SELECT 
        away_club_id AS club_id,
        away_club_name AS club_name,
        CASE
            WHEN SUBSTRING_INDEX(aggregate, ':', -1) + 0 > SUBSTRING_INDEX(aggregate, ':', 1) + 0 THEN 3
            WHEN SUBSTRING_INDEX(aggregate, ':', -1) + 0 = SUBSTRING_INDEX(aggregate, ':', 1) + 0 THEN 1
            ELSE 0
        END AS points
    FROM SOCCER_DB.games
    WHERE competition_id IN ('GB1','ES1','FR1','IT1','L1')
      AND season BETWEEN 2014 AND 2024
      AND aggregate REGEXP '^[0-9]+:[0-9]+$'
) AS all_points
GROUP BY club_id, club_name
ORDER BY total_points DESC;