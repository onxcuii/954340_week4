CREATE VIEW restaurants AS 
SELECT order_id, order_date, table_number, customerName, SUM(quantity*price) AS Total
FROM Orders 
JOIN Orders_details USING (order_id)
JOIN customer USING (customer_id)
JOIN Menu USING (menu_id)
GROUP BY Order_id
ORDER BY table_number ASC;




