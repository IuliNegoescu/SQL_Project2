DROP TABLE IF EXISTS Products;

CREATE TABLE Products
(
    Product_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT,
    Category TEXT,
    Stock_Quantity INTEGER,
    Price REAL
);

DROP TABLE IF EXISTS Suppliers;

CREATE TABLE Suppliers
(
    Suppliers_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Suppliers_Name TEXT,
    Suppliers_Country TEXT,
    Suppliers_Contact TEXT
);

DROP TABLE IF EXISTS Orders;

CREATE  TABLE Orders
(
    Orders_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Product_ID INTEGER,
    Orders_Quantity INTEGER,
    Orders_Type TEXT,
    FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID),
    Orders_Date DATE
);

DROP TABLE IF EXISTS Users;

CREATE TABLE Users
(
    Users_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Users_Name TEXT,
    Users_Role TEXT  
);
