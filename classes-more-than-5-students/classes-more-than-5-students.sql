# Write your MySQL query statement below
SELECT class
FROM courses
GROUP BY 1
HAVING COUNT(DISTINCT student) >= 5