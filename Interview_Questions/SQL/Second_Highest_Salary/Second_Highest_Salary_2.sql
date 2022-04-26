SELECT salary as SecondHighestSalary
FROM
  ( SELECT e.*
         , ROW_NUMBER() OVER(ORDER BY e.salary DESC) AS RowNumber
    FROM Employee e
  ) AS tmp
WHERE RowNumber = 2 ;
