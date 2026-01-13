update students set cell_no='01921919104',stu_dob='10-oct-2000',blood_grp='AB+' where stu_id=5;
commit;
update students set cell_no='019490805',stu_dob='07-aug-1999',blood_grp='o+' where stu_id=6;
select*
from students;

create table emp1122(
emp_id number,
emp_name varchar(30) not null,
emp_email varchar(60)not null,
emp_salary number (10,2),
emp_cell varchar (15),

constraint hr_emp1122_emp_id_pk primary key (emp_id),
constraint hr_emp1122_emp_email_uq unique (emp_email),
constraint hr_emp1122_emp_cell_uq unique (emp_cell)
);

insert into emp1122 (emp_id,emp_name,emp_email,emp_salary,emp_cell)
values (1,'sabbir','sabbir@gmail.com','100000','678324329');
insert into emp1122 (emp_id,emp_name,emp_email,emp_salary,emp_cell)
values (2,'mahbub','mahbubsabbir@gmail.com','110000','453567576');
insert into emp1122 (emp_id,emp_name,emp_email,emp_salary,emp_cell)
values (3,'rehana','rehana@gmail.com','120000','786587687');
insert into emp1122 (emp_id,emp_name,emp_email,emp_salary,emp_cell)
values (4,'jui','jui@gmail.com','130000','56765786878');
insert into emp1122 (emp_id,emp_name,emp_email,emp_salary,emp_cell)
values (5,'emon','emon@gmail.com','140000','6737868769');

commit;
select*from emp1122;

