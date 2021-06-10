


#https://leetcode.com/problems/game-play-analysis-iv/submissions/

select 
    round((count(distinct player_id)/n_distinct_players),2) as fraction
from (
select
     player_id
   , event_date
   , min(event_date)  over(partition by player_id ) min_date
   , lead(event_date) over(partition by player_id order by event_date) - event_date as  diff
   , (select count(distinct player_id) from activity) as n_distinct_players
   from activity
 )t
 where diff = 1 
   and min_date = event_date