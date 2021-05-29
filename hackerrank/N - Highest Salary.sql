
#https://leetcode.com/explore/interview/card/facebook/58/sql/315/

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
            
    SELECT COALESCE(SALARY,NULL) FROM( 
        SELECT 
               DISTINCT
               DENSE_RANK () OVER(ORDER BY SALARY DESC) RNK
              ,SALARY
              FROM EMPLOYEE
         ) T
     WHERE RNK = N
     LIMIT 1
         
      
  );
END