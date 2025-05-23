-- Display all products with stock less than 10 units --

SELECT Products.Name, Products.Stock_Quantity
FROM Products
WHERE Products.Stock_Quantity < 10;

-- Display the total value of products in stock --

SELECT SUM(Products.Stock_Quantity * Products.Price)
FROM Products;

-- Display the total number of products sold (OUT) for each product --

SELECT SUM(Orders_Quantity)
FROM Orders
JOIN Products ON Orders.Product_ID = Products.Product_ID
WHERE Orders.Orders_Type = 'OUT'
GROUP BY Products.Name;

-- Display total monthly sales --

SELECT strftime('%Y-%m', Orders_Date) AS Month, 
       SUM(Orders_Quantity) AS Total_Sold
FROM Orders
WHERE Orders_Type = 'OUT'
GROUP BY Month;

-- Display products that have never been sold --

SELECT Name
FROM Products
WHERE Product_ID NOT IN (
    SELECT DISTINCT Product_ID
    FROM Orders
    WHERE Orders_Type = 'OUT'
);

-- Display all users and their roles --

SELECT Users.Users_Name, Users.Users_Role
FROM Users;

-- Display the total quantity supplied (IN) for each product --

SELECT Products.Name, SUM(Orders.Orders_Quantity)
FROM Products
JOIN Orders ON Products.Product_ID = Orders.Product_ID
WHERE Orders.Orders_Type = 'IN'
GROUP BY Products.Name;

-- List products ordered by theoretical revenue (OUT * unit price) --

SELECT Products.name, SUM(Orders.Orders_Quantity * Products.Price) AS Estimated_Revenue
FROM Products
JOIN Orders ON Orders.Product_ID = Products.Product_ID
WHERE Orders.Orders_Type = 'OUT'
GROUP BY Products.Name
ORDER BY Estimated_Revenue DESC;
