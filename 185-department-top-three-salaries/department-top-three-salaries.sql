# Write your MySQL query statement below
select D.name as Department, E.name as Employee, salary as Salary 
from 
(
    select *, dense_rank() over (partition by departmentId order by salary desc) as ranking from Employee) as E
join Department D
on E.departmentId = D.id
where 
ranking <4