-- # Problem: https://www.hackerrank.com/challenges/occupations/problem
-- # Score: 30


-- MySQL START
SET @dRow:=0, @pRow:=0, @sRow:=0, @aRow:=0;
SELECT MIN(Doctor), MIN(Professor), MIN(Singer), MIN(Actor)
FROM (
    SELECT
        CASE Occupation
            WHEN 'Doctor'     THEN (@dRow:=@dRow+1)
            WHEN 'Professor'  THEN (@pRow:=@pRow+1)
            WHEN 'Singer'     THEN (@sRow:=@sRow+1)
            WHEN 'Actor'      THEN (@aRow:=@aRow+1)
        END AS RowNumber,
        IF (Occupation='Doctor', Name, NULL) AS Doctor,
        IF (Occupation='Professor', Name, NULL) AS Professor,
        IF (Occupation='Singer', Name, NULL) AS Singer,
        IF (Occupation='Actor', Name, NULL) AS Actor
    FROM OCCUPATIONS
    ORDER BY Name
    ) Temp
GROUP BY RowNumber;
-- MySQL END
