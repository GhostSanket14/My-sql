CREATE DATABASE naming;
USE naming;

/* A view contains rows and columns, just like a real table. The fields in a view are fields from one or more real tables in the database.
view present the data as if the data were coming from one single table.
database engine reruns the view query, every time a user queries it.

CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;
 
 */

CREATE TABLE naming(id int, naming varchar(20));
INSERT INTO naming
VALUES(1,"Sanket");
CREATE TABLE gaming(id int, naming varchar(20));
INSERT INTO gaming
VALUES(2,"Ghost");

CREATE VIEW commnName AS
SELECT id, naming
FROM naming
WHERE id>1;

SELECT * FROM commnName;

/* SQL injection is something that destroy your database, in which while takig input malicious user may
give a query and we may run it unknowingly.
Just study theory concept before interview later on.
*/