
--offset int 35% faster

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  DECLARE OFFSET_VAR INT DEFAULT N-1;
  RETURN (
      # Write your MySQL query statement below.
      select DISTINCT salary from Employee order by salary DESC limit 1 OFFSET OFFSET_VAR
  );
END

--dense rank solution 28% faster
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
     SELECT distinct salary
     FROM (
         SELECT salary, DENSE_RANK() OVER(ORDER BY salary DESC) as rn
         FROM Employee
     ) as sub_select
     WHERE rn = N
  );
END


