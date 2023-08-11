CREATE DATABASE jets;
USE jets;
CREATE TABLE fighter(
id int, naming varchar(20)
);
CREATE TABLE drone(
id int, namess varchar(20)
);

/* INSERT */
INSERT INTO fighter VALUES(1,"Tejas");
INSERT INTO fighter VALUES(2,"AMCA");
INSERT INTO fighter VALUES(3,"Su30mki");
INSERt INTO fighter(id)/* We can calso choose which fileds to input value as well. As this help avoid default or autoincrement. */
 VALUES(4); 
INSERT INTO drone VALUES(1,"MQ9");
INSERT INTO drone VALUES(2,"Reaper");
INSERT INTO drone VALUES(3,"Orlan");

/* ORDER BY */
SELECT * FROM fighter /* We use orderby to set order of arrangement. Ascending is default. 'ASC' or 'DESC'  */
ORDER BY naming DESC; /* To use multiple columns just use comma to seperate. */

/* NULL value is basically empty record. It dont mean zero */
SELECT * FROM drone
WHERE id IS NULL; /* Cheking if NULL value */
SELECT * FROM drone 
WHERE id IS NOT NULL; /* Cheking if not a NULL value */

/* UPDATE */
UPDATE drone
SET namess="Rustum" /* This vcalue will be set, use comma to include multiple values */
WHERE id=1;  /* If u dont use WHERE all records will be updated. so WARNING */

/* DELETE */
DELETE FROM drone /* To delete a record */
WHERE id=1;  /* If u dont use WHERE all records will be deleted. so WARNING */

/* To delete all rows in a table while maintaining structure, attributes, and indexes. */
DELETE FROM drone;