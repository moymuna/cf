CREATE table students(stu_id number(7) not null ,
stu_name varchar2(26) not null,
stu_email varchar2(50) not null,
stu_dob date,
cell_no varchar2(11),
blood_grp varchar(3),

CONSTRAINT demo_students_stu__id_pk_ primary key (stu_id));
commit ;

insert into students(stu_id, stu_name,stu_email,stu_dob,cell_no,blood_grp)
values (1,'sadia','sadia@gmail.com','27 dec 2000','23534643','o+');

commit;

select *
from students;

create table emp (
emp_id number,
emp_name varchar(50) default 'jee',
salary number default 1000,
email varchar(30),
dob date DEFAULT sysdate-360 ,

constraint demo_emp_email_uk_ unique(email));

insert into emp (emp_id,email)
values (1,'s@g.c');
 
 select *
 from emp;
 
 COMMIT;
 
 create table emp1294647(
 e_id number,
 e_name VARCHAR(30),
 salary number,
 hire_date date,
 address varchar(60),
 constraint demo_emp1294647_e_id_pk primary key (e_id));
 
 insert into emp1294647( e_id,e_name,salary,hire_date,address)
 values (1,'stark',100000,'1 jan 2025','dhaka');
 insert into emp1294647( e_id,e_name,salary,hire_date,address)
 values (2,'rose',100000,'1 jan 2025','dhaka');
 insert into emp1294647( e_id,e_name,salary,hire_date,address)
 values (3,'gardian',100000,'1 jan 2025','dhaka');
 insert into emp1294647( e_id,e_name,salary,hire_date,address)
 values (4,'gomej',100000,'1 jan 2025','dhaka');
 insert into emp1294647( e_id,e_name,salary,hire_date,address)
 values (5,'devid',100000,'1 jan 2025','dhaka');
 
 select *
 from emp1294647;
 
 commit;

 