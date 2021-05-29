--https://leetcode.com/explore/interview/card/facebook/58/sql/314/
# Write your MySQL query statement below


/*

Check out diferent cases:

1) Input NULL
2) The Second value is equal to First value (1,100) and (2,100) for example
3) Only ONE row


*/
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