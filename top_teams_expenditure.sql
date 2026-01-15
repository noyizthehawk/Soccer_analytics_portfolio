SELECT 
    t.to_club_id,
    MAX(t.to_club_name) AS club_name,
    SUM(t.transfer_fee) AS total_transfer_fee
FROM SOCCER_DB.transfers t
WHERE t.to_club_id IN (
    SELECT club_id
    FROM SOCCER_DB.clubs c
    WHERE c.domestic_competition_id IN ('GB1','ES1','IT1','L1','FR1')
      AND c.last_season = 2024
)
AND STR_TO_DATE(t.transfer_date, '%Y-%m-%d') >= '2014-01-01'
GROUP BY t.to_club_id
ORDER BY total_transfer_fee DESC;