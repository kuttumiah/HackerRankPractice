-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-13/problem
-- # Score: 10


-- MySQL START
SELECT ROUND(SUM(LAT_N), 4)
FROM STATION
WHERE LAT_N > 38.7880 AND LAT_N < 137.2345;
-- MySQL END
