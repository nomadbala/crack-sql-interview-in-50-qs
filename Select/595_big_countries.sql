-- 595. Big Countries

-- Table: World

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | name        | varchar |
-- | continent   | varchar |
-- | area        | int     |
-- | population  | int     |
-- | gdp         | bigint  |
-- +-------------+---------+
-- name is the primary key (column with unique values) for this table.
-- Each row of this table gives information about the name of a country, the continent to which it belongs, its area, the population, and its GDP value.


-- A country is big if:

-- * it has an area of at least three million (i.e., 3000000 km2), or
-- * it has a population of at least twenty-five million (i.e., 25000000).
-- Write a solution to find the name, population, and area of the big countries.

-- Return the result table in any order.

-- The result format is in the following example.

SELECT name, population, area
FROM World
WHERE area >= 3000000 OR population >= 25000000

-- Explanation of code:
-- This SQL query selects the name, population, and area columns from the "World" table where the area is greater than or equal to 3,000,000 square kilometers or the population is greater than or equal to 25,000,000.

-- Explanation:
-- SELECT name, population, area:

-- This part of the query specifies that we want to retrieve the name, population, and area columns from the table. The name typically represents the name of the country, population represents the number of people living in that country, and area represents the geographical size of the country in square kilometers.

-- FROM World:

-- This specifies the table from which we are selecting the data. In this case, the table is named World.

-- WHERE area >= 3000000 OR population >= 25000000:

-- The WHERE clause is used to filter the rows in the World table based on certain conditions.

-- area >= 3000000 means we are interested in countries whose geographical area is greater than or equal to 3,000,000 square kilometers.

-- OR is a logical operator that allows for either of the conditions to be true for a row to be included in the result.

-- population >= 25000000 means we are also interested in countries whose population is greater than or equal to 25,000,000 people.

-- Summary:
-- The query retrieves the names, populations, and areas of countries from the World table where the country's area is at least 3,000,000 square kilometers or its population is at least 25,000,000. The result will be a list of countries that satisfy either condition. If a country has either a large area or a large population, or both, it will be included in the result.