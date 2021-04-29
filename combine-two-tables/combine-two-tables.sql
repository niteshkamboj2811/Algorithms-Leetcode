# Write your MySQL query statement below
SELECT p.FirstName, p.LastName, A.City, A.State
FROM person AS p LEFT JOIN address as a
ON p.PersonId = a.PersonId
