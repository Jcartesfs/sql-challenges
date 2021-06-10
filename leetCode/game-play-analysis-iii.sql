
#https://leetcode.com/problems/game-play-analysis-iii/submissions/
SELECT 
     player_id
    ,event_date
    ,SUM(games_played) over(PARTITION BY player_id ORDER BY event_date DESC rows BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING ) AS games_played_so_far
    from activity;