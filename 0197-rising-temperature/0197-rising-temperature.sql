# Write your MySQL query statement below
select 
    w.id
from 
    Weather as w, Weather as wn 

where 
datediff(w.recordDate, wn.recorddate) = 1 and w.temperature > wn.temperature
group by w.id

