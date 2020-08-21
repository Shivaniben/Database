--Assignment 2		:A2D Bank
--File Name		:dosh0009Assignment2SecondDeliverables
--Student Name		:Shivaniben Doshi
--Student NUmber	:040972996
--Student Log in	:dosh0009
--Course		:CST8215 310
--Semester		:Winter2020
--Date of Creation	:2020/02/27
--Last Modified		:2020/02/27


--DDL for A2D Bank


--Drop table 
drop view  if exists Creditcard_Holder_V;
drop view  if exists Customer_Loan_V;
drop table if exists Account;
drop table if exists Loan;
drop table if exists Customer_creditcard;
Drop table if exists Branch;
drop table if exists Banking_Advisor;

--Create Table Banking_Advisor
create table Banking_Advisor(
Banker_id    varchar (15) not null,
Banker_email varchar (20),
Banker_Name  varchar (20),
constraint pk_Banker_id Primary key(Banker_id)
);

--Create Table Branch
create table Branch(
Branch_Name varchar (15),
Branch_city varchar (15),
Asset       varchar (30),
constraint pk_Branch_Name primary key (Branch_Name)
);

--Create Table Customer_Creditcard
create table Customer_CreditCard(
Cust_fname     varchar(15),
Cust_lname     varchar(15),
Cust_city      varchar(15),
Cust_id           char(11),
Creditcard_Number char(19),
Expiry            Date,
Banker_id      varchar(15)not null,
constraint  pk_Cust_id   primary key (Cust_id),
constraint  fk_Banker_id foreign key (Banker_id) references Banking_Advisor(Banker_id)
);

--Create Table Loan
create table Loan(
Loan_Number varchar(11),
Amount          int ,
Cust_id        char(11),
Branch_Name varchar(15),
constraint pk_Loan_number  primary key (Loan_Number),
Constraint fk1_Branch_name foreign key (Branch_Name) references Branch(Branch_Name),
constraint fk2_Cust_id     foreign key (Cust_id)     references Customer_Creditcard(Cust_id)
);

--Create Table Account
create table Account(
Category         varchar (25),
Account_Number       char(12),
Balance               int,
Cust_id              char(11),
constraint pk_Account_Number primary key(Account_Number),
constraint fk_Cust_id        foreign key(Cust_id)    references Customer_Creditcard(Cust_id)
);

--create view 
Create view Creditcard_Holder_V As
Select concat(cust_fname ||' '|| Cust_lname)as Customer, Creditcard_Number
From   Customer_CreditCard
where  creditcard_number is not null;

--create view
create view Customer_Loan_V AS 
Select cust_id , Loan.Loan_Number, Loan.Amount
from   Loan
where  Amount is not null;






--eof: dosh0009Assignment2 A2D Bank DDL.sql
