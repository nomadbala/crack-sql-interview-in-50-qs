-- 1757. Recyclable and Low Fat Products

-- Table: Products

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | product_id  | int     |
-- | low_fats    | enum    |
-- | recyclable  | enum    |
-- +-------------+---------+
-- product_id is the primary key (column with unique values) for this table.
-- low_fats is an ENUM (category) of type ('Y', 'N') where 'Y' means this product is low fat and 'N' means it is not.
-- recyclable is an ENUM (category) of types ('Y', 'N') where 'Y' means this product is recyclable and 'N' means it is not.


-- Write a solution to find the ids of products that are both low fat and recyclable.

-- Return the result table in any order.

-- The result format is in the following example.

SELECT product_id FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y'

-- Explanation of code: 
-- This SQL query select product_id from the "Product" table where the product have the both low fat content and are recyclable

-- Explanation:
-- SELECT product_id:

-- This part of the query specifies that we want to retrieve the product_id column from the table. The product_id typically serves as a unique identifier for each product in the table.
-- FROM Products:

-- This specifies the table from which we are selecting the data. In this case, the table is named Products.
-- WHERE low_fats = 'Y' AND recyclable = 'Y':

-- The WHERE clause is used to filter the rows in the Products table based on certain conditions.
-- low_fats = 'Y' means we are only interested in products that are marked as low fat. Here, 'Y' indicates that the product is low in fats.
-- AND is a logical operator that ensures both conditions must be true for a row to be included in the result.
-- recyclable = 'Y' means we are only interested in products that are recyclable. Here, 'Y' indicates that the product is recyclable.
-- Summary:
-- The query retrieves the IDs of products that are both low in fats and recyclable from the Products table. The result will be a list of product_ids that satisfy both conditions. If a product is either not low in fats or not recyclable, it will not be included in the result.