SELECT
    c.name AS CustomerName,
    SUM(OI.quantity * OI.unit_price) AS TotalPurchaseAmount
FROM customer c
JOIN orders o ON c.id = o.customer_id
JOIN order_items OI ON o.orderitem_id = OI.id
GROUP BY c.name
ORDER BY TotalPurchaseAmount DESC
LIMIT 5;
