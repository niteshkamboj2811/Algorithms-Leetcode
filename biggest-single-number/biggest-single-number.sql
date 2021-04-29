# Write your MySQL query statement below
# SELECT num
# FROM my_numbers
# GROUP BY 1
# HAVING COUNT(1) = 1
# ORDER BY 1 DESC
# LIMIT 1

SELECT MAX(num) AS num
FROM (SELECT num, COUNT(1) FROM my_numbers 
GROUP BY 1 
HAVING COUNT(1) = 1) AS t

     