# Write your MySQL query statement below
Select 
p.firstName
,p.lastName
,a.city
,a.state
from 
Person p 
left join
Address a on a.personID = p.personID
