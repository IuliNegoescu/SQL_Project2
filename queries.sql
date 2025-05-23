--Afiseaza toate produsele cu stoc care sunt sub 10 bucati--

SELECT Products.Name, Products.Stock_Quantity
FROM Products
WHERE Products.Stock_Quantity < 10;

--Valoare totala a produselor aflate pe stoc--
SELECT SUM(Products.Stock_Quantity * Products.Price)
FROM Products;

--Numarul total de produse (OUT) pentru fiecare produs--

SELECT SUM(Orders_Quantity)
FROM Orders
JOIN Products ON Orders.Product_ID = Products.Product_ID
WHERE Orders.Orders_Type = 'OUT'
GROUP BY Products.Name;

--Afiseaza toate vanzarile totale pe luna--
SELECT strftime('%Y-%m', Orders_Date) AS Month, 
       SUM(Orders_Quantity) AS Total_Sold
FROM Orders
WHERE Orders_Type = 'OUT'
GROUP BY Month;

--Afiseaza produsele care nu au fost vandute--

SELECT Name
FROM Products
WHERE Product_ID NOT IN (
    SELECT DISTINCT Product_ID
    FROM Orders
    WHERE Orders_Type = 'OUT'
);

--Afiseaza toti utilizatorii si rulorile lor--

SELECT Users.Users_Name, Users.Users_Role
FROM Users;

--Afiseaza cat s a aprovizionat in total pentru fiecare produs--

SELECT Products.Name, SUM(Orders.Orders_Quantity)
FROM Products
JOIN Orders ON Products.Product_ID = Orders.Product_ID
WHERE Orders.Orders_Type = 'IN'
GROUP BY Products.Name;

--Lista produselor ordonata dupa profit teoretic(vanzari OUT * pret unitar)

SELECT Products.name, SUM(Orders.Orders_Quantity * Products.Price) AS Estimated_Revenue
FROM Products
JOIN Orders ON Orders.Product_ID = Products.Product_ID
WHERE Orders.Orders_Type = 'OUT'
GROUP BY Products.Name
ORDER BY Estimated_Revenue DESC;