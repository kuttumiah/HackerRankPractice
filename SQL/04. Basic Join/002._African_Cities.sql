-- # Problem: https://www.hackerrank.com/challenges/african-cities/problem
-- # Score: 10


-- MySQL START
SELECT CI.NAME AS african_cities
FROM CITY AS CI, COUNTRY AS CO
WHERE
    CI.CountryCode = CO.Code AND
    CONTINENT = 'Africa';
-- MySQL END
