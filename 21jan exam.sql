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
 