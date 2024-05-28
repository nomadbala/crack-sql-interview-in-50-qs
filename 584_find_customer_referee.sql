-- 584. Find Customer Referee

-- Table: Customer

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | name        | varchar |
-- | referee_id  | int     |
-- +-------------+---------+
-- In SQL, id is the primary key column for this table.
-- Each row of this table indicates the id of a customer, their name, and the id of the customer who referred them.


-- Find the names of the customer that are not referred by the customer with id = 2.

-- Return the result table in any order.

-- The result format is in the following example.

SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL

-- Explanation of code:
-- This SQL query selects the name column from the "Customer" table where the referee_id is either not equal to 2 or is NULL.

-- Explanation:
-- SELECT name:

-- This part of the query specifies that we want to retrieve the name column from the table. The name typically represents the name of the customer.

-- FROM Customer:

-- This specifies the table from which we are selecting the data. In this case, the table is named Customer.

-- WHERE referee_id != 2 OR referee_id IS NULL:

-- The WHERE clause is used to filter the rows in the Customer table based on certain conditions.

-- referee_id != 2 means we are interested in customers whose referee_id is not equal to 2.

-- OR is a logical operator that allows for either of the conditions to be true for a row to be included in the result.

-- referee_id IS NULL means we are also interested in customers whose referee_id is NULL. This accounts for customers who do not have a referee.

-- Summary:
-- The query retrieves the names of customers from the Customer table where the referee_id is either not equal to 2 or is NULL. The result will be a list of customer names that satisfy either condition. If a customer's referee_id is equal to 2, that customer will not be included in the result.