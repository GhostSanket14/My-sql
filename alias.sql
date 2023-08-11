CREATE DATABASE pistols;
USE pistols;

CREATE TABLE modern(
id int, naming varchar(20)
);
INSERT INTO modern
VALUES(1,"Bereta");
INSERT INTO modern
VALUES(2,"Glock");
INSERT INTO modern
VALUES(3,"Makarov");
INSERT INTO modern
VALUES(4,"Nambu");
INSERT INTO modern
VALUES(5,"GugerMk9");

/* Alias */
/* Alias are used to give temperory names to original names, It only exists for the duration of that query. */
/* We can use multiple just seperate by comma */
SELECT naming AS modern_pistols, id AS gun_id /* Selecting column from table */
FROM modern;

SELECT naming
FROM modern AS modern_handeld; /* Selecting table */

CREATE TABLE oldGuns(
id int, naming varchar(20), caliber int
);
INSERT INTO oldGuns
VALUES(1,"Flint",10);
INSERT INTO oldGuns
VALUES(2,"Cold",12);
INSERT INTO oldGuns
VALUES(3,"M1911",14);
INSERT INTO oldGuns
VALUES(4,"Leaver",17);

/* We can combine information like this as well */
SELECT id, CONCAT(" Gun name ",naming," Gun caliber",caliber) AS AllGunInfo
FROM oldGuns;