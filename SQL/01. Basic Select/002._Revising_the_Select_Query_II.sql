-- # Problem: https://www.hackerrank.com/challenges/revising-the-select-query-2/problem
-- # Score: 10


-- MySQL START
SELECT name
FROM CITY
WHERE
    CountryCode = 'USA'
    AND population > 120000;
-- MySQL END
