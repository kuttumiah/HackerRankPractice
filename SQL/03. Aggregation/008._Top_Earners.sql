-- # Problem: https://www.hackerrank.com/challenges/earnings-of-employees/problem
-- # Score: 20


-- MySQL START
SELECT salary*months AS earning, COUNT(*) AS number_of_employee
FROM Employee
GROUP BY earning DESC
LIMIT 1;
-- MySQL END
