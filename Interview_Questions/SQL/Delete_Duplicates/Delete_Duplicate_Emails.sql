# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below

Delete pp From Person pp Join Person p
on pp.email = p.email
where pp.id > p.id;

--Runtime: 747 ms, faster than 69.75% of MySQL online submissions for Delete Duplicate Emails.
--Memory Usage: 0B, less than 100.00% of MySQL online submissions for Delete Duplicate Emails.
