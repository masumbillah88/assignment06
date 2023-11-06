SELECT 
OI.id AS OrderID, 
P.name AS ProductName, 
OI.quantity,
 OI.unit_price, 
 (OI.quantity * OI.unit_price) AS TotalAmount 
 FROM order_items OI 
 JOIN products P ON OI.product_id = P.id 
 ORDER BY OI.id ASC;