# Write your MySQL query statement below
SELECT u.name AS NAME, SUM(t.amount) AS BALANCE
FROM users AS u, transactions AS t
WHERE u.account = t.account
GROUP BY 1
HAVING SUM(t.amount) > 10000;