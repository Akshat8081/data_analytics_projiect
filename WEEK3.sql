-- 1. Display all records

SELECT * FROM SALESDB.PUBLIC.SALES;



-- 2. Display only Product, Quantity and TotalPrice


SELECT Product, Quantity, TotalPrice
FROM SALESDB.PUBLIC.SALES;


-- 3. Orders with Total Price greater than ₹2000

SELECT *
FROM SALESDB.PUBLIC.SALES
WHERE TotalPrice > 2000;


-- 4. Orders paid using Credit Card


SELECT *
FROM SALESDB.PUBLIC.SALES
WHERE PaymentMethod = 'Credit Card';


-- 5. Total Revenue

SELECT SUM(TotalPrice) AS TotalRevenue
FROM SALESDB.PUBLIC.SALES


-- 6. Average Order Value


SELECT AVG(TotalPrice) AS AverageOrderValue
FROM SALESDB.PUBLIC.SALES


-- 7. Total Orders


SELECT COUNT(*) AS TotalOrders
FROM SALESDB.PUBLIC.SALES;

-- 8. Revenue by Product

SELECT Product,
       SUM(TotalPrice) AS Revenue
FROM SALESDB.PUBLIC.SALES
GROUP BY Product
ORDER BY Revenue DESC;


-- 9. Quantity Sold by Product


SELECT Product,
       SUM(Quantity) AS QuantitySold
FROM SALESDB.PUBLIC.SALES
GROUP BY Product
ORDER BY QuantitySold DESC;


-- 10. Revenue by Payment Method

SELECT PaymentMethod,
       SUM(TotalPrice) AS Revenue
FROM SALESDB.PUBLIC.SALES
GROUP BY PaymentMethod
ORDER BY Revenue DESC;


-- 11. Orders by Order Status

SELECT OrderStatus,
       COUNT(*) AS Orders
FROM SALESDB.PUBLIC.SALES
GROUP BY OrderStatus
ORDER BY Orders DESC;


-- 12. Coupon Usage


SELECT CouponCode,
       COUNT(*) AS UsageCount
FROM SALESDB.PUBLIC.SALES
GROUP BY CouponCode
ORDER BY UsageCount DESC;


-- 13. Monthly Orders


SELECT MONTH(OrderDate) AS Month,
       COUNT(*) AS Orders
FROM SALESDB.PUBLIC.SALES
GROUP BY MONTH(OrderDate)
ORDER BY Month;


-- 14. Yearly Orders


SELECT YEAR(OrderDate) AS Year,
       COUNT(*) AS Orders
FROM SALESDB.PUBLIC.SALES
GROUP BY YEAR(OrderDate)
ORDER BY Year;


-- 15. Top 5 Highest Value Orders

SELECT *
FROM SALESDB.PUBLIC.SALES
ORDER BY TotalPrice DESC
LIMIT 5;


-- 16. Average Revenue by Product


SELECT Product,
       AVG(TotalPrice) AS AvgRevenue
FROM SALESDB.PUBLIC.SALES
GROUP BY Product
ORDER BY AvgRevenue DESC;


-- 17. Products with Revenue Greater than ₹180000 (HAVING)


SELECT Product,
       SUM(TotalPrice) AS Revenue
FROM SALESDB.PUBLIC.SALES
GROUP BY Product
HAVING Revenue > 180000;


-- 18. Top Payment Method

SELECT PaymentMethod,
       SUM(TotalPrice) AS Revenue
FROM SALESDB.PUBLIC.SALES
GROUP BY PaymentMethod
ORDER BY Revenue DESC
LIMIT 1;