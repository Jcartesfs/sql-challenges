--https://www.hackerrank.com/challenges/placements/problem
SELECT
     name
     FROM students s     
     INNER JOIN friends f
             ON f.ID = s.ID             
     INNER JOIN packages sal_st
             ON sal_st.ID = s.ID             
     INNER JOIN packages sal_bf
             ON sal_bf.ID = f.friend_ID
             
     WHERE sal_st.salary < sal_bf.salary
     ORDER BY sal_bf.salary