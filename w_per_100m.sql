SELECT 
    m.club_id,
    m.club_name,
    m.total_market_value,
    w.total_wins,
    w.total_wins / (m.total_market_value / 100000000) AS wins_per_100M_eur
FROM (
    -- Market value per club
    SELECT 
        current_club_id AS club_id,
        current_club_name AS club_name,
        SUM(market_value_in_eur) AS total_market_value
    FROM (
        SELECT DISTINCT player_id, current_club_id, current_club_name, market_value_in_eur
        FROM SOCCER_DB.players
        WHERE last_season = 2024
          AND current_club_id IN (
              SELECT club_id
              FROM SOCCER_DB.clubs
              WHERE domestic_competition_id IN ('GB1','ES1','IT1','L1','FR1')
                AND last_season = 2024
          )
    ) AS unique_players
    GROUP BY current_club_id, current_club_name
) AS m
JOIN (
    -- Wins per club
    SELECT 
        tg.club_id,
        tg.club_name,
        SUM(
            CASE 
                WHEN CAST(SUBSTRING_INDEX(tg.aggregate, ':', 1) AS UNSIGNED) >
                     CAST(SUBSTRING_INDEX(tg.aggregate, ':', -1) AS UNSIGNED) 
                     AND tg.home_away = 'home' THEN 1
                WHEN CAST(SUBSTRING_INDEX(tg.aggregate, ':', -1) AS UNSIGNED) >
                     CAST(SUBSTRING_INDEX(tg.aggregate, ':', 1) AS UNSIGNED) 
                     AND tg.home_away = 'away' THEN 1
                ELSE 0
            END
        ) AS total_wins
    FROM (
        SELECT home_club_id AS club_id, home_club_name AS club_name, aggregate, 'home' AS home_away
        FROM SOCCER_DB.games
        WHERE competition_id IN ('GB1','ES1','IT1','L1','FR1') AND season BETWEEN 2014 AND 2024
        UNION ALL
        SELECT away_club_id, away_club_name, aggregate, 'away'
        FROM SOCCER_DB.games
        WHERE competition_id IN ('GB1','ES1','IT1','L1','FR1') AND season BETWEEN 2014 AND 2024
    ) AS tg
    GROUP BY tg.club_id, tg.club_name
) AS w
ON m.club_id = w.club_id
ORDER BY wins_per_100M_eur DESC;