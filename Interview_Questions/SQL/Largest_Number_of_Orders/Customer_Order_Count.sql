select t.customer_number from 
(select customer_number,count(customer_number) from orders group by 1 order by 2 desc limit 1) t ;

--Runtime: 617 ms, faster than 17.24% of MySQL online submissions for Customer Placing the Largest Number of Orders.
--Memory Usage: 0B, less than 100.00% of MySQL online submissions for Customer Placing the Largest Number of Orders.


SELECT customer_number FROM Orders GROUP BY customer_number ORDER BY COUNT(customer_number) DESC LIMIT 1;
--Runtime: 492 ms, faster than 48.76% of MySQL online submissions for Customer Placing the Largest Number of Orders.
--Memory Usage: 0B, less than 100.00% of MySQL online submissions for Customer Placing the Largest Number of Orders.
