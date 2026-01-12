CREATE table students(stu_id number(7) not null ,
stu_name varchar2(26) not null,
stu_email varchar2(50) not null,
stu_dob date,
cell_no varchar2(11),
blood_grp varchar(3),

CONSTRAINT hr_students_stu__id_pk_ primary key (stu_id));

commit;



INSERT INTO students (stu_id,stu_name,stu_email,stu_dob,cell_no,blood_grp)
values (1,'Md.Badrul Amin','badrul@gmail.com','15-dec-1995','01709628913','B+');
commit;

INSERT INTO students (stu_id,stu_name,stu_email,stu_dob,cell_no,blood_grp)
values (2,'Md.Shimul Pramanik','pk@gmail.com','05-jan-2000','01568186408','B+');

INSERT INTO students (stu_id,stu_name,stu_email,stu_dob,cell_no,blood_grp)
values (3,'Abul Hasan','hasan@gmail.com','30-jul-1999','01726708595','A+');

INSERT INTO students (stu_id,stu_name,stu_email,stu_dob,cell_no,blood_grp)
values (4,'Moymuna Jahan Sadia','sadia@gmail.com','27-dec-2000','01775911526','o+');

INSERT INTO students (stu_id,stu_name,stu_email,stu_dob,cell_no,blood_grp)
values (5,'Md. Mishkatul Islam','mishkat@gmail.com','30-jul-1993','01776483673','B+');
commit;

INSERT into students(stu_id,stu_name,stu_email,stu_dob,cell_no,blood_grp)
VALUES (6,'Md. Tanvir','tanvir@gmail.com',sysdate-150,'01754657687','B+');
commit;

INSERT into students(stu_id,stu_name,stu_email,stu_dob,cell_no,blood_grp)
VALUES (7,'Syed Sazin','sazin@gmail.com','19- jan -2002','01754657687','B+');
commit;


SELECT *
from students;

select stu_name, to_char(stu_dob, 'fmMonth-yyyy-dd')
from students;

INSERT into students(stu_id,stu_name,stu_email,stu_dob,cell_no)
select employee_id,last_name,email,hire_date,substr(phone_number,1,11)
from employees
where last_name like '%u%';

rollback;

CREATE table emp1294647(e_id number(7)not null,
e_name VARCHAR2(26)not null,
salary varchar2(20) not null,
hire_date date,
address VARCHAR(50),
CONSTRAINT hr_emp1294647_e_id_pk primary key (e_id));

commit;

insert into emp1294647(e_id,e_name,salary,hire_date,address)
values(1,'sadia','40000','23-december-2026','manikganj,dhaka');
commit;
insert into emp1294647(e_id,e_name,salary,hire_date,address)
values(2,'maria','35000','21-sep-2026','manikganj,dhaka');

insert into emp1294647(e_id,e_name,salary,hire_date,address)
values(3,'mitu','30000','02-feb-2025','manikganj,dhaka');

insert into emp1294647(e_id,e_name,salary,hire_date,address)
values(4,'sumaya','50000','31-jan-2027','manikganj,dhaka');

insert into emp1294647(e_id,e_name,salary,hire_date,address)
values(5,'afrin','25000','15-aug-2026','manikganj,dhaka');

insert into emp1294647(e_id,e_name,salary,hire_date,address)
values(6,'toua','45000','29-march-2026','manikganj,dhaka');
commit;

select*
from emp1294647;


select avg (salary),department_id
from employees
where salary>12000;

select first_name
from employees
where first_name like 'S%';

select avg (salary)
from employees
natural join departments
where department_name ='Sales';
