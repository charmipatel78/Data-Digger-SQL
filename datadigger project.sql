
mysql> source C:\Users\CHARMY R PATEL\OneDrive\Documents\sql\projects\datadigger project database.sql
Query OK, 0 rows affected (0.005 sec)

Query OK, 0 rows affected, 1 warning (0.067 sec)

Query OK, 1 row affected (0.118 sec)

Query OK, 0 rows affected (0.005 sec)

Query OK, 0 rows affected (0.002 sec)

Query OK, 0 rows affected (0.415 sec)

Query OK, 0 rows affected (0.008 sec)

Query OK, 5 rows affected (0.093 sec)
Records: 5  Duplicates: 0  Warnings: 0

Query OK, 0 rows affected (0.002 sec)

Query OK, 0 rows affected (0.633 sec)

Query OK, 0 rows affected (0.003 sec)

Query OK, 5 rows affected (0.071 sec)
Records: 5  Duplicates: 0  Warnings: 0

Query OK, 0 rows affected (0.002 sec)

Query OK, 0 rows affected (0.273 sec)

Query OK, 0 rows affected (0.002 sec)

Query OK, 5 rows affected (0.065 sec)
Records: 5  Duplicates: 0  Warnings: 0

Query OK, 0 rows affected (0.002 sec)

Query OK, 0 rows affected (0.713 sec)

Query OK, 0 rows affected (0.004 sec)

