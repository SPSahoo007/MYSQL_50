# Write your MySQL query statement below
with ids as(
    select requester_id as a, accepter_id as b from RequestAccepted 
    UNION
    select accepter_id as a, requester_id as b from RequestAccepted 
)
select a as id, count(*) as num
from ids
group by a
order by num desc
limit 1