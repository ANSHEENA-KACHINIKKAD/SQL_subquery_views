use entri_d42;
select * from country ;
select * from persons ;
select sum(Population) as Number_of_persons ,Country_name from country group by Country_name ; -- (1)
select sum(Population) as Number_of_persons ,Country_name from country group by Country_name order by Country_name desc ;-- (2)
select avg(Rating) as avg_rating ,Country_name from persons group by Country_name having avg(Rating)>3 ; -- (3)
select Country_name from persons where Rating=(select Rating from persons where Country_name="United States");-- (4)
select Country_name from persons where Population >(select avg(population) from persons); -- (5)

-- new database
create database Product ;
use Product;

create table Customer (Customer_id int primary key ,First_name varchar(20),Last_name varchar(25),Email VARCHAR(255) ,Phone_number varchar (20),Address varchar(20),State varchar(25),City varchar(25),Zip_code varchar(10),Country varchar (24));
INSERT INTO Customer (Customer_id, First_name, Last_name, Email, Phone_number, Address, City, State, Zip_code, Country)
VALUES
    (1, 'John', 'Doe', 'johndoe@example.com', '123-456-7890', '123 Main St', 'New York', 'NY', '10001', 'USA'),
    (2, 'Jane', 'Smith', 'janesmith@example.com', '987-654-3210', '456 Elm St', 'Los Angeles', 'CA', '90001', 'USA'),
    (3, 'Michael', 'Johnson', 'michaeljohnson@example.com', '555-555-5555', '789 Oak St', 'Chicago', 'IL', '60601', 'USA'),
    (4, 'Emily', 'Brown', 'emilybrown@example.com', '111-222-3333', '101 Pine St', 'Houston', 'TX', '77001', 'USA'),
    (5, 'David', 'Davis', 'daviddavis@example.com', '444-555-6666', '202 Cedar St', 'Philadelphia', 'PA', '19101', 'USA'),
    (6, 'Sophia', 'Martinez', 'sophiamartinez@example.com', '777-888-9999', '303 Maple St', 'Dallas', 'TX', '75001', 'USA'),
    (7, 'James', 'Anderson', 'jamesanderson@example.com', '222-333-4444', '404 Oak St', 'San Antonio', 'TX', '78201', 'USA'),
    (8, 'Olivia', 'Taylor', 'oliviataylor@example.com', '555-444-3333', '505 Pine St', 'San Diego', 'CA', '92101', 'USA'),
    (9, 'Noah', 'Wilson', 'noahwilson@example.com', '666-777-8888', '606 Elm St', 'San Jose', 'CA', '95101', 'USA'),
    (10, 'Ava', 'Lee', 'avalee@example.com', '999-888-7777', '707 Main St', 'Jacksonville', 'FL', '32201', 'USA');
create view customer_info as select concat(First_name,Last_name) as Full_Name ,Email from Customer;
select * from customer_info;-- (1)
create view US_Customer as select concat(First_name,Last_name)as customer_name from customer where country='USA';
SELECT * FROM US_Customer;-- (2)
create view Customer_details as select concat(First_name,Last_name) as full_name,Email as email,Phone_number,State,City from customer;-- (3)

-- update phone number of customer who live in 'San Jose'
update Customer  set Phone_number='103-479-3498' where City='San Jose' and Customer_id=9;-- (4)
SELECT State FROM Customer GROUP BY State HAVING COUNT(*) >= 3;-- (5)
use product;
select count(Phone_number) as no_of_customers,State  from Customer_details group by State;-- (6)
select * from Customer_details order by State ; -- (7)