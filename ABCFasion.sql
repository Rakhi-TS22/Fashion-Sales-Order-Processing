Create Database ABCFashion
use ABCFashion
CREATE TABLE Salesman (
    SalesmanId INT,
    Name VARCHAR(255),
    Commission DECIMAL(10, 2),
    City VARCHAR(255),
    Age INT
);

INSERT INTO Salesman (SalesmanId, Name, Commission, City, Age)
VALUES
    (101, 'Joe', 50, 'California', 17),
    (102, 'Simon', 75, 'Texas', 25),
    (103, 'Jessie', 105, 'Florida', 35),
    (104, 'Danny', 100, 'Texas', 22),
    (105, 'Lia', 65, 'New Jersey', 30);

CREATE TABLE Customer (
    SalesmanId INT,
    CustomerId INT,
    CustomerName VARCHAR(255),
    PurchaseAmount INT,
    );

--Customer table record insertion 

INSERT INTO Customer (SalesmanId, CustomerId, CustomerName, PurchaseAmount)
VALUES
    (101, 2345, 'Andrew', 550),
    (103, 1575, 'Lucky', 4500),
    (104, 2345, 'Andrew', 4000),
    (107, 3747, 'Remona', 2700),
    (110, 4004, 'Julia', 4545);


CREATE TABLE Orders (OrderId int, CustomerId int, SalesmanId int, Orderdate Date, Amount money)

INSERT INTO Orders Values 
(5001,2345,101,'2021-07-01',550),
(5003,1234,105,'2022-02-15',1500)


INSERT INTO Orders Values 
(5004,5214,110,'2022-08-05',8426)

SELECT * From Salesman
Insert into Orders values (5005,3515,203,'2020-02-15',500)
 drop table Salesman
Select * from Customer
select * from Salesman



--Add Primary key constraint for SalesmanId column in Salesman table
alter table Salesman
alter column SalesmanId int not null

ALTER TABLE Salesman
ADD CONSTRAINT pk_table_name PRIMARY KEY (SalesmanId);

alter table Customer
alter column PurchaseAmount int not null
ALTER TABLE Customer
add CONSTRAINT pk_purchaseamount Primary Key (PurchaseAmount) 

-- Add Foreign key constraint for SalesmanId column in Customer table.
ALTER TABLE Customer with nocheck
ADD FOREIGN KEY (SalesmanId) REFERENCES Salesman(SalesmanId);

--Add default --constraint for City column in Salesman table.

ALTER TABLE Salesman
ADD CONSTRAINT df_City
DEFAULT 'Chicago' FOR City;

-- Add not null constraint in Customer_name column for theCustomer table.
ALTER TABLE Customer
ALTER COLUMN CustomerName VARCHAR(255) NOT NULL;

select * from Salesman
select * from Customer
select * from Orders

--Fetch the data where the Customer’s name is ending with either ‘NA’ also get the
--purchase amount value greater than 500.select * from Customer
WHERE CustomerName LIKE '%NA' and PurchaseAmount>500;-- Retrieve the other result containing SalesmanId without duplicates from two tables
select SalesmanId from Customer
Union All
select SalesmanId from Salesman

-- Retrieve the first result with unique SalesmanId values
select SalesmanId from Customer
Union 
select SalesmanId from Salesman



-- Display the below columns which has the matching data.Orderdate, Salesman Name, Customer Name, Commission, and City which has the range of Purchase Amount between 1500 to 3000.

SELECT 
    o.Orderdate,
    s.Name AS SalesmanName,
    c.CustomerName,
    s.Commission,
    s.City
FROM 
    Orders o
JOIN 
    Salesman s ON o.SalesmanId = s.SalesmanId
JOIN 
    Customer c ON o.CustomerId = c.CustomerId
WHERE 
    c.PurchaseAmount BETWEEN 100 AND 3000;

--6. Using right join fetch all the results from Salesman and Orders table.

select * from Salesman s 
right join Orders o 
on s.SalesmanId= o.SalesmanId
