
# Write your MySQL query statement below
SELECT * FROM Cinema WHERE ((id%2 != 0) AND description NOT LIKE '%boring%') ORDER BY rating DESC

--Runtime: 256 ms, faster than 29.76% of MySQL online submissions for Not Boring Movies.
--Memory Usage: 0B, less than 100.00% of MySQL online submissions for Not Boring Movies.


select *
from cinema
where mod(id, 2) = 1 and description != 'boring'
order by rating DESC
;

--Runtime: 327 ms, faster than 12.41% of MySQL online submissions for Not Boring Movies.
--Memory Usage: 0B, less than 100.00% of MySQL online submissions for Not Boring Movies.


select 
    id,
    movie,
    description, 
    rating 
from 
    cinema
where 
    id % 2 != 0 and description <> 'boring' 
order by 
    rating desc 

--Runtime: 262 ms, faster than 27.50% of MySQL online submissions for Not Boring Movies.
--Memory Usage: 0B, less than 100.00% of MySQL online submissions for Not Boring Movies.
