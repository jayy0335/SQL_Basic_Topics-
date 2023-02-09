create database mydemo2;

use mydemo2;

drop database mydemo2;

show databases;

create table customers
(
	custid varchar (6),
    fname varchar (30),
    mname varchar (30),
    lname varchar (30),
    city varchar (15),
    mobileno varchar (15),
    occupation varchar (10),
    dob DATE,
    constraint customer_custid_pk Primary Key (custid)
    );
    

CREATE TABLE account
(
	acnumber varchar (6),
    custid varchar (6),
    bid varchar (6),
    opening_balance int (7),
    aod DATE,
    atype varchar (10),
    astatus varchar (10),
    constraint account_acnumber_pk Primary key (acnumber), 
    constraint account_custid_fk foreign Key (custid) references customers(custid)
    );
    
    show tables;
    
    
insert into customers values ('C00001','Raza','Ali','kazmi','karachi','0334-2346721','student','2011-12-06');
insert into customers values ('C00002','Jay','Awam','kund','mirpur','0333-2346732','student','2014-12-06');
insert into customers values ('C00003','Muhammad','Subhan','khan','Hyd','0315-2346732','service','2016-12-06');
insert into customers values ('C00004',"Ramiz",'Haider','kazmi','Isl','0333-4642732','student','2014-07-06');
insert into customers values ('C00005',"Hamza",'Ali','Ansari','lahore','0343-2346732','service','2012-04-06');
insert into customers values ('C00006',"Gulzaib",'agha',null ,'sanghar','0300-2346732','student','2017-03-06');
insert into customers values ('C00007',"imtiaz",'ahmed','kazmi','multan','0311-2346732','student','2019-01-06');
insert into customers values ('C00008',"Ali",null,'Soomro','karachi','0318-2346732','service','2021-02-06');
insert into customers values ('C00009',"Noman",'shaikh',null,'karachi','0321-2346732','student','2011-03-06');
insert into customers values ('C00010',"jahaz",null,'ahmed','kemari','0343-2346732','service','2009-11-06');

SET SQL_safe_updates = 0;
delete from customers;


truncate table account;
truncate table customers;

select *from customers;

ALTER TABLE customers MODIFY mobileno VARCHAR (15);

insert into account values ('A00001','C00001','B00001','1000','1997-12-06','Saving','Active');
insert into account values ('A00002','C00002','B00001','1000','1992-11-06','Saving','Active');
insert into account values ('A00003','C00003','B00002','1000','2008-12-06','Saving','Active');
insert into account values ('A00004','C00002','B00005','1000','2001-11-06','Saving','Active');
insert into account values ('A00005','C00006','B00006','1000','2006-12-06','Saving','Active');
insert into account values ('A00006','C00007','B00007','1000','1991-11-06','Saving','Suspended');
insert into account values ('A00007','C00007','B00001','1000','1996-12-06','Saving','Active');
insert into account values ('A00008','C00001','B00003','1000','1994-11-06','Saving','Terminated');
insert into account values ('A00009','C00003','B00007','1000','1993-12-06','Saving','Terminated');
insert into account values ('A00010','C00004','B00002','1000','1990-11-06','Saving','Active');

select *from account;

select count(*)from customers;

select count(*)from account;

select fname,acnumber from customers inner join account on customers.custid = account.custid;

select count(fname) from customers inner join account on customers.custid = account.custid;
