-- Problem 4: Update Product Price


-- Main Query: Update Price of a Specific Product

-- Example: I set product with ID = 101 to new price 25.99

UPDATE inventories
SET price = 25.99
WHERE product_id = 101;


-- Bonus Query: Increase Price of All Products by 10%


UPDATE inventories
SET price = price * 1.10;
