# Write your MySQL query statement below
select customer_id,  count(v. visit_id) as count_no_trans 
from 
Visits as v 
left join Transactions as t on v.visit_id = t.visit_id
Where 
transaction_id is null
group by customer_id