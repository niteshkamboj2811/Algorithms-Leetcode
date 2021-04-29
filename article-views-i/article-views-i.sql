# Write your MySQL query statement below
SELECT author_id AS id
FROM views
WHERE author_id = viewer_id
GROUP BY 1
ORDER BY 1