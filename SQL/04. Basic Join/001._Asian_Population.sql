-- # Problem: https://www.hackerrank.com/challenges/asian-population/problem
-- # Score: 10


-- MySQL START
SELECT SUM(CI.POPULATION) AS total_population_in_asian_cities
FROM CITY AS CI, COUNTRY AS CO
WHERE
    CI.COUNTRYCODE = CO.CODE AND
    CO.CONTINENT = 'Asia';
-- MySQL END
