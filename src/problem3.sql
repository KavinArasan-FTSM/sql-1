-- Problem 3: Sales Analysis
-- Author: Kavin



-- Main Query: Total and Average Quantity Sold per Order

SELECT
    SUM(s.quantity) AS total_quantity_sold,
    AVG(s.quantity) AS avg_quantity_per_order
FROM
    sales s;


-- Bonus Query: Total and Average Sales Amount per Order

SELECT
    SUM(s.quantity * i.price) AS total_sales_amount,
    AVG(s.quantity * i.price) AS avg_sales_amount_per_order
FROM
    sales s
JOIN
    inventories i ON s.product_id = i.product_id;
