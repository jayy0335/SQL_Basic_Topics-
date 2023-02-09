create database Mydatabase2;

use Mydatabase2;

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
    
    create table branch
    (
		bid varchar (6),
        bname varchar (30),
        bcity varchar (30),
        constraint branch_bid_pk primary key (bid)
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
    constraint account_custid_fk foreign Key (custid) references customers(custid),
    constraint account_bid_fk foreign key (bid) references branch(bid)
    );
    
    SELECT * from branch;
    insert into branch value ('B00001','gulshan','karachi');
    insert into branch value ('B00002','D-chowkh','islamabad');
    insert into branch value ('B00003','ghari chowkh','mirpur');
    insert into branch value ('B00004','hiramandi','lahore');
    insert into branch value ('B00005','jamnagar','multan');
    insert into branch value ('B00006','latifabad','Hyderabad');
    insert into branch value ('B00007','lgihthouse','karachi');
    insert into branch value ('B00008','kaneez fitima','karachi');
    insert into branch value ('B00009','DHA','Lahore');
    insert into branch value ('B00010','bahria','bhawalpur');
    
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

select * from customers;

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

select * from customers 
left join account 
on customers.custid = account.custid;  

select * from account 
left join customers 
on account.custid = customers.custid; 

select * from ACCOUNT 
right join customers 
on customers.custid = account.custid;

select * from customers 
right join account 
on account.custid = customers.custid;

select count(acnumber) from account; 


select * from account 
left join customers 
on customers.custid = account.custid
union
select * from account 
right join customers 
on customers.custid = account.custid;



create table student
(
student_id varchar(6),
name varchar(30),
course_id varchar (30),
duration int (4)
);

insert into student value ('1','ayaz',2,6);
insert into student value ('2','ghayas',1,6);
insert into student value ('3','taimoor',4,6);
insert into student value ('4','bilal',3,6);
insert into student value ('1','ayaz',1,6);
insert into student value ('3','taimoor',2,6);

select * from student;

select s1.student_id,s1.name,s1.course_id
from student as s1, student s2
where s1.student_id = s2.student_id and s1.course_id <> s2.course_id;



    