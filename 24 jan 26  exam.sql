create table emp12946477 (
e_id number,
e_name varchar(100),
salary number(8,2),
hire_date date,
address varchar(100),
constraint hr_emp12946477_e_id_pk primary key (e_id)
);
desc emp12946477;

alter table emp12946477
add department_id number ;

alter table emp12946477
add dept_name varchar (20);

insert into emp12946477 (e_id,e_name,salary,hire_date,address,dept_name,department_id)
values (1,'kim-jong-un',200000,'19 dec 1990','north koria','sequriey',1);

create view emp_info
as select e_name,dept_name,salary,department_id
from emp12946477
where department_id=80;

create sequence emp12946477_e_id_sq
start with 2
increment by 1
maxvalue 999999;

insert into emp12946477 (e_id,e_name,salary,hire_date,department_id)
select emp12946477_e_id_sq.nextval,first_name,salary,hire_date,department_id
from employees
where department_id=80;

select* from emp12946477;


