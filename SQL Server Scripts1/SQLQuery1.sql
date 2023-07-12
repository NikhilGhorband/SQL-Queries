create database RFP287
create table customer (Customer_Id int primary key identity, Name varchar(20),
Gender char, Country varchar(200))


select * from Customer


Insert into Customer (Name, Gender, Country) Values ('Nikhil', 'M', 'India')
Insert into Customer (Name, Gender, Country) Values ('Mogi', 'F', 'Germany')
Insert into Customer (Name, Gender, Country) Values ('Chunchu', 'M', 'China')
Insert into Customer (Name, Gender, Country) Values ('Nakul', 'M', 'India')
Insert into Customer (Name, Gender, Country) Values ('Nisha', 'F', 'USA')
create Table Orders(OrderID int primary key, OrderDate date,

Customer_ID int Foreign key References Customer(Customer_Id))

select * from Orders

Insert into Orders (OrderDate, Customer_Id) Values ('2023-01-01',5)

select *
from Customer
Inner Join Orders on 
Orders.Customer_ID = Customer.Customer_Id