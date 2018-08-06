-- # Problem: https://www.hackerrank.com/challenges/what-type-of-triangle/problem
-- # Score: 20


-- MySQL START
SELECT
  CASE
    WHEN A+B > C AND B+C > A AND C+A > B THEN
      CASE
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN A = B OR B = C OR C = A THEN 'Isosceles'
        ELSE 'Scalene'
      END
    ELSE 'Not A Triangle'
  END
FROM TRIANGLES;
-- MySQL END
