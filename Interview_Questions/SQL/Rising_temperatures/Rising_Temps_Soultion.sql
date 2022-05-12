select w.id
from Weather w join Weather p  
where w.temperature > p.temperature
and DATEDIFF (w.recordDate, p.recordDate)=1

--Runtime: 512 ms, faster than 42.56% of MySQL online submissions for Rising Temperature.
--Memory Usage: 0B, less than 100.00% of MySQL online submissions for Rising Temperature.
