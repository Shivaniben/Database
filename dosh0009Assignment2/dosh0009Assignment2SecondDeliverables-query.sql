--Assignment 2		:A2D Bank
--File Name		:dosh0009Assignment2SecondDeliverables
--Student Name		:Shivaniben Doshi
--Student Number	:040972996
--Student Log in	:dosh0009
--Course		:CST8215 310
--Semester		:Winter2020
--Date of Creation	:2020/02/27
--Last Modified		:2020/03/10


--Metadata
select * from information_schema.columns where 
table_name = 'banking_advisor' or
table_name = 'branch' or
table_name = 'customer_creditcard' or
table_name = 'loan' or
table_name = 'account';

--select and where statements 

--1st select-where statement: List custmoer id , city for customers whose first name cntains letter 'd' 
select cust_fname, cust_id, cust_city
from customer_creditcard
where cust_fname  like '%d%';

--2nd select-where statement:
select  branch_city ,branch_name , asset
from branch
where asset >= '700000';

--3rd select-where statement:
select loan_Number , cust_id As "Customer who have loan"
from loan
where loan_number is not null;


--Left Join: List Customer who have creditcard
Select customer_creditcard.Cust_id, customer_creditcard.Cust_fname,Banking_Advisor.Banker_id
from Customer_creditcard
Left join Banking_Advisor
on customer_creditcard.Banker_id = Banking_Advisor.Banker_id
where customer_creditcard.creditcard_Number is not null;

--Right Join:List Customer who does not have any loan 
Select Loan.Amount, Customer_creditcard.Cust_id
from Loan Right join Customer_creditcard
on Loan.Cust_id = Customer_creditcard.Cust_id
where Loan.cust_id is null;

--Subquery1: Lists Branch who gave loan to customers
select Branch_name,Asset, branch_city
from branch
where Branch_name in  (Select Branch_name from Loan );

--Subquery2: Lists customers whose loan amount is more than the average loan given by all the branches
select concat(cust_fname || ' ' || cust_lname) as "Customer", loan.cust_id, loan.amount
from customer_creditcard 
join loan
on loan.cust_id = customer_creditcard.cust_id
where  loan.amount  >= (select avg(loan.amount) from loan); 

--Union query
select creditcard_number from customer_creditcard where creditcard_number is not null
union
select account_number from Account;

--View1
select * from creditcard_holder_V;

--View2
select * from customer_loan_V;


--eof: dosh0009Assignment2 A2D bank query.sql