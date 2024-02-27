CREATE TABLE Student (
    ID int,
    Scor int,
    Status varchar(255),
    Age int,
    PRIMARY KEY(ID),
    FOREIGN KEY (ID) REFERENCES College(ID)
);
---------------------
INSERT INTO College
VALUES
(6, 'k', 'l', 6666, 66),
(7, 'm', 'n', 7777, 77);
--------------------
INSERT INTO Student
VALUES
(1234, 80, 'single', 22),
(7, 70, 'Married', 44),
(6, 60, 'Married', 66);



UPDATE Book_Stor
SET Year = 2005
WHERE Name ='ale';

UPDATE Book_Stor
SET Author = 'jomy'
WHERE Publishing = 'SUNY Pres' and Name = 'Leo Strauss';

UPDATE Book_Stor
SET Publishing = 'kkkk', Copies = 2005
WHERE Author = 'ccc';



CREATE TABLE book (
    Name varchar(255),
    Price int,
    Size int,
    FOREIGN KEY (Name) REFERENCES Book_Stor(Name)
);
---------------------
INSERT INTO Book
VALUES
('Leo Strauss', 11, 111),
('ale', 22, 222);
----------------------
INSERT INTO Book_Stor
VALUES
('a', 'a','ac', 1111, 1,11, 111),
('b', 'b','b', 2222,2,22, 222),
('c', 'c','c', 3333, 3,33, 333);





CREATE TABLE car (
  	model_a_car varchar(255),
    Color varchar(255),
    Size int,
    PRIMARY KEY(model_a_car)
    FOREIGN KEY (model_a_car) REFERENCES Car_Rental(model_a_car)
);
---------------------
INSERT INTO Car
VALUES
('Toyota Prius', 'gren', 111),
('fffff', 'blue', 222);
-------------------
INSERT INTO Car_Rental
VALUES
('ccc', 111, 1111, 1111-11-1, '11:11:11'),
('ddd', 222, 2222, 2222-22-2, '22:22:22'),
('eee', 333, 3333, 3333-33-3, '33:33:33');




CREATE TABLE product (
  	Name varchar(255),
    Status varchar(255),
    Size int,
    PRIMARY KEY(Name)
    FOREIGN KEY (Name) REFERENCES Product_Company(Name)
);
-----------------------
INSERT INTO Product
VALUES
('Sugar', 'good', 111),
('flour', 'medium', 222);
------------------------
INSERT INTO Product_Company
VALUES
('ccc', 3, 333, 3333, '33-33-3333'),
('ddd', 4, 444, 4444, '44-44-4444'),
('eee', 5, 555, 5555, '55-55-5555');


-- JOIN

SELECT College.ID, Student.Scor, College.Name
FROM College
INNER JOIN Student ON College.ID=Student.ID;
