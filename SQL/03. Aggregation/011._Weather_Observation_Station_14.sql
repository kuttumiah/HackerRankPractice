-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-14/problem
-- # Score: 10


-- MySQL START
SELECT ROUND(MAX(LAT_N), 4)
FROM STATION
WHERE LAT_N < 137.2345;
-- MySQL END
