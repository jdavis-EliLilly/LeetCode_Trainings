# Write your MySQL query statement below
SELECT
player_id,
MIN(event_date) as first_login
from Activity
group by player_id

--Runtime: 539 ms, faster than 60.73% of MySQL online submissions for Game Play Analysis I.
--Memory Usage: 0B, less than 100.00% of MySQL online submissions for Game Play Analysis I.
