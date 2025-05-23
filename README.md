# Inventory Management System – SQL Project

This project simulates a real-world inventory management system using SQL. It is designed to track products, suppliers, incoming stock, sales, and system users. The goal is to showcase database design, relational modeling, and advanced SQL querying skills.



##  Database Schema

### 1. Products
- `Product_ID` (Primary Key)
- `Name`
- `Category`
- `Stock_Quantity`
- `Price`

### 2. Suppliers
- `Suppliers_ID` (Primary Key)
- `Suppliers_Name`
- `Suppliers_Country`
- `Suppliers_Contact`

### 3. Orders
- `Orders_ID` (Primary Key)
- `Product_ID` (Foreign Key → Products)
- `Orders_Quantity`
- `Orders_Type` (`IN` for supply / `OUT` for sales)
- `Orders_Date`

### 4. Users
- `Users_ID` (Primary Key)
- `Users_Name`
- `Users_Role`

---

## Key Features

- Tracks how many products were sold or supplied
- Calculates estimated revenue based on sales
- Shows products that were never sold
- Summarizes stock movements by month
- Detects low-stock or unused inventory

---

## Example Queries

### ✔️ Products that were never sold:
```sql
SELECT Name
FROM Products
WHERE Product_ID NOT IN (
    SELECT DISTINCT Product_ID
    FROM Orders
    WHERE Orders_Type = 'OUT'
);