Query OK, 5 rows affected (0.068 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| blackwido          |
| comapny_db         |
| company            |
| companydb          |
| datadigger         |
| employeedb         |
| hawkeye            |
| information_schema |
| mysql              |
| performance_schema |
| rnw                |
| sakila             |
| studentsrecord     |
| sys                |
| world              |
+--------------------+
15 rows in set (0.319 sec)

mysql> use datadigger;
Database changed

mysql> show tables;
+----------------------+
| Tables_in_datadigger |
+----------------------+
| customers            |
| orderdetails         |
| orders               |
| products             |
+----------------------+
4 rows in set (0.030 sec)

mysql> select * from customers;
+------------+---------+------------------+------------+
| CustomerID | Name    | Email            | Address    |
+------------+---------+------------------+------------+
|          1 | Alice   | alice@mail.com   | New York   |
|          2 | Bob     | bob@mail.com     | California |
|          3 | Charlie | charlie@mail.com | Texas      |
|          4 | David   | david@mail.com   | Florida    |
|          5 | Eva     | eva@mail.com     | Nevada     |
+------------+---------+------------------+------------+
5 rows in set (0.017 sec)

mysql> update customers set address = 'Los Angeles' where CustomerID = 2;
Query OK, 1 row affected (0.710 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from customers;
+------------+---------+------------------+-------------+
| CustomerID | Name    | Email            | Address     |
+------------+---------+------------------+-------------+
|          1 | Alice   | alice@mail.com   | New York    |
|          2 | Bob     | bob@mail.com     | Los Angeles |
|          3 | Charlie | charlie@mail.com | Texas       |
|          4 | David   | david@mail.com   | Florida     |
|          5 | Eva     | eva@mail.com     | Nevada      |
+------------+---------+------------------+-------------+
5 rows in set (0.012 sec)

mysql> delete from customers where CustomerID = 5;
Query OK, 1 row affected (0.666 sec)

mysql> select * from customers;
+------------+---------+------------------+-------------+
| CustomerID | Name    | Email            | Address     |
+------------+---------+------------------+-------------+
|          1 | Alice   | alice@mail.com   | New York    |
|          2 | Bob     | bob@mail.com     | Los Angeles |
|          3 | Charlie | charlie@mail.com | Texas       |
|          4 | David   | david@mail.com   | Florida     |
+------------+---------+------------------+-------------+
4 rows in set (0.009 sec)

mysql> select * from customers where Name = 'Alice';
+------------+-------+----------------+----------+
| CustomerID | Name  | Email          | Address  |
+------------+-------+----------------+----------+
|          1 | Alice | alice@mail.com | New York |
+------------+-------+----------------+----------+
1 row in set (0.009 sec)

mysql> select * from orders where CustomerID = 1;
+---------+------------+------------+-------------+
| OrderID | CustomerID | OrderDate  | TotalAmount |
+---------+------------+------------+-------------+
|       1 |          1 | 2025-09-01 |     2500.00 |
|       4 |          1 | 2025-09-20 |     1200.00 |
+---------+------------+------------+-------------+
2 rows in set (0.009 sec)

mysql> update orders set TotalAmount = 3000 where OrderID = 2;
Query OK, 1 row affected (0.710 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from orders;
+---------+------------+------------+-------------+
| OrderID | CustomerID | OrderDate  | TotalAmount |
+---------+------------+------------+-------------+
|       1 |          1 | 2025-09-01 |     2500.00 |
|       2 |          2 | 2025-09-10 |     3000.00 |
|       3 |          3 | 2025-09-15 |     3500.00 |
|       4 |          1 | 2025-09-20 |     1200.00 |
|       5 |          4 | 2025-10-01 |     4000.00 |
+---------+------------+------------+-------------+
5 rows in set (0.008 sec)

mysql> DELETE FROM Orders WHERE OrderID = 4;
Query OK, 1 row affected (0.063 sec)

mysql> select * from orders;
+---------+------------+------------+-------------+
| OrderID | CustomerID | OrderDate  | TotalAmount |
+---------+------------+------------+-------------+
|       1 |          1 | 2025-09-01 |     2500.00 |
|       2 |          2 | 2025-09-10 |     3000.00 |
|       3 |          3 | 2025-09-15 |     3500.00 |
|       5 |          4 | 2025-10-01 |     4000.00 |
+---------+------------+------------+-------------+
4 rows in set (0.008 sec)

mysql> SELECT * FROM Orders WHERE OrderDate >= CURDATE() - INTERVAL 30 DAY;
+---------+------------+------------+-------------+
| OrderID | CustomerID | OrderDate  | TotalAmount |
+---------+------------+------------+-------------+
|       2 |          2 | 2025-09-10 |     3000.00 |
|       3 |          3 | 2025-09-15 |     3500.00 |
|       5 |          4 | 2025-10-01 |     4000.00 |
+---------+------------+------------+-------------+
3 rows in set (0.009 sec)

mysql> SELECT
    -> MAX(TotalAmount) as Highest,
    -> MIN(TotalAmount) as Lowest,
    -> AVG(TotalAmount) as Average
    -> from orders;
+---------+---------+-------------+
| Highest | Lowest  | Average     |
+---------+---------+-------------+
| 4000.00 | 2500.00 | 3250.000000 |
+---------+---------+-------------+
1 row in set (0.009 sec)

mysql> select * from products;
+-----------+-------------+----------+-------+
| ProductID | ProductName | Price    | Stock |
+-----------+-------------+----------+-------+
|         1 | Laptop      | 50000.00 |    10 |
|         2 | Mouse       |   800.00 |    50 |
|         3 | Keyboard    |  1500.00 |    30 |
|         4 | Monitor     | 12000.00 |    20 |
|         5 | Headphones  |  2000.00 |    25 |
+-----------+-------------+----------+-------+
5 rows in set (0.009 sec)

mysql> SELECT * FROM Products ORDER BY Price DESC;
+-----------+-------------+----------+-------+
| ProductID | ProductName | Price    | Stock |
+-----------+-------------+----------+-------+
|         1 | Laptop      | 50000.00 |    10 |
|         4 | Monitor     | 12000.00 |    20 |
|         5 | Headphones  |  2000.00 |    25 |
|         3 | Keyboard    |  1500.00 |    30 |
|         2 | Mouse       |   800.00 |    50 |
+-----------+-------------+----------+-------+
5 rows in set (0.010 sec)

mysql> UPDATE Products SET Price = 1300 WHERE ProductName = 'Keyboard';
Query OK, 1 row affected (0.648 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from products;
+-----------+-------------+----------+-------+
| ProductID | ProductName | Price    | Stock |
+-----------+-------------+----------+-------+
|         1 | Laptop      | 50000.00 |    10 |
|         2 | Mouse       |   800.00 |    50 |
|         3 | Keyboard    |  1300.00 |    30 |
|         4 | Monitor     | 12000.00 |    20 |
|         5 | Headphones  |  2000.00 |    25 |
+-----------+-------------+----------+-------+
5 rows in set (0.013 sec)

mysql> DELETE FROM Products WHERE Stock = 0;
Query OK, 0 rows affected (0.008 sec)

mysql> select * from products;
+-----------+-------------+----------+-------+
| ProductID | ProductName | Price    | Stock |
+-----------+-------------+----------+-------+
|         1 | Laptop      | 50000.00 |    10 |
|         2 | Mouse       |   800.00 |    50 |
|         3 | Keyboard    |  1300.00 |    30 |
|         4 | Monitor     | 12000.00 |    20 |
|         5 | Headphones  |  2000.00 |    25 |
+-----------+-------------+----------+-------+
5 rows in set (0.008 sec)

mysql> SELECT * FROM Products WHERE Price BETWEEN 500 AND 2000;
+-----------+-------------+---------+-------+
| ProductID | ProductName | Price   | Stock |
+-----------+-------------+---------+-------+
|         2 | Mouse       |  800.00 |    50 |
|         3 | Keyboard    | 1300.00 |    30 |
|         5 | Headphones  | 2000.00 |    25 |
+-----------+-------------+---------+-------+
3 rows in set (0.600 sec)

mysql> SELECT MAX(Price) AS Most_Expensive, MIN(Price) AS Cheapest FROM Products;
+----------------+----------+
| Most_Expensive | Cheapest |
+----------------+----------+
|       50000.00 |   800.00 |
+----------------+----------+
1 row in set (0.010 sec)

mysql> SELECT * FROM OrderDetails WHERE OrderID = 1;
+---------------+---------+-----------+----------+----------+
| OrderDetailID | OrderID | ProductID | Quantity | SubTotal |
+---------------+---------+-----------+----------+----------+
|             1 |       1 |         1 |        1 | 50000.00 |
+---------------+---------+-----------+----------+----------+
1 row in set (0.012 sec)

mysql> SELECT SUM(SubTotal) AS Total_Revenue FROM OrderDetails;
+---------------+
| Total_Revenue |
+---------------+
|      69100.00 |
+---------------+
1 row in set (0.009 sec)

mysql> SELECT ProductID, SUM(Quantity) AS TotalQuantity
    -> FROM orderdetails
    -> GROUP BY ProductID
    -> ORDER BY TotalQuantity DESC
    -> LIMIT 3;
+-----------+---------------+
| ProductID | TotalQuantity |
+-----------+---------------+
|         2 |             2 |
|         5 |             2 |
|         1 |             1 |
+-----------+---------------+
3 rows in set (0.012 sec)

mysql> SELECT ProductID,COUNT(*) AS Times_Sold
    -> FROM orderdetails
    -> where ProductID = 2
    -> group by ProductID;
+-----------+------------+
| ProductID | Times_Sold |
+-----------+------------+
|         2 |          1 |
+-----------+------------+
1 row in set (0.012 sec)