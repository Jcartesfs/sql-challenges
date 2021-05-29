/*

- two tables: Students and Grades.
Students contains three columns ID, Name and Marks.
Grades:  three columns: Name, Grade and Mark
*/

#https://www.hackerrank.com/challenges/the-report/problem

select 
    
     case when g.grade between 1 and 7 then NUll else Name end as Name 
    ,grade
    ,marks
     from students s INNER JOIN Grades g
                             ON s.marks between g.min_Mark and g.max_Mark
    order by grade desc, Name asc;
  