# Write your MySQL query statement below
SELECT e.salary 
FROM (
  SELECT t.*,
         ROW_NUMBER() OVER (PARTITION BY t.id
                            ORDER BY t.salary DESC) AS rowid 
  FROM Employee t
) e
WHERE  rowid=1;
