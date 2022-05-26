# Write your MySQL query statement below

WITH cancelled AS (
    SELECT request_at
    FROM Trips t
    JOIN Users client ON t.client_id = client.users_id
    JOIN Users driver ON t.driver_id = driver.users_id
    WHERE client.banned = 'No' AND driver.banned = 'No' AND t.status != 'completed' AND request_at >= '2013-10-01' AND request_at <= '2013-10-03'
), total AS (
    SELECT request_at
    FROM Trips t
    JOIN Users client ON t.client_id = client.users_id
    JOIN Users driver ON t.driver_id = driver.users_id
    WHERE client.banned = 'No' AND driver.banned = 'No' AND request_at >= '2013-10-01' AND request_at <= '2013-10-03'
), cancel_grouped AS (
    SELECT request_at, COUNT(*) AS 'occurrences' FROM cancelled
    GROUP BY request_at
), total_grouped AS (
    SELECT request_at, COUNT(*) AS 'occurrences' FROM total
    GROUP BY request_at
)

SELECT t.request_at AS 'Day', 
    CASE
        WHEN c.occurrences IS NULL THEN 0.00
        ELSE ROUND(c.occurrences / t.occurrences, 2)
    END AS 'Cancellation Rate'
FROM total_grouped t
LEFT JOIN cancel_grouped c ON c.request_at = t.request_at
GROUP BY t.request_at;


--Runtime: 584 ms, faster than 32.84% of MySQL online submissions for Trips and Users.
--Memory Usage: 0B, less than 100.00% of MySQL online submissions for Trips and Users.






--MUCH simpler
select request_at as Day,
round(sum(if(status = 'completed',0,1))/count(id),2) as 'Cancellation Rate'
from trips
where (request_at between '2013-10-01' and '2013-10-03')
and client_id in(select users_id from users where banned = 'No')
and driver_id in(select users_id from users where banned = 'No')
group by request_at

--Runtime: 527 ms, faster than 53.40% of MySQL online submissions for Trips and Users.
--Memory Usage: 0B, less than 100.00% of MySQL online submissions for Trips and Users.
