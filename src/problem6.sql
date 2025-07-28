-- Problem 6: Retrieve Employees with Salary > $50,000
-- Author: Kavin

-- Main Query


SELECT
    name,
    position
FROM
    employees
WHERE
    salary > 50000;


-- Bonus Query


SELECT
    name,
    position,
    salary
FROM
    employees
ORDER BY
    salary DESC
LIMIT 3;
