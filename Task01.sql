SELECT 
a.id AS CustomerID, 
a.name AS CustomerName, 
a.email AS Email, 
a.location AS Location, 
COUNT(b.order_id) AS TotalOrders 
FROM customer a 
LEFT JOIN orders b ON a.id = b.customer_id 
GROUP BY a.id, a.name, a.email, a.location 
ORDER BY TotalOrders DESC;