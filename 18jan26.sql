alter table emp1122 
add hire_date date default sysdate;

select *
from emp1122;
desc emp1122;
desc students;

alter table students
modify cell_no varchar(14);

alter table emp1122
drop (hire_date);

alter table emp1122 read only;

alter table emp1122
add address varchar(100);

alter table emp1122 read write;

drop table emp1294647;

select*
from emp1294647;

create sequence stu_sq_stu_id
START with 8
increment by 1
maxvalue 9999999; 

insert into students (stu_id, stu_name,stu_email)
values (stu_sq_stu_id.nextval,'sabbir','sabbir@gmail.com');
insert into students (stu_id, stu_name,stu_email)
values (stu_sq_stu_id.nextval,'mahbub','mahbub@gmail.com');

select*
from students
order by stu_id;

insert into students (stu_id, stu_name,stu_email)
values (stu_sq_stu_id.nextval,'jui','jui@gmail.com');
insert into students (stu_id, stu_name,stu_email)
values (stu_sq_stu_id.nextval,'emon','emon@gmail.com');
insert into students (stu_id, stu_name,stu_email)
values (stu_sq_stu_id.nextval,'masud','masud@gmail.com');
insert into students (stu_id, stu_name,stu_email)
values (stu_sq_stu_id.nextval,'rehana','rehana@gmail.com');

delete from students
where stu_id=15;
commit;

