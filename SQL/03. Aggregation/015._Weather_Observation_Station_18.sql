-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-18/problem
-- # Score: 25


-- MySQL START
-- p1 at (a, c) and p2 at (b, d),
-- it is |a - b| + |c - d|
SELECT ROUND(ABS(MIN(LAT_N) - MAX(LAT_N)) + ABS(MIN(LONG_W) - MAX(LONG_W)), 4) AS manhattan_distance
FROM STATION;
-- MySQL END
