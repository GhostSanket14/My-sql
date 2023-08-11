CREATE DATABASE guns; /* To create a database */
DROP DATABASE guns; /* To drop the database*/
USE guns; /* To select a database for use */

/* Backup the database 2 types  (these methods no longer work. Use new methods from official forum)
[1] To make all out backup
BACKUP DATABASE guns
TO DISK "C:\Games";
[2] This makes backup of parts that have been changed.
BACKUP DATABASE guns
TO DISK "C:\Games";n                                          
WITH DIFFERENTIAL;
*/

/* Data types, In MySQL there are three main data types: string, numeric, and date-time.
I mostly use int and varchar. There are more study later, if need.
Also date with 
DATE - format YYYY-MM-DD
DATETIME - format: YYYY-MM-DD HH:MI:SS
TIMESTAMP - format: YYYY-MM-DD HH:MI:SS
YEAR - format YYYY or YY
*/

/* To create a table */
CREATE TABLE assualt_rifle(
id int, name varchar(50), price int 
);
CREATE TABLE ATF(
id int, ranks varchar(23)
);
DROP TABLE ATF; /* To drop a table */

/* To add, delete or modify a tables colmns. Or to add constraints to existing column */
ALTER TABLE assualt_rifle
ADD Indian boolean;
ALTER TABLE assualt_rifle
ADD good boolean; /* Adding column */
ALTER TABLE assualt_rifle
DROP COLUMN good; /* Droping a column */
ALTER TABLE assualt_rifle
RENAME COLUMN Indian TO imported; /* Modify- Rename */
ALTER TABLE assualt_rifle
MODIFY COLUMN Imported varchar(3); /* Modify- datatype change */