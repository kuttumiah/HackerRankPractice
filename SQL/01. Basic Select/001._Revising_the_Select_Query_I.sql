-- # Problem: https://www.hackerrank.com/challenges/revising-the-select-query/problem
-- # Score: 10


-- MySQL START
SELECT *
FROM CITY
WHERE
    CountryCode = 'USA'
    AND population > 100000;
-- MySQL END
