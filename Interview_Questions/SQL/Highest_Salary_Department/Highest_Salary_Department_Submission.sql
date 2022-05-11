# Write your MySQL query statement below
Select 
d.name as Department
,e.name as Employee
,e.salary as Salary 
from
Employee e
INNER join Department d 
on e.departmentid=d.id
where e.salary=(select max(salary) from Employee e2 where e.departmentid=e2.departmentid group by departmentid)

--Runtime: 852 ms, faster than 17.41% of MySQL online submissions for Department Highest Salary.
--Memory Usage: 0B, less than 100.00% of MySQL online submissions for Department Highest Salary.
