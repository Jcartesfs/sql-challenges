
#https://leetcode.com/problems/department-highest-salary/solution/
select Department, employee, salary from (
SELECT 
     d.name as Department 
    ,e.name as Employee 
    ,e.salary
    ,rank() over(partition by DepartmentId order by e.salary desc) r
    from employee e 
    inner join Department  d
            on e.DepartmentId  = d.id

    )t
    where r = 1
