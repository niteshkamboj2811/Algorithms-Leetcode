# Write your MySQL query statement below
# SELECT CASE
# WHEN duration < 300 THEN '[0-5>' 
# WHEN duration BETWEEN 300 AND 599 THEN '[5-10>'
# WHEN duration BETWEEN 600 AND 899 THEN '[10-15>'
# WHEN duration >= 900 THEN '15 or more'
# END AS BIN, COUNT(1) AS TOTAL
# FROM sessions
# GROUP BY 1;
# Write your MySQL query statement below
SELECT '[0-5>' AS bin,
SUM(CASE WHEN duration/60 < 5 THEN 1 ELSE 0 END) AS total
FROM sessions

UNION ALL

SELECT '[5-10>' AS bin,
SUM(CASE WHEN (duration/60 >= 5 AND duration/60 < 10) THEN 1 ELSE 0 END) AS total
FROM sessions

UNION ALL

SELECT '[10-15>' AS bin,
SUM(CASE WHEN (duration/60 >= 10 AND duration/60 < 15) THEN 1 ELSE 0 END) AS total
FROM sessions

UNION ALL

SELECT '15 or more' AS bin,
SUM(CASE WHEN duration/60 >15 THEN 1 ELSE 0 END) AS total
FROM sessions
