CREATE DATABASE tanks;
USE tanks;
CREATE TABLE IF NOT EXISTS firearms (
    gun_id INT PRIMARY KEY AUTO_INCREMENT,
    gun_name VARCHAR(255) NOT NULL,
    caliber VARCHAR(50),
    manufacturer VARCHAR(100)
);
INSERT INTO firearms (gun_name, caliber, manufacturer)
VALUES    ('M1911', '0.45 ACP', 'Colt'),    ('AR-15', '5.56mm NATO', 'Various'),    ('Glock 19', '9mm', 'Glock'),    ('Remington 870', '12 Gauge', 'Remington');

-- STORED PROCEDURE
/*
They are basically set of SQL statements stored in database.
They may or may not have a return type. They may or may not have input/output parameterts.
They can be used to modify data, perform calculations on th data.
*/

-- Manually creating is not working, so i just bused to GUI. but below is the how general structure looks like.
DELIMITER // -- We have to create new Dilimiter because, the query we write and 'END' keyword will have some conflict.
CREATE PROCEDURE ______ () 
BEGIN
	-- Our query here.
END //
DELIMITER ; -- we made $$ as our new dilimiter. Because above we have to use ; for SELECT statement.

CALL getguns; -- This is how we execute it. (i made this via GUI).


-- FUNCTION
/*
It is one specific type of stored procedure.
It is used for calculation on database, and it must return a value.
*/

-- I made below using GUI.
CREATE DEFINER=`root`@`localhost` FUNCTION `multiplycaliber`(cali INT) RETURNS int
    DETERMINISTIC
BEGIN
RETURN cali*2 ;
END

-- A deterministic function always returns the same results if given the same input values. 
-- Eg- adding 2 inputparameters.
-- A nondeterministic function may return different results every time it is called, even when the same input values are provided.
-- Eg- Generating random number.