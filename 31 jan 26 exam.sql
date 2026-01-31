create table emp1294647(
e_id number,
e_name varchar (100),
salary number (8,2),
hire_date date,
address varchar (100),
constraint hr_new_emp1294647_e_id_pk primary key (e_id));

desc emp12946477;


select department_id, avg(salary)
from employees
group by department_id
having max(salary)>12000;

select first_name
from employees
where first_name like 'S%';


select avg(e.salary)
from employees e
join departments d
on e.department_id=d.department_id
where department_name='Sales';


select hire_date
from employees
order by hire_date;

