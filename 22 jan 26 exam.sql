create table emp11294647 (
e_id number ,
e_name varchar(50),
salary number,
hire_date date,
adress varchar(100),
constraint hr_emp1294647_e_id_pk primary key (e_id));

desc emp11294647; 

select department_id, avg(salary)
from employees
group by department_id
having max(salary)>12000;

select avg(e.salary)
from employees e
join departments d
on e.department_id=d.department_id
where department_name='Sales';

select first_name,last_name,hire_date
from employees
order by hire_date;     




