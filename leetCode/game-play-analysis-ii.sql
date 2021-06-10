#https://leetcode.com/problems/game-play-analysis-ii/

select
    distinct
    player_id
   ,first_value(device_id) over(partition by player_id order by event_date asc) device_id
   from Activity
