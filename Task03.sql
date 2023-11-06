SELECT
    C.name AS CategoryName,
    SUM(OI.quantity * P.unit_price) AS TotalRevenue
FROM categories C
JOIN products P ON C.id = P.id
JOIN order_items OI ON P.id = OI.product_id
GROUP BY C.name
ORDER BY TotalRevenue DESC;