-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-4/problem
-- # Score: 10


-- MySQL START
SELECT COUNT(CITY) - COUNT(DISTINCT CITY)
FROM STATION;
-- MySQL END
