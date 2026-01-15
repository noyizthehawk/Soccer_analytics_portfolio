WITH league_points AS (
    SELECT 
        competition_id,
        club_id,
        club_name,
        SUM(points) AS total_points
    FROM (
        -- Home matches
        SELECT
            competition_id,
            home_club_id AS club_id,
            home_club_name AS club_name,
            CASE
                WHEN SUBSTRING_INDEX(aggregate, ':', 1) + 0 > SUBSTRING_INDEX(aggregate, ':', -1) + 0 THEN 3
                WHEN SUBSTRING_INDEX(aggregate, ':', 1) + 0 = SUBSTRING_INDEX(aggregate, ':', -1) + 0 THEN 1
                ELSE 0
            END AS points
        FROM SOCCER_DB.games
        WHERE competition_id IN ('GB1','ES1','FR1','IT1','L1')
          AND season BETWEEN 2014 AND 2024
          AND aggregate REGEXP '^[0-9]+:[0-9]+$'

        UNION ALL

        -- Away matches
        SELECT
            competition_id,
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
    ) all_points
    GROUP BY competition_id, club_id, club_name
),
league_points_totals AS (
    SELECT 
        competition_id AS league_id,
        SUM(total_points) AS league_total_points
    FROM league_points
    GROUP BY competition_id
),
club_transfers AS (
    SELECT
        t.to_club_id,
        (SELECT c.domestic_competition_id
         FROM SOCCER_DB.clubs c
         WHERE c.club_id = t.to_club_id
           AND c.last_season = 2024
         LIMIT 1) AS league_id,
        SUM(t.transfer_fee) AS total_transfer_fee
    FROM SOCCER_DB.transfers t
    WHERE t.to_club_id IN (
        SELECT club_id
        FROM SOCCER_DB.clubs
        WHERE domestic_competition_id IN ('GB1','ES1','IT1','L1','FR1')
          AND last_season = 2024
    )
    AND STR_TO_DATE(t.transfer_date, '%Y-%m-%d') >= '2014-01-01'
    GROUP BY t.to_club_id
),
league_transfer_totals AS (
    SELECT 
        league_id,
        SUM(total_transfer_fee) AS league_total_transfers
    FROM club_transfers
    WHERE league_id IS NOT NULL
    GROUP BY league_id
)
SELECT 
    lpt.league_id,
    lpt.league_total_points,
    ltt.league_total_transfers,
    ROUND(ltt.league_total_transfers / lpt.league_total_points, 2) AS euros_per_point
FROM league_points_totals lpt
LEFT JOIN league_transfer_totals ltt 
    ON lpt.league_id = ltt.league_id
ORDER BY lpt.league_id;