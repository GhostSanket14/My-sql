CREATE DATABASE airCraft;
USE airCraft;
CREATE TABLE fighter(
id int, naming varchar(20)
);
CREATE TABLE bomber(
id int, namess varchar(20), weightKg int
);

INSERT INTO fighter VALUES(1,"Tejas");
INSERT INTO fighter VALUES(2,"AMCA");
INSERT INTO fighter VALUES(3,"Su30mki");

/* TOP/LIMIT */
SELECT * FROM fighter
LIMIT 2; /* This is MySQL alternative for 'TOP'. This will help us select top 2 rows */ 

/* MIN and MAX */
SELECT MAX(id) AS maxiumID /* This will give maximum ID, using AS is optional */
FROM fighter;
SELECT MIN(id) AS maxiumID /* This will give minimum ID */
FROM fighter;

/* COUNT AVG SUM */
SELECT COUNT(id) /* We can count nunber of rows in the column */
FROM fighter
WHERE id IS NULL; /* We can aslo put a where condition to count specific type of rows. */

/* AVG() function returns the average value of a numeric column. 
   SUM() function returns the total sum of a numeric column. 
 */