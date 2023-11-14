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
SELECT * FROM soldiers;

-- [ ] UNION, UNION ALL
/*
UNION is used to combine result of 2 or more SELECT.
Condition : all select used with UNION must have same number of columns, column sequence and similar datatypes.
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

SELECT product, SUM(amount) FROM sales WHERE category="Clothing"
GROUP BY category;
/*
OUTPUT-
ProductA, 311.25
ProductB, 125.25
If u notice rows that have same column value are aggrigated into single row.
Because we are grouping by category and there are only 2 tyoes of category, Thats why 2 columns in output,
*/

-- [ ] HAVING
/*
HAVING was introducted because WHERE cant be properly used with aggrigate functions. Eg- GROUP BY
WHERE clause filters rows before they are grouped, the HAVING clause filters the results after they have been grouped.
*/
SELECT COUNT(id), namess
FROM soldiers
GROUP BY rankss
HAVING SUM(id) > 1; -- First grouping will happend, then having will filter the results.

-- [ ] EXISTS
-- This is used to check if subquery returns any records (matching). (It returns true if some record is returned).
-- IF NOT EXISTS <- we also use it this way, to check existence of a table before creating it.
CREATE TABLE IF NOT EXISTS promotions (
    promotion_id INT PRIMARY KEY AUTO_INCREMENT,
    soldier_id INT,
    promotion_date DATE,
    new_rank VARCHAR(50),
    FOREIGN KEY (soldier_id) REFERENCES soldiers(id)
);
INSERT INTO promotions (soldier_id, promotion_date, new_rank)
VALUES    (1, '2021-08-15', 'Staff Sergeant'),    (2, '2019-11-30', 'Major'),    (3, '2022-03-10', 'Corporal');
SELECT id, namess, rankss, unit
FROM soldiers WHERE EXISTS (    SELECT soldier_id
								FROM promotions
								WHERE soldier_id = soldiers.id
);
/*
This query is retrieving information from the soldiers table for soldiers who have records in the promotions table. 
The subquery in the EXISTS clause checks for the existence of records in the promotions table,
where the soldier_id matches the id of each soldier in the soldiers table.
*/

