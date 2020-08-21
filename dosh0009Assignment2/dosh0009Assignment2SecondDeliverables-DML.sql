--Assignment 2		:A2D Bank
--File Name             :dosh0009Assignment2SecondDeliverables
--Student Name		:Shivaniben Doshi
--Student NUmber	:040972996
--Student Log in	:dosh0009
--Course                :CST8215 310
--Semester              :Winter2020
--Date of Creation	:2020/02/27
--Last Modified		:2020/02/27

--Delete statments
delete from Account;
delete from Loan;
delete from Customer_Creditcard;
delete from Branch;
delete from Banking_Advisor;


--Insert into Banking_Advisor table
Insert into Banking_Advisor(Banker_id,Banker_name,Banker_email) values ('CAN_rosana','Rosana','rosana@A2Dbank.com');
Insert into Banking_Advisor(Banker_id,Banker_name,Banker_email) values ('CAN_carina','Carina','carina@A2Dbank.com');
Insert into Banking_Advisor(Banker_id,Banker_name,Banker_email) values ('CAN_gloria','Gloria','gloria@A2Dbank.com');
Insert into Banking_Advisor(Banker_id,Banker_name,Banker_email) values ('CAN_elaine','Elaine','elaine@A2Dbank.com');
Insert into Banking_Advisor(Banker_id,Banker_name,Banker_email) values ('CAN_wynne','Wynne','wynne@A2Dbank.com');
Insert into Banking_Advisor(Banker_id,Banker_name,Banker_email) values ('CAN_shirley','Shirley','shirley@A2Dbank.com');
Insert into Banking_Advisor(Banker_id,Banker_name,Banker_email) values ('CAN_kadora','Kadora','kadora@A2Dbank.com');

--Insert into Branch table
insert into Branch(Branch_Name,Branch_city,Asset) values ('Clear Water Bay','Hong Kong',6000000);
Insert into Branch(Branch_Name,Branch_city,Asset) values ('Downtown','Edmonton',12000000);
Insert into Branch(Branch_Name,Branch_city,Asset) values ('Howe','Vancouver', 900000);
Insert into Branch(Branch_Name,Branch_city,Asset) values ('McEwan','Calgary',6000000);
Insert into Branch(Branch_Name,Branch_city,Asset) values ('Signal Hill','Calgary', 12000000);
Insert into Branch(Branch_Name,Branch_city,Asset) values ('Sandle wood','Novascotia', 3500000);
Insert into Branch(Branch_Name,Branch_city,Asset) values ('McAlister','Ottawa', 15000000);
Insert into Branch(Branch_Name,Branch_city,Asset) values ('Rideu','NovaScotia', 70700000);

