CREATE DATABASE school;
USE school;

/* Constraints, Unique, not-null, Index and default */
CREATE TABLE students(
roll int NOT NULL UNIQUE, /* There can be more than one unique columns in the table */
fullName varchar(20),
present boolean NOT NULL, /* Null values are not accepted */
city varchar(20) DEFAULT "Kolhapur" /* If no velue is entered then default will be applied */
);
CREATE INDEX studID /* Here i created 'studID' named index on table students on column city */
ON students (city);

/* To add constraint after the table is created (Just overlook them try to remember above stuff mostly) */
ALTER TABLE students
MODIFY COLUMN fullname varchar(20) NOT NULL;
ALTER TABLE students
ADD UNIQUE (city);
ALTER TABLE students
ALTER city SET DEFAULT "Fulewadi";


/* Primary, auto-increment */
CREATE TABLE subjects(
ID int auto_increment, /* unique number generated automatically when new record is inserted into a table. Often this is the primary key */
subjectName varchar(50), avaliable boolean,
PRIMARY KEY(ID) /* A single primary key, primary keys can also be made of multiple columns */
/* 
CONSTRAINT PK_Person PRIMARY KEY (ID,LastName) 
PRIMARY KEY (PK_Person), VALUE of the primary key is made up of TWO COLUMNS (ID + LastName).
*/
);

/* Foregin key and Check */
CREATE TABLE company(
cid int, working varchar(20),
PRIMARY KEY (cid) /* This is the primary key we will use in below foregin key */
);
CREATE TABLE employee(
eid int, workingCompany varchar(20), cid int,
PRIMARY KEY (eid),
FOREIGN KEY (cid) REFERENCES company(cid) /* cid is table from this colum is foregin and its primary key is in above table */
);

CREATE TABLE age(
Age int CHECK (Age>18), naming varchar(20) /* We use check to put a condition over input/manipulation of a value. */
);

/* There are various ways to drop the constraints as well, Study later */