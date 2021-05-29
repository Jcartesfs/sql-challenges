--https://leetcode.com/explore/interview/card/facebook/58/sql/314/
# Write your MySQL query statement below
SELECT 
      CASE WHEN _rank = 2 then salary else null end AS SecondHighestSalary
      FROM(
SELECT 
      rank() OVER(order by salary desc) _rank
     ,salary  as salary
      FROM Employee
    )t 
     WHERE _rank <=2
     ORDER BY salary asc
     LIMIT 1
;