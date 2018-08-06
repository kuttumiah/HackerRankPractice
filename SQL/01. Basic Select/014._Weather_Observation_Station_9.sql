-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-9/problem
-- # Score: 10


-- MySQL START
SELECT DISTINCT CITY
FROM STATION
WHERE
    CITY REGEXP '^[^aeiou].*';
-- MySQL END
