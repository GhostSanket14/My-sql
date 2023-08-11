CREATE DATABASE ships;
USE ships;
CREATE TABLE destroyer(
id int, naming varchar(20)
);
INSERT INTO destroyer
VALUES(1,"Talvar");
INSERT INTO destroyer
VALUES(2,"Kavari");
INSERT INTO destroyer
VALUES(3,"Tanaji");
INSERT INTO destroyer
VALUES(4,"ShivAndNandi");
INSERT INTO destroyer
VALUES(5,"KartikAndGanesh");

/* LIKE % and _ */
/*
% means zero to any number of characters
_ means one single character
Eg- a% <- start with 'a' and goes till any length
    _a <- atlest one character before a
    __a% <- a in thord position
    a%o <- any value start with a and end with o
*/
SELECT * FROM destroyer
WHERE naming LIKE "_a%"; /* Capital or small letter dont matter */

/* Other wildcards */
/*
Cosider hot, hat, hit, ham, hct
h[oa]t <- this means hot, hat 
h[^oa]t <- this means hit
h[a-d]t <- This means hat, hct ( a-d means any characters that are between a to d)
*/

/*  IN and BETWEEN */
SELECT id FROM destroyer
WHERE naming IN ("Kavari","Tanaji"); /* IN allow us to specify multiple condition for WHERE. Ie. IN operator is shorthand for multiple OR conditions.*/
/* NOT IN can also be used */

SELECT id FROM people  /* We can also use NOT BETWEEN */
WHERE age BETWEEN 19 AND 21; /* Gives values within a range. Both start and end is included. Values can be numbers, text or dates */