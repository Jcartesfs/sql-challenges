/*
1) Tables: 
		request_accepted PK => (requester_id ,accepter_id )


2) Conditions :
		
	- It is guaranteed there is only 1 people having the most friends.
    - The friend request could only been accepted once, which mean there is no multiple records with the same requester_id and accepter_id value.

2) Result:

 select   id  , num  

*/

#https://leetcode.com/explore/interview/card/facebook/58/sql/327/
#RECORDAR union vs union all

SELECT 
ID
,SUM(CNT) AS num
from (
SELECT  
    requester_id AS ID, COUNT(1) CNT
    from request_accepted
    GROUP BY 1
UNION ALL
SELECT 
    accepter_id, COUNT(1)
    from request_accepted
    GROUP BY 1
) t
group by 1 
ORDER BY 2 DESC
limit 1