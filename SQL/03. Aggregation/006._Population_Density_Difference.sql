-- # Problem: https://www.hackerrank.com/challenges/population-density-difference/problem
-- # Score: 10


-- MySQL START
SELECT MAX(Population) - MIN(Population) AS Difference
FROM CITY;
-- MySQL END
