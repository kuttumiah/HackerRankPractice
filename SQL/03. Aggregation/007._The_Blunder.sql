-- # Problem: https://www.hackerrank.com/challenges/the-blunder/problem
-- # Score: 15


-- MySQL START
SELECT CEIL(AVG(Salary) - AVG(REPLACE(Salary, '0', ''))) AS Difference
FROM EMPLOYEES;
-- MySQL END
