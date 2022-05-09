# Write your MySQL query statement below
select email from person p group by email
having count(email) >= 2

--Runtime: 321 ms, faster than 76.31% of MySQL online submissions for Duplicate Emails.
--Memory Usage: 0B, less than 100.00% of MySQL online submissions for Duplicate Emails.
