
#https://leetcode.com/explore/interview/card/facebook/58/sql/326/
SELECT 
     IFNULL( 
         ROUND(
     ( select count(distinct concat(requester_id, accepter_id)) from RequestAccepted) 
    /CASE WHEN     (select count(distinct concat(sender_id, send_to_id)) from FriendRequest ) IS NULL 
           OR      (select count(distinct concat(sender_id, send_to_id)) from FriendRequest ) = 0
          THEN 1 
          ELSE     (select count(distinct concat(sender_id, send_to_id)) from FriendRequest ) 
    END
    ,2)
         ,0.00) AS accept_rate 