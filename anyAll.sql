CREATE DATABASE company;
USE company;
CREATE TABLE Products (    ProductID INT PRIMARY KEY,    ProductName VARCHAR(255) NOT NULL,    Price DECIMAL(10, 2) NOT NULL );
INSERT INTO Products (ProductID, ProductName, Price)
VALUES    (1, 'Laptop', 800.00),    (2, 'Smartphone', 500.00),    (3, 'Tablet', 300.00),    (4, 'Camera', 700.00);    

-- ALL means that the condition will be true only if the operation is true for all values in the range. 
-- ANY means that the condition will be true if the operation is true for any of the values in the range.


-- If i want to see, any product name whose price is greater than average price.
SELECT ProductName FROM Products WHERE Price> ANY (SELECT AVG(Price) FROM Products); 
-- Subquery will give average price, and primary query will run for ANY value that matches subquery.


SELECT ProductID, ProductName, Price
FROM Products
WHERE Price > ANY (SELECT DiscountPrice FROM Discounts); -- Konyta pn discount price peksha yr outer query madhle product chi price mothi asli te print kr.
-- "Show me all the products that are more expensive than at ANY of the discounted prices."