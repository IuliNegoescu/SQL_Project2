INSERT INTO Products(Name, Category, Stock_Quantity, Price)
VALUES
('Laptop Lenovo ThinkPad X1', 'Electronics', 15, 1200.99),
('Monitor Dell UltraSharp 27"', 'Electronics', 30, 449.50),
('Mouse Logitech MX Master 3', 'Accessories', 50, 89.99),
('Tastatură Mechanical RGB', 'Accessories', 40, 75.00),
('Router TP-Link AX6000', 'Networking', 20, 199.99),
('Imprimantă HP LaserJet Pro', 'Office Equipment', 10, 299.00);



    INSERT INTO Suppliers(Suppliers_Name, Suppliers_Country, Suppliers_Contact)
VALUES
('TechSupply Europe', 'Germany', 'contact@techsupply.eu'),
('Global Components Ltd.', 'China', 'sales@gcltd.cn'),
('Digital Office Solutions', 'USA', 'support@dos.com'),
('Nordic IT Providers', 'Sweden', 'info@nordicit.se');


INSERT INTO Orders(Product_ID, Orders_Quantity, Orders_Type, Orders_Date)
VALUES
(1, 5, 'OUT', '2025-05-01'),   -- 5 laptops sell
(2, 10, 'IN', '2025-05-03'),   -- 10 monitors buy
(3, 8, 'OUT', '2025-05-04'),   -- 8 mouses sell
(4, 20, 'IN', '2025-05-06'),   -- 20 keyboards buy
(1, 7, 'IN', '2025-05-08'),    -- 7 laptops buy
(5, 2, 'OUT', '2025-05-10'),   -- 2 routers sells
(6, 4, 'OUT', '2025-05-12');   -- 4 printers sells


INSERT INTO Users(Users_Name, Users_Role)
VALUES
('Andrei Popescu', 'Admin'),
('Ioana Marinescu', 'Inventory Manager'),
('George Ionescu', 'Sales Representative'),
('Raluca Dinu', 'Warehouse Operator'),
('Mihai Pavel', 'Supply Chain Analyst');
