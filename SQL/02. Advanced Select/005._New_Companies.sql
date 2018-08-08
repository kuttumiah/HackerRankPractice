-- # Problem: https://www.hackerrank.com/challenges/the-company/problem
-- # Score: 30


-- MySQL START
SELECT company_code, founder,
(SELECT COUNT(DISTINCT lead_manager_code) FROM Lead_Manager WHERE company_code=C.company_code) AS number_of_lead_manager,
(SELECT COUNT(DISTINCT senior_manager_code) FROM Senior_Manager WHERE company_code=C.company_code) AS number_of_senior_manager,
(SELECT COUNT(DISTINCT manager_code) FROM Manager WHERE company_code=C.company_code) AS number_of_manager,
(SELECT COUNT(DISTINCT employee_code) FROM Employee WHERE company_code=C.company_code) AS number_of_employee
FROM Company AS C
ORDER BY company_code;
-- MySQL END
