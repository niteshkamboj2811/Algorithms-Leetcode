# WITH cte AS
# (SELECT p.product_id AS id, CASE
# WHEN EXTRACT(MONTH FROM purchase_date) = EXTRACT(MONTH FROM end_date) THEN units*price
# END AS test, units
# FROM prices AS p, unitssold AS u
# WHERE p.product_id = u.product_id)

# SELECT id AS product_id, ROUND(SUM(test)/SUM(u.units), 2) AS average_price
# FROM cte, prices AS p, unitssold AS u
# WHERE cte.id = p.product_id
# AND p.product_id = u.product_id
# AND test is NOT NULL
# GROUP BY 1

SELECT p.product_id, ROUND(SUM(u.units*p.price)/SUM(u.units), 2) AS average_price
FROM prices AS p, unitssold AS u
WHERE p.product_id = u.product_id
AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY 1