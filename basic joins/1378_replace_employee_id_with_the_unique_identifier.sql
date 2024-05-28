-- 1378. Replace Employee ID With The Unique Identifier

-- Table: Employees

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | id            | int     |
-- | name          | varchar |
-- +---------------+---------+
-- id is the primary key (column with unique values) for this table.
-- Each row of this table contains the id and the name of an employee in a company.

-- Table: EmployeeUNI

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | id            | int     |
-- | unique_id     | int     |
-- +---------------+---------+
-- (id, unique_id) is the primary key (combination of columns with unique values) for this table.
-- Each row of this table contains the id and the corresponding unique id of an employee in the company.


-- Write a solution to show the unique ID of each user, If a user does not have a unique ID replace just show null.

-- Return the result table in any order.

-- The result format is in the following example.

SELECT EN.unique_id, E.Name
FROM Employees AS E
LEFT JOIN EmployeeUNI AS EN
ON E.id = EN.id

-- Explanation of code:
-- This SQL query selects the unique_id from the EmployeeUNI table and the Name from the Employees table by performing a left join on the id columns of the two tables.

-- Explanation:
-- SELECT EN.unique_id, E.Name:

-- This part of the query specifies that we want to retrieve the unique_id column from the EN alias (which represents the EmployeeUNI table) and the Name column from the E alias (which represents the Employees table).

-- FROM Employees AS E:

-- This specifies the primary table from which we are selecting the data and assigns it an alias E for easier reference in the query. The table is named Employees.

-- LEFT JOIN EmployeeUNI AS EN:

-- This specifies that we are performing a left join between the Employees table (E) and the EmployeeUNI table (EN). A left join returns all rows from the left table (Employees), and the matched rows from the right table (EmployeeUNI). If there is no match, the result is NULL on the side of the right table.

-- ON E.id = EN.id:

-- This specifies the condition for the join, which is that the id column in the Employees table (E) must match the id column in the EmployeeUNI table (EN).

-- Summary:
-- The query retrieves the unique_id from the EmployeeUNI table and the Name from the Employees table for all employees. The left join ensures that all employees from the Employees table are included in the result, even if there is no matching id in the EmployeeUNI table. If an employee in the Employees table does not have a corresponding entry in the EmployeeUNI table, the unique_id will be NULL for that employee in the result.