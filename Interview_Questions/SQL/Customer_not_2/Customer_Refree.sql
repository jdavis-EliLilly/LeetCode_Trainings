SELECT name
FROM Customer
WHERE(referee_id!=2 OR referee_id IS NULL);

--Runtime: 578 ms, faster than 27.34% of MySQL online submissions for Find Customer Referee.
--Memory Usage: 0B, less than 100.00% of MySQL online submissions for Find Customer Referee.


Select name
from Customer
Where referee_id != "2" or referee_id is Null

--Runtime: 557 ms, faster than 32.85% of MySQL online submissions for Find Customer Referee.
--Memory Usage: 0B, less than 100.00% of MySQL online submissions for Find Customer Referee.

SELECT name 
FROM Customer
WHERE COALESCE(referee_id, 0) != 2;

--Runtime: 543 ms, faster than 37.24% of MySQL online submissions for Find Customer Referee.
--Memory Usage: 0B, less than 100.00% of MySQL online submissions for Find Customer Referee.
