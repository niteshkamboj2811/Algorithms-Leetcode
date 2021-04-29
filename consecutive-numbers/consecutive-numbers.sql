# Write your MySQL query statement below
# SELECT ConsecutiveNums 
# FROM (SELECT CASE
# WHEN num = LEAD(num, 1) OVER (ORDER BY Id) = LEAD(num, 2) OVER (ORDER BY Id) THEN num
# END AS ConsecutiveNums
# FROM logs) AS t
# WHERE ConsecutiveNums iS NOT NULL
# GROUP BY 1;

# SELECT a.num
# FROM logs AS a, logs AS b
# WHERE b.num+1 = a.num
# AND b.num+2 = a.num

with cte as(
select 
    num,
    lead(num, 1) over(order by id) lead1,
    lead(num, 2) over(order by id) lead2
    from logs
)

select distinct num ConsecutiveNums from cte
where num = lead1 and num = lead2 and lead1 = lead2