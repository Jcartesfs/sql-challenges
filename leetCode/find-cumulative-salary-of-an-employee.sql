
#https://leetcode.com/problems/find-cumulative-salary-of-an-employee/solution/
SELECT id, month, salary 
FROM (
SELECT 
     id
     ,month
     ,SUM(salary) over(PARTITION BY id ORDER BY month DESC ROWS BETWEEN CURRENT ROW AND  2 FOLLOWING) salary
     ,MAX(month)  over(PARTITION BY id ) as m_exc
     FROM employee

)t
WHERE month <> m_exc
ORDER BY id, month DESC;