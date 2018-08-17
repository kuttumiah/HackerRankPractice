-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-19/problem
-- # Score: 30


-- MySQL START
-- p1 at (a, c) and p2 at (b, d),
-- √((a - b)² + (c - d)²)
SELECT ROUND(SQRT(POWER(MIN(LAT_N) - MAX(LAT_N), 2) + POWER(MIN(LONG_W) - MAX(LONG_W), 2)), 4) AS euclidean_distance
FROM STATION;
-- MySQL END
