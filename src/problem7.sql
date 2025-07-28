-- Problem 7: Delete a specific customer by customer_id
-- Author: Kavin

-- Main Query


DELETE FROM customers
WHERE customer_id = 101;  -- Replace 101 with the actual customer_id you wanna delete


-- Bonus


-- Step 1: Delete sales records related to customer's orders
DELETE FROM sales
WHERE order_id IN (
    SELECT order_id
    FROM orders
    WHERE customer_id = 101
);

-- Step 2: Delete orders made by the customer
DELETE FROM orders
WHERE customer_id = 101;

-- Step 3: delete the customer
DELETE FROM customers
WHERE customer_id = 101;
