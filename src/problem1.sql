-- Problem 1: Table Creation 
-- Author: KAvin


-- Drop tables if they exist (for rerun convenience)
DROP TABLE IF EXISTS sales, orders, customers, inventories, employees CASCADE;

-- Table: employees
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    position TEXT NOT NULL,
    department TEXT NOT NULL,
    salary NUMERIC NOT NULL
);

-- Table: customers
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name TEXT NOT NULL,
    city TEXT NOT NULL
);

-- Table: inventories
CREATE TABLE inventories (
    product_id SERIAL PRIMARY KEY,
    product_name TEXT NOT NULL,
    quantity INTEGER NOT NULL,
    price NUMERIC NOT NULL
);

-- Table: orders
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    order_date DATE NOT NULL,
    customer_id INTEGER NOT NULL,
    total_amount NUMERIC NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Table: sales
CREATE TABLE sales (
    order_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    sale_date DATE NOT NULL,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES inventories(product_id)
);


-- Insert Dummy Data


-- Employees
INSERT INTO employees (name, position, department, salary) VALUES
('Alice Tan', 'Manager', 'HR', 7000),
('Bob Lee', 'Engineer', 'IT', 6000),
('Charlie Lim', 'Sales Rep', 'Sales', 4000);

-- Customers
INSERT INTO customers (customer_name, city) VALUES
('Jane Doe', 'Kuala Lumpur'),
('John Smith', 'Penang'),
('Sara Wong', 'Johor Bahru');

-- Inventories
INSERT INTO inventories (product_name, quantity, price) VALUES
('Laptop', 50, 3500),
('Mouse', 150, 25),
('Keyboard', 100, 75);

-- Orders
INSERT INTO orders (order_date, customer_id, total_amount) VALUES
('2025-07-25', 1, 3550),
('2025-07-26', 2, 100),
('2025-07-27', 3, 3625);

-- Sales
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(1, 1, 1, 1, '2025-07-25'),
(1, 1, 2, 2, '2025-07-25'),
(2, 2, 2, 4, '2025-07-26'),
(3, 3, 1, 1, '2025-07-27'),
(3, 3, 3, 1, '2025-07-27');
