-- Problem 8: Optimize query performance using index
-- Author: Kavin


-- Original query

-- SELECT *
-- FROM employees
-- WHERE department = 'Sales' AND salary > 50000;


-- Proposed Index

CREATE INDEX idx_employees_department_salary
ON employees(department, salary);

-- I select department first because the query filters by department = 'Sales', which is likely to have not many rows match making it an ideal candidate for the first index column.

-- I include salary because adding salary enables the database to quickly filter on both conditions using the index without scanning all rows in the department.

--Composite index helps the query planner seek directly into a narrowed set of rows instead of scanning the entire table.

-- Trade - off - 
-- Indexes consume additional disk space
-- Every INSERT, UPDATE, or DELETE on the employees table must update the index too.
