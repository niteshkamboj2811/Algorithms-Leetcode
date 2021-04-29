# SELECT seat_id 
# FROM
# (SELECT CASE
#  WHEN free = 1 AND (LEAD(free, 1) OVER (ORDER BY seat_id) = 1 OR
#  LAG(free, 1) OVER (ORDER BY seat_id) = 1) THEN seat_id
#  END AS seat_id
# FROM cinema) AS t
# WHERE seat_id IS NOT NULL;

# This is a table of all the seats that are available
with t1 as (select seat_id from cinema where free = 1)

# Among all the available seats, which ones have either the next seat available, or the previous seat available?
# This will cover all the seats which the question is asking for.
select seat_id
from t1
where seat_id + 1 in (select * from t1) or seat_id - 1 in (select * from t1);