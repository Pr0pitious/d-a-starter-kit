-- Total revenue by month
SELECT 
    strftime('%Y-%m', OrderDate) AS Month,
    SUM(Quantity * UnitPrice) AS Revenue
FROM sales_data
GROUP BY Month;

-- Top 5 customers by total orders
SELECT 
    CustomerName,
    COUNT(*) AS Orders
FROM sales_data
GROUP BY CustomerName
ORDER BY Orders DESC
LIMIT 5;
