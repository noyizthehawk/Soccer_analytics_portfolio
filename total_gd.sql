SELECT
    tg.club_id,
    tg.club_name,
    SUM(tg.goals_scored)    AS total_goals_scored,
    SUM(tg.goals_conceded)  AS total_goals_conceded,
    SUM(tg.goals_scored) - SUM(tg.goals_conceded) AS goal_difference
FROM (
    -- Home team row
    SELECT
        g.home_club_id   AS club_id,
        g.home_club_name AS club_name,
        CAST(SUBSTRING_INDEX(g.aggregate, ':', 1) AS UNSIGNED) AS goals_scored,
        CAST(SUBSTRING_INDEX(g.aggregate, ':', -1) AS UNSIGNED) AS goals_conceded
    FROM SOCCER_DB.games g
    WHERE g.competition_id IN ('GB1','ES1','IT1','L1','FR1')
      AND g.season BETWEEN 2014 AND 2024

    UNION ALL

    -- Away team row
    SELECT
        g.away_club_id,
        g.away_club_name,
        CAST(SUBSTRING_INDEX(g.aggregate, ':', -1) AS UNSIGNED) AS goals_scored,
        CAST(SUBSTRING_INDEX(g.aggregate, ':', 1) AS UNSIGNED)  AS goals_conceded
    FROM SOCCER_DB.games g
    WHERE g.competition_id IN ('GB1','ES1','IT1','L1','FR1')
      AND g.season BETWEEN 2014 AND 2024
) AS tg
WHERE tg.club_id IN (
    SELECT c.club_id
    FROM SOCCER_DB.clubs c
    WHERE c.domestic_competition_id IN ('GB1','ES1','IT1','L1','FR1')
      AND c.last_season = 2024
)
GROUP BY tg.club_id, tg.club_name
ORDER BY goal_difference DESC;