-- # Problem: https://www.hackerrank.com/challenges/japanese-cities-name/problem
-- # Score: 10


-- MySQL START
SELECT NAME
FROM CITY
WHERE
    COUNTRYCODE = 'JPN';
-- MySQL END
