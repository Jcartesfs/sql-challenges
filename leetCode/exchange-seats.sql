# Write your MySQL query statement below
#https://leetcode.com/problems/exchange-seats/
SELECT 
     CASE WHEN count(id) over() % 2 !=0 
            AND ID = MAX(ID) over()
            THEN ID
          WHEN id%2 = 0 
          THEN id-1
          ELSE id+1
          END as id
     , student
     FROM seat
     ORDER BY 1 asc