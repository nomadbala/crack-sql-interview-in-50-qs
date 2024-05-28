-- 1148. Article Views I

-- Table: Views

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | article_id    | int     |
-- | author_id     | int     |
-- | viewer_id     | int     |
-- | view_date     | date    |
-- +---------------+---------+
-- There is no primary key (column with unique values) for this table, the table may have duplicate rows.
-- Each row of this table indicates that some viewer viewed an article (written by some author) on some date. 
-- Note that equal author_id and viewer_id indicate the same person.


-- Write a solution to find all the authors that viewed at least one of their own articles.

-- Return the result table sorted by id in ascending order.

-- The result format is in the following example.

SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY author_id ASC

-- Explanation of code:
-- This SQL query selects unique author_id values from the "Views" table where the author_id is equal to the viewer_id, and orders the results in ascending order by author_id.

-- Explanation:
-- SELECT DISTINCT author_id AS id:

-- This part of the query specifies that we want to retrieve unique author_id values from the table. The DISTINCT keyword ensures that duplicate author_id values are removed from the result set. The AS id part is an aliasing operation that renames the author_id column to id in the output.

-- FROM Views:

-- This specifies the table from which we are selecting the data. In this case, the table is named Views.

-- WHERE author_id = viewer_id:

-- The WHERE clause is used to filter the rows in the Views table based on a condition. Here, the condition author_id = viewer_id means we are only interested in rows where the author_id is the same as the viewer_id.

-- ORDER BY author_id ASC:

-- This specifies the ordering of the result set. The ORDER BY clause sorts the results based on the author_id column in ascending order (ASC).

-- Summary:
-- The query retrieves unique author IDs from the Views table where the author has viewed their own content (i.e., the author_id is the same as the viewer_id). The result is a list of such author IDs, sorted in ascending order. The use of DISTINCT ensures that each author_id appears only once in the result.