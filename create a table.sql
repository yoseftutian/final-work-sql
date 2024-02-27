-- CREATE TABLE classes (
--     classesID int,
--     classesName varchar(255),
--     PRIMARY KEY (classesID)
-- );




-- CREATE TABLE Student (
--     StudentID int,
--     Name varchar(255),
--     classesID int,
--     PRIMARY KEY (StudentID),
--     FOREIGN KEY (classesID) REFERENCES Classes(classesID)
-- );


-- INSERT INTO Classes
-- VALUES (01,'software');

-- INSERT INTO Classes
-- VALUES (02,'electronics');



-- INSERT INTO Student
-- VALUES (1, 'yos',1);


-- INSERT INTO Student
-- VALUES (2, 'yony',2);


-- INSERT INTO Student
-- VALUES (3, 'yosef',1);


-- INSERT INTO Student
-- VALUES (4, 'yoal',2);


-- INSERT INTO Student
-- VALUES (5, 'jony',2);



-- CREATE TABLE Registration (
--     RegistrationID int,
--     StudentID varchar(255),
--     classesID int,
--     PRIMARY KEY (RegistrationID),
--     FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
--     FOREIGN KEY (classesID) REFERENCES Classes(classesID)
-- );


-- INSERT INTO Registration
-- VALUES (45,2, 2);


-- CREATE TABLE Book_Stor (
--     Name varchar(255),
--     Publishing varchar(255),
--     Author varchar(255),
--     Year int,
--     Copies int,
--     Line int,
--     shelf int,
--     PRIMARY KEY (Name));

===========================================================
CREATE TABLE College (
    ID int,
    Name varchar(255),
    Email varchar(255),
    Number int,
    Average int,
    PRIMARY KEY (ID)
);
--------------------------------------
INSERT INTO College
VALUES
(1234, 'Roni', 'Roni@gmail.com', 0511111111, 85),
(5678, 'Mendy', 'Mndy@gmail.com', 0522222222, 75),
(9090, 'Yoram', 'Yoram@gmail.com', 0533333333, 65),
(1111, 'aaa', 'aaa@gmail.com', 0544444444, 34),
(2222, 'bbb', 'bbb@gmail.com', 0555555555, 22);
--------------------------------------
select ID
FROM College
WHERE Name = Mendy

select Number, Email
FROM College
WHERE Name like 'M%'

select Email, Average
FROM College
WHERE ID in (9090)
--------------------------------------
DELETE FROM College WHERE ID = 1234

DELETE FROM College WHERE Name = 'Mendy'

DELETE FROM College WHERE Email = '	Yoram@gmail.com' and Number = 533333333
--------------------------------------
UPDATE College
SET Name = 'rwrw'
WHERE ID = 1111;

UPDATE College
SET Number = 6666666666
WHERE Name = 'bbb' and Email = 'bbb@gmail.com';

UPDATE College
SET Average = 55, Number = 22222222222
WHERE ID = 2222;
==========================================================
CREATE TABLE Product_Company (
    Name varchar(255),
    Price int,
    Amount int,
    Year_of_Production int,
    Expiry_Date date,
  	PRIMARY KEY (Name)
);
--------------------------------------
INSERT INTO Product_Company
VALUES
('Sugar', 7, 100, 2023, '12-03-2024'),
('Water', 3, 200, 2020, '19-11-2028'),
('flour', 5, 150, 2024, '24-03-2025'),
('aaa', 1, 111, 1111, '11-11-1111'),
('bbb', 2, 222, 2222, '22-22-2222');
-------------------------------------
select Name
FROM Product_Company
WHERE Price = 7

select Price, Amount
FROM Product_Company
WHERE Name like 'W%'

select Year_of_Production, Expiry_Date
FROM Product_Company
WHERE Price in (5)
----------------------------------
DELETE FROM Product_Company WHERE Name = 'Sugar'

DELETE FROM Product_Company WHERE Price = 3

DELETE FROM Product_Company WHERE Year_of_Production = 2024 and Amount = 150
----------------------------------
UPDATE Product_Company
SET Name = 'rwrw'
WHERE Year_of_Production = 1111;

UPDATE Product_Company
SET Amount= 6666666666
WHERE Name = 'bbb' and Year_of_Production = 2222;

UPDATE Product_Company
SET Expiry_Date = '44-44-4444', Year_of_Production = 2222
WHERE Amount = 111;



CREATE TABLE Book_Stor (
    Name varchar(255),
    Publishing varchar(255),
    Author varchar(255),
    Year int,
    Copies int,
    Line int,
    shelf int,
    PRIMARY KEY (Name));
--------------------------------
INSERT INTO  Book_Stor
VALUES
('A Contested Art', 'University of Oklahoma Press', 'Stephanie Lewthwaite', 2020, 3, 12, 507),

('Leo Strauss', 'SUNY Pres', 'Jeffrey A. Bernstein', 2017, 2, 27, 978),

('Photography of Victorian Scotland', 'Edinburgh University Press', 'Roddy Simpson', 2018, 5, 17, 763),

('ale', 'bbb', 'ccc', 2005, 8, 20, 300),

('ddd', 'eee', 'fff', 2003, 6, 19, 505);

select Publishing, Author
FROM Book_Stor
WHERE Name like 'l%'


select Year, Copies
FROM Book_Stor
WHERE Name in ('Photography of Victorian Scotland')


select Name
FROM Book_Stor
WHERE Year = '2005'

DELETE FROM Book_Stor WHERE Year = 2017

DELETE FROM Book_Stor WHERE Author = 'ccc'

DELETE FROM Book_Stor WHERE Name = 'ddd' and Publishing = 'eee'



UPDATE Book_Stor
SET Year = 2005
WHERE Name ='ale';

UPDATE Book_Stor
SET Author = 'jomy'
WHERE Publishing = 'SUNY Pres' and Name = 'Leo Strauss';

UPDATE Book_Stor
SET Publishing = 'kkkk', Copies = 2005
WHERE Author = 'ccc';

CREATE TABLE Car_Rental (
    model_a_car varchar(255),
    cost_of_rent int,
    Years int,
    Date_of_hire date,
    Rental_time time,
    PRIMARY KEY (model_a_car)
);
-------------------------------------
INSERT INTO Car_Rental
VALUES
('Toyota Prius', 180, 2010, '2023-08-15', '10:25:00'),
('Honda Civic', 170, 2009, '2022-08-27', '12:40:00'),
('Hyundai Tucson', 210, 2014, '2005-09-03', '16:55:00'),
('ssssss', 111, 222, '3333-11-22', '11:22:00'),
('fffff', 444, 555, '6666-05-44', '44:55:00');
--------------------------------------


select model_a_car
FROM Car_Rental
WHERE cost_of_rent = 111

select cost_of_rent, Years
FROM Car_Rental
WHERE model_a_car like 'H%'

select Date_of_hire, Rental_time
FROM Car_Rental
WHERE cost_of_rent in (180)


DELETE FROM Car_Rental WHERE cost_of_rent = 444


DELETE FROM Car_Rental WHERE model_a_car = 'Toyota Prius'

DELETE FROM Car_Rental WHERE model_a_car = 'Hyundai Tucson' and cost_of_rent = 210


UPDATE Car_Rental
SET cost_of_rent = 500
WHERE model_a_car ='ssssss';

UPDATE Car_Rental
SET Years = 2000
WHERE model_a_car = ' Toyota Prius' and Date_of_hire = '2023-08-15	';

UPDATE Car_Rental
SET model_a_car = 'aaaaa', Date_of_hire = '2024-33-33'
WHERE Rental_time = '11:22:00';

