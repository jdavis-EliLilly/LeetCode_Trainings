# Write your MySQL query statement below
Select 
e.salary as SecondHighestSalary
from
employee e
--ORDER BY e.salary desc limit n-1,1
ORDER BY e.salary desc limit 1,1
