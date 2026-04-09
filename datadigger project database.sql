
-- create database
Drop Database if exists datadigger;
create database datadigger;
use datadigger;

-- Create customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Address VARCHAR(200)
);

-- customers data
INSERT INTO Customers (CustomerID, Name, Email, Address) VALUES
(1, 'Alice', 'alice@mail.com', 'New York'),
(2, 'Bob', 'bob@mail.com', 'California'),
(3, 'Charlie', 'charlie@mail.com', 'Texas'),
(4, 'David', 'david@mail.com', 'Florida'),
(5, 'Eva', 'eva@mail.com', 'Nevada');

-- craete orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2)
);

-- orders data
INSERT INTO Orders (CustomerID, OrderDate, TotalAmount) VALUES
(1, '2025-09-01', 2500),
(2, '2025-09-10', 1500),
(3, '2025-09-15', 3500),
(1, '2025-09-20', 1200),
(4, '2025-10-01', 4000);

-- create products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2),
    Stock INT
);

-- products data
INSERT INTO Products (ProductID, ProductName, Price, Stock) VALUES
(1, 'Laptop', 50000, 10),
(2, 'Mouse', 800, 50),
(3, 'Keyboard', 1500, 30),
(4, 'Monitor', 12000, 20),
(5, 'Headphones', 2000, 25);

-- create orderdetails table
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    SubTotal DECIMAL(10,2)
);

-- orderdetails data
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, SubTotal) VALUES
(1, 1, 1, 50000),
(2, 2, 2, 1600),
(3, 4, 1, 12000),
(4, 3, 1, 1500),
(5, 5, 2, 4000);
