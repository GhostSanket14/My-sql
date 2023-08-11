CREATE DATABASE weapons;
USE weapons;
CREATE TABLE people(id int, naming varchar(20));
INSERT INTO people
VALUES(1,"Sanket");

/* SELECT and WHERE */
SELECT * FROM people; /* SELECT 8 means all */
SELECT id FROM people; /* SELECT a perticular column */
SELECT id,age FROM people; /* SELECT multiple columns */
SELECT id FROM people
WHERE naming="Cynide"; /* We can use where to put a condition */

/* AND OR NOT , are used in combination with the WHERE
AND- when both condition are true
OR- when only first condition is true
NOT- Gives OP when condition is false.
We can combine them as well.
*/
SELECT * FROM people
WHERE id=1 AND id=3 AND id=4;
SELECT naming FROM people
WHERE id=1 OR id=2;
SELECT * FROM people
WHERE NOT id=1;

/* WHERE can be used with all mathematical operatios like any programming language, (+,-,*,/,<,>)
Unique wildcars are in likeWildcards.sql 
*/