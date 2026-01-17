select *
from emp1122;
update emp1122 set (emp_name,emp_salary)=(select last_name,salary from employees where employee_id=103)
where emp_id=2;
 update emp1122 set(emp_name,emp_salary)=(select last_name,salary from employees where employee_id=120)
 where emp_id=5;
 select *
from students;

select s.stu_name,s.stu_dob,s.blood_grp,e.emp_salary
from students s
join emp1122 e
on s.stu_id=e.emp_id;

delete from students
where stu_id BETWEEN 103 
and 188;
commit;


