-- Problem 2: Retrieve Orders from 'New York'
-- Author: kavin



-- Main Query 

SELECT
    c.customer_name,
    o.order_date,
    o.total_amount
FROM
    customers c
JOIN
    orders o ON c.customer_id = o.customer_id
WHERE
    c.city = 'New York';


-- Bonus Query With Average per Customer

SELECT
    c.customer_name,
    o.order_date,
    o.total_amount,
    AVG(o.total_amount) OVER (PARTITION BY c.customer_id) AS avg_total_per_customer
FROM
    customers c
JOIN
    orders o ON c.customer_id = o.customer_id
WHERE
    c.city = 'New York';
