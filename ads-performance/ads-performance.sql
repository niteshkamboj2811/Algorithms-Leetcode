# Write your MySQL query statement below
WITH cte AS
(SELECT ad_id, 
COUNT(CASE WHEN action = 'Clicked' THEN 1 ELSE NULL END) AS clicks,
 COUNT(CASE WHEN action = 'Viewed' THEN 1 ELSE NULL END) AS viewes
FROM ads
GROUP BY 1)

SELECT ad_id, COALESCE(ROUND(clicks/(clicks+viewes)*100, 2), 0.00) AS ctr
FROM cte
ORDER BY 2 DESC, 1