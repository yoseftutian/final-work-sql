#part 8

1.
CREATE TABLE fruit_shop (
    fruit_id int NOT NULL,
    fruit_name varchar(20) NOT NULL,
    PRIMARY KEY (fruit_id)
);

2.
INSERT INTO fruit_shop (fruit_id, fruit_name)
VALUES
('1', 'banana'),
('2', 'Apple'),
('3','pear');

3.
CREATE TABLE Product (
    product_id int NOT NULL,
    Amount int NOT NULL,
    fruit_id int,
    PRIMARY KEY (product_id),
    CONSTRAINT FK_fruit_shopProduct FOREIGN KEY (fruit_id) REFERENCES fruit_shop(fruit_id)
);

4.
INSERT INTO Product (product_id, Amount, fruit_id)
VALUES
('1', '5', '2'),
('2', '3', '2'),
('3', '4', '2'),
('4', '7', '2'),
('5', '9', '3'),
('6', '25', '3'),
('7', '4', '3'),
('8', '8', '3');

5.
CREATE TABLE Costumers (
    costumer_id int NOT NULL,
    first_name varchar(20) NOT NULL,
    last_name varchar(20) NOT NULL,
    PRIMARY KEY (costumer_id)
);

6.
INSERT INTO Costumers (costumer_id, first_name, last_name)
VALUES
('1', 'shay', 'ben david'),
('2', 'yoel', 'kohen'),
('3', 'chananya', 'koren'),
('4', 'shaul', 'davidovich'),
('5', 'tuvia', 'chen');

7.
CREATE TABLE Purchase (
    purchase_id int NOT NULL,
    product_id int,
    costumer_id int,
    PRIMARY KEY (purchase_id),
    CONSTRAINT FK_ProductPurchase FOREIGN KEY (product_id) REFERENCES Product(product_id),
    CONSTRAINT FK_CostumersPurchase FOREIGN KEY (costumer_id) REFERENCES Costumers(costumer_id)
);

8.
INSERT INTO Purchase (purchase_id, product_id, costumer_id)
VALUES
('1', '7', '3'),
('2', '3', '4'),
('3', '8', '3'),
('4', '6', '4'),
('5', '2', '2'),
('6', '7', '4'),
('7', '8', '4'),
('8', '4', '5');

9.
SELECT Purchase.purchase_id, Customers.last_name
FROM Purchase
INNER JOIN Customers ON Purchase.costumer_id=Customers.costumer_id;

SELECT Purchase.purchase_id, Product.Amount
FROM Purchase
INNER JOIN Product ON Purchase.product_id=Product.product_id;

SELECT Product.Amount, fruit_shop.fruit_name
FROM Product
INNER JOIN fruit_shop ON Product.fruit_id=fruit_shop.fruit_id;