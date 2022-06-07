--# Write your MySQL query statement below
--#Filtering for people from main table which is to be used multiple times for self join
with stadiumt as (
select * from stadium
where people >=100
)


--#For beginning row of the consecutive numbers check prev, next and next to next value
--#For middle row, check prev and next value
--#For last row, check prev, prev to prev value next being null

select s1.id ,s1.visit_date,s1.people as people
FROM stadiumt s1
left outer JOIN stadiumt s2 on s1.id = s2.id + 1
left outer JOIN stadiumt s3 on s1.id = s3.id-1
left outer join stadiumt s4 on s1.id = s4.id +2
left outer join stadiumt s5 on s1.id = s5.id -2
WHERE
(s2.id is null and s3.id-s1.id=1 and s5.id-s1.id=2) or #beginning row condition
(s1.id-s2.id=1 and s3.id-s1.id = 1) or #middle row condition
(s3.id is null and s1.id-s2.id = 1 and s1.id-s4.id = 2) #last row condition

--Runtime: 281 ms, faster than 94.06% of MySQL online submissions for Human Traffic of Stadium.
--Memory Usage: 0B, less than 100.00% of MySQL online submissions for Human Traffic of Stadium.
