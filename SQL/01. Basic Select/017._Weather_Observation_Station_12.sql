-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-11/problem
-- # Score: 15


-- MySQL START
SELECT DISTINCT CITY
FROM STATION
WHERE
    CITY REGEXP '^[^aeiou].*[^aeiou]$';
-- MySQL END
