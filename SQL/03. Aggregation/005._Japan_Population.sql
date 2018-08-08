-- # Problem: https://www.hackerrank.com/challenges/japan-population/problem
-- # Score: 10


-- MySQL START
SELECT SUM(Population)
FROM CITY
WHERE COUNTRYCODE='JPN';
-- MySQL END
