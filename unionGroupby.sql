CREATE DATABASE wagnergroup;
USE wagnergroup;
CREATE TABLE IF NOT EXISTS soldiers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    namess VARCHAR(255) NOT NULL,
    rankss VARCHAR(50) NOT NULL,
    unit VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    nationality VARCHAR(50),
    enlistment_date DATE,
    last_promotion_date DATE,
    active_status BOOLEAN
);
CREATE TABLE IF NOT EXISTS soldiers_union (
    id INT PRIMARY KEY AUTO_INCREMENT,
    soldier_name VARCHAR(255) NOT NULL,
    rankss VARCHAR(50) NOT NULL,
    unit VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    nationality VARCHAR(50),
    enlistment_date DATE,
    last_promotion_date DATE,
    active_status BOOLEAN
);
-- TABLE 1 = namess, rankss, unit, date_of_birth, nationality, enlistment_date, last_promotion_date, active_status 
-- TABLE 2 = soldier_name, rankss, unit, date_of_birth, nationality, enlistment_date, last_promotion_date, active_status


-- [ ] UNION, UNION ALL
/*
UNION is used to combine result of 2 or more SELECT
Condition is: all select used with UNION must have same number of columns, column sequence and similar datatypes.
'UNION' dont allow duplicate values.
'UNION ALL' allows duplicate values.
*/
SELECT rankss,namess FROM soldiers 
UNION
SELECT rankss,soldier_name FROM soldiers_union
ORDER BY rankss;
SELECT namess FROM soldiers WHERE unit="Alpha Company"
UNION ALL
SELECT soldier_name FROM soldiers_union WHERE unit="Alpha Company";

-- [ ] GROUP BY, is used to group rows that have similar type of values in columns.
CREATE TABLE sales (
    product VARCHAR(50),
    category VARCHAR(50),
    amount DECIMAL(10, 2)
);
INSERT INTO sales (product, category, amount) VALUES
    ('ProductA', 'Electronics', 100.50),
    ('ProductB', 'Clothing', 75.25),
    ('ProductC', 'Electronics', 120.75),
    ('ProductD', 'Clothing', 50.00),
    ('ProductE', 'Electronics', 90.00);

SELECT product, SUM(amount) FROM sales
GROUP BY category;
/*
OUTPUT-
ProductA, 311.25
ProductB, 125.25
If u notice first rows that have same column value are aggrigated into single row.
Because we are grouping by category and there are only 2 tyoes of category, Thats why 2 columns in output,
*/
