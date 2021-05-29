--https://www.hackerrank.com/challenges/occupations/problem
WITH pivot as (
SELECT 
     CASE WHEN occupation = 'Doctor' THEN name end Doctor,
     CASE WHEN occupation = 'Professor' THEN name end Professor,
     CASE WHEN occupation = 'Singer' THEN name end Singer,
     CASE WHEN occupation = 'Actor' THEN name end Actor,
     rank() over(partition by occupation order by name asc) as _rank
     FROM OCCUPATIONS
)
SELECT 
      min(Doctor), min(Professor), min(Singer), min(Actor)
      FROM pivot
      GROUP BY _rank