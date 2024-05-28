-- 1683. Invalid Tweets

-- Table: Tweets

-- +----------------+---------+
-- | Column Name    | Type    |
-- +----------------+---------+
-- | tweet_id       | int     |
-- | content        | varchar |
-- +----------------+---------+
-- tweet_id is the primary key (column with unique values) for this table.
-- This table contains all the tweets in a social media app.


-- Write a solution to find the IDs of the invalid tweets. The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.

-- Return the result table in any order.

-- The result format is in the following example.

SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15

-- Explanation of code:
-- This SQL query selects the tweet_id from the "Tweets" table where the length of the tweet content is greater than 15 characters.

-- Explanation:
-- SELECT tweet_id:

-- This part of the query specifies that we want to retrieve the tweet_id column from the table. The tweet_id typically serves as a unique identifier for each tweet in the table.

-- FROM Tweets:

-- This specifies the table from which we are selecting the data. In this case, the table is named Tweets.

-- WHERE LENGTH(content) > 15:

-- The WHERE clause is used to filter the rows in the Tweets table based on a condition.

-- LENGTH(content) > 15 means we are interested in tweets where the length of the content column is greater than 15 characters. The LENGTH function calculates the number of characters in the content.
-- Summary:
-- The query retrieves the IDs of tweets from the Tweets table where the content of the tweet is longer than 15 characters. The result will be a list of tweet_ids for tweets that have content exceeding 15 characters in length. If a tweet's content is 15 characters or fewer, it will not be included in the result.