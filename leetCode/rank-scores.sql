#https://leetcode.com/problems/rank-scores/submissions/
select score, dense_rank() over(order by score desc) as "Rank" from Scores order by 2 asc;