--Insert into Customer_creditcard table
insert into Customer_creditcard(Cust_fname,cust_lname,Cust_city,Cust_id,Creditcard_number,expiry,banker_id) values ('Amy','Tremblay','Hong Kong','C8392380567','0000-1111-1111-1111','2020/03/01','CAN_rosana');
insert into Customer_creditcard(Cust_fname,cust_lname,Cust_city,Cust_id,Creditcard_number,expiry,banker_id) values ('Linda','Gagnon','Edmonton','C3487327487','0000-6666-4589-7100','2022/08/01','CAN_carina');
insert into Customer_creditcard(Cust_fname,cust_lname,Cust_city,Cust_id,Creditcard_number,expiry,banker_id) values ('Paul','Wilson','Vancouver','C3948938442','0000-8888-2569-4589','2025/07/01','CAN_gloria');
insert into Customer_creditcard(Cust_fname,cust_lname,Cust_city,Cust_id,Creditcard_number,expiry,banker_id) values ('Rick','Taylor','Vancouver','C8392381842',null,null,'CAN_carina');
insert into Customer_creditcard(Cust_fname,cust_lname,Cust_city,Cust_id,Creditcard_number,expiry,banker_id) values ('David','clark','Calgary','C9384899234','0000-4444-7486-7123','2025/04/01','CAN_elaine');
insert into Customer_creditcard(Cust_fname,cust_lname,Cust_city,Cust_id,Creditcard_number,expiry,banker_id) values ('John','White','Calgary','C0930238083','0000-5555-7802-4412','2021/03/01','CAN_wynne');
insert into Customer_creditcard(Cust_fname,cust_lname,Cust_city,Cust_id,Creditcard_number,expiry,banker_id) values ('Bob','Lee','Hong Kong','C8954385123','0000-2222-7011-7569','2027/01/01','CAN_shirley');
insert into Customer_creditcard(Cust_fname,cust_lname,Cust_city,Cust_id,Creditcard_number,expiry,banker_id) values ('Maria','Jhonson','Edmonton','C8954386123',null,null,'CAN_kadora');
insert into Customer_creditcard(Cust_fname,cust_lname,Cust_city,Cust_id,Creditcard_number,expiry,banker_id) values ('Mandy','Cote','Ottawa','C8392380849',null,null,'CAN_rosana');
insert into Customer_creditcard(Cust_fname,cust_lname,Cust_city,Cust_id,Creditcard_number,expiry,banker_id) values ('Darcia','Li','Edmonton','C8392380778',null,null,'CAN_carina');
insert into Customer_creditcard(Cust_fname,cust_lname,Cust_city,Cust_id,Creditcard_number,expiry,banker_id) values ('Liam','Cham','Novascotia','C8392383312',null,null,'CAN_gloria');
insert into Customer_creditcard(Cust_fname,cust_lname,Cust_city,Cust_id,Creditcard_number,expiry,banker_id) values ('Sam','Dough','Edmonton','C8392387002',null,null,'CAN_wynne');

--Insert into Loan table
insert into Loan(Loan_Number,Amount,Cust_id,Branch_name) values (1,150000,'C8392380567','Clear Water Bay');
insert into Loan(Loan_Number,Amount,Cust_id,Branch_name) values (10,10000,'C8954385123','Clear Water Bay');
insert into Loan(Loan_Number,Amount,Cust_id,Branch_name) values (7,30000, 'C3487327487','Downtown');
insert into Loan(Loan_Number,Amount,Cust_id,Branch_name) values (3,600000,'C3948938442','Howe');
insert into Loan(Loan_Number,Amount,Cust_id,Branch_name) values (5,90000, 'C9384899234','McEwan');
insert into Loan(Loan_Number,Amount,Cust_id,Branch_name) values (6,20000, 'C0930238083','Signal Hill');
insert into Loan(Loan_Number,Amount,Cust_id,Branch_name) values (8,10000, 'C8392380849','McAlister');

--Insert into Account table
insert into Account(Category, Account_Number,Balance,Cust_id) values ('Hong Kong Dollar','11-1234-4517',60000,'C8392380567');
insert into Account(Category, Account_Number,Balance,Cust_id) values ('Hong Kong Dollar','21-1278-8596',150000,'C8954385123');
insert into Account(Category, Account_Number,Balance,Cust_id) values ('Canadian Dollar','31-4589-9678',240000,'C3487327487');
insert into Account(Category, Account_Number,Balance,Cust_id) values ('Canadian Dollar','14-7789-7548',15000,'C3948938442');
insert into Account(Category, Account_Number,Balance,Cust_id) values ('Canadian Dollar','23-5674-0012',74896,'C9384899234');
insert into Account(Category, Account_Number,Balance,Cust_id) values ('Canadian Dollar','45-0003-7741',45001,'C0930238083');
insert into Account(Category, Account_Number,Balance,Cust_id) values ('Canadian Dollar','77-4589-7700',31000,'C8392380849');
insert into Account(Category, Account_Number,Balance,Cust_id) values ('Canadian Dollar','33-7895-7412',78900,'C8954386123');
insert into Account(Category, Account_Number,Balance,Cust_id) values ('Canadian Dollar','98-7123-2002',100200,'C8392381842');

--eof: dosh0009Assignment2 A2D bank DML.sql