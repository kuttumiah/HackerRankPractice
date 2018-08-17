-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-20/problem
-- # Score: 40


-- MySQL START
SELECT ROUND(AVG(T1.LAT_N), 4) AS median_value
FROM
(
    SELECT st.LAT_N, (@rownum:=@rownum+1) AS row_number
    FROM STATION AS st, (SELECT @rownum:=0) AS r
    ORDER BY LAT_N
) AS T1,
(
    SELECT COUNT(*) AS total_rows
    FROM STATION AS st
) AS T2
WHERE T1.row_number IN (FLOOR((total_rows+1)/2), FLOOR((total_rows+2)/2));
-- MySQL END
