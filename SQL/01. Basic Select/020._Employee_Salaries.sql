-- # Problem: https://www.hackerrank.com/challenges/salary-of-employees/problem
-- # Score: 10


-- MySQL START
SELECT name
  FROM Employee
 WHERE
   salary > 2000 AND
   months < 10
 ORDER BY employee_id;
-- MySQL END
