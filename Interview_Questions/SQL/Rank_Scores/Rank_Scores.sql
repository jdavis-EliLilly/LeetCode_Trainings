--45.6% faster 315ms 
select score, dense_rank() over (order by score desc) 'rank'
from Scores

-- 9.32% 768ms
select score, 
  (select count(distinct b.score) from scores b
  where b.score > a.score)+1 as 'rank'
from scores a
order by score desc
