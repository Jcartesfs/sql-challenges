# Write your MySQL query statement below
# https://leetcode.com/problems/consecutive-numbers/submissions/
SELECT 
     distinct
     num as ConsecutiveNums
     from (
SELECT 
     num
    ,lead(num,1) over(order by id) ld
    ,lead(num,2) over(order by id) ld2
    ,lag (num) over(order by id) lg
     from Logs
    ) t
    where num = ld and num = ld2
