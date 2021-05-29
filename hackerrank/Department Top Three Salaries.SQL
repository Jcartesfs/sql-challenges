#https://leetcode.com/explore/interview/card/facebook/58/sql/317/
# Write your MySQL query statement below
SELECT Department
    ,Employee 
    ,SALARY 
FROM (
SELECT 
     D.Name   AS  Department
    ,E.NAME   AS Employee
    ,SALARY   AS SALARY
    ,DENSE_RANK() OVER(PARTITION BY D.Name   ORDER BY SALARY DESC ) RNK
     FROM EMPLOYEE E INNER JOIN DEPARTMENT D
                           ON E.DepartmentId  = D.ID
) T
WHERE T.RNK <=3
ORDER BY 1,2,3 DESC