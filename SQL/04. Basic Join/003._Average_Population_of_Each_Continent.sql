-- # Problem: https://www.hackerrank.com/challenges/average-population-of-each-continent/problem
-- # Score: 10


-- MySQL START
SELECT CO.Continent, FLOOR(AVG(CI.Population)) AS average_population
FROM CITY AS CI, COUNTRY AS CO
WHERE CI.CountryCode = CO.Code
GROUP BY CO.Continent;
-- MySQL END
