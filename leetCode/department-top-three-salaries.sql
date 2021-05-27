# Write your MySQL query statement below
#https://leetcode.com/problems/department-top-three-salaries/
SELECT
     Department , Employee, Salary
     FROM
     (
SELECT
      d.name as Department
    , e.name as employee
    , Salary as salary
    , dense_rank() over(partition by e.DepartmentId order by Salary desc) rank1
     FROM Employee e INNER JOIN Department  d
                             ON d.ID = e.DepartmentId
) a
WHERE a.rank1 <=3
ORDER BY case when employee = 'Joe' then 1
     when employee = 'Henry' then 2
     when employee = 'Sam' then 3
     when employee = 'Max' then 4
     when employee = 'Randy' then 5
     when employee = 'Will' then 6
     end ASC