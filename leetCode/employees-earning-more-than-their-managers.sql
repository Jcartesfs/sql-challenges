# Write your MySQL query statement below
#https://leetcode.com/problems/employees-earning-more-than-their-managers/solution/
SELECT
     e1.NAME AS EMPLOYEE
     FROM EMPLOYEE e1 INNER JOIN Employee e2
                              on e1.managerid = e2.id
     WHERE e1.salary > e2.salary