--Write your MySQL query statement below
Select 
e.salary as SecondHighestSalary
from
employee e
--ORDER BY e.salary desc limit n-1,1
ORDER BY e.salary desc limit 1,1

--working Solution
select(
    select 
        salary 
    from 
        employee 
    group by 
        salary
    order by
        salary
    desc 
    limit 1,1
)as SecondHighestSalary
