create table emp1294647(
emp_id number,
emp_name varchar(30),
emp_email varchar(30),
cell_no varchar(15),
hire_date date, 
CONSTRAINT hr_emp1294647_emp_id_pk primary key (emp_id));

alter table emp1294647
add constraint hr_emp1294647_emp_email_uq unique (emp_email);

create sequence emp1294647_emp_id_sq
start with 1
increment by 1
maxvalue 999999999;

insert into emp1294647 ( emp_id,emp_name,emp_email,cell_no,hire_date)
values (emp1294647_emp_id_sq.nextval,'jak','jak@gmail.com','123456789',sysdate);

insert into emp1294647 ( emp_id,emp_name,emp_email,cell_no,hire_date)
values (emp1294647_emp_id_sq.nextval,'rose','rose@gmail.com','123456789',sysdate);

insert into emp1294647 ( emp_id,emp_name,emp_email,cell_no,hire_date)
values (emp1294647_emp_id_sq.nextval,'stark','stark@gmail.com','123456789',sysdate);

alter table emp1294647
add blood_grp varchar  (5);

alter table emp1294647
modify emp_name not null;

alter table emp1294647
modify cell_no  varchar(20) not null;

select *
from emp1294647;
desc emp1294647;

update emp1294647 set (blood_grp) = ('o+')
where emp_id=1;
update emp1294647 set (blood_grp) = ('AB+')
where emp_id=2;
update emp1294647 set (blood_grp) = ('AB-')
where emp_id=3;

commit;

create view emp_com
as select last_name,salary,commission_pct
from employees
where commission_pct is not null
order by salary ,commission_pct;
select *
from emp_com;

create view sadia
 AS select initcap(last_name) "Last Name", length(last_name ) "Length"
 from employees
where last_name like 'J%'or last_name like 'M%'or last_name like 'A%' 
order by 1;


