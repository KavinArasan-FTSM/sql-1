-- Problem 5: Department Statistics
-- Author: Kavinn

-- Main Query


SELECT
    department,
    AVG(salary) AS avg_salary
FROM
    employees
GROUP BY
    department;

-- Bonus Query


SELECT
    e.department,
    e.salary AS highest_salary,
    e.name AS employee_name
FROM
    employees e
INNER JOIN (
    SELECT
        department,
        MAX(salary) AS max_salary
    FROM
        employees
    GROUP BY
        department
) dmax
ON
    e.department = dmax.department AND
    e.salary = dmax.max_salary;
