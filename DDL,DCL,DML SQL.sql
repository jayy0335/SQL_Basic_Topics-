create database mysqljazib;

use mysqljazib;

drop database mysqljazib;

show databases;


create table student_table(
 student_id INT,
 student_name Varchar (100),
 student_course varchar (40)
);

show tables;

describe student_table;

alter table student_table add column email varchar (100);


describe student_table;

insert into student_table(student_id, student_name, Student_course, email)
values (1, "prakash",'c1002','prakash@gmail.com');

insert into student_table(student_id, student_name, Student_course, email)
values (2, "khan",'c1003','Khan@gmail.com');

insert into student_table(student_id, student_name, Student_course, email)
values (3, "pathan",'c1004','pathan@gmail.com');

insert into student_table(student_id, student_name, Student_course, email)
values (4, "jazz",'c1005','jazz@gmail.com');

select student_id,email, student_course from student_table;

select * from student_table;

delete from student_table;

SET SQL_safe_updates = 0;

truncate table student_table;

describe student_table;

show tables;

update student_table
set student_course = 'c1005' where student_id=3;

select * from student_table;

delete from student_table;

select * from student_table where student_id ='3';

select * from student_table where student_id ='3' and student_course='c1002';

select * from student_table where student_id ='5' or student_course='c1002';

select * from student_table where not student_name ='prakash';

select * from student_table;

select * from student_table where student_course in ('c1004','c1003'); 

select * from student_table where student_id between 1 and 2; 

insert into student_table(student_id, student_name, Student_course, email)
values (5, "raza",'c1005','raza@hotmail.com');

insert into student_table(student_id, student_name, Student_course, email)
values (6, "jahaz",'c1007','jahaz@hotmail.com');

insert into student_table(student_id, student_name, Student_course, email)
values (7, "raza",'c1008','raza22@gmail.com');

insert into student_table(student_id, student_name, Student_course, email)
values (8, "jazzyy",'c1009','jazzyy@gmail.com');

insert into student_table(student_id, student_name, Student_course)
values (9, "h",'c10098');

insert into student_table(student_id, student_name, Student_course)
values (10, "io",'c10095');

select * from student_table where email is null;