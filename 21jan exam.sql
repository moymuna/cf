select department_id, max(avg(salary))
 from employees
group by department_id;

 
 
 select first_name
 from employees
 where first_name like 'S%';
 
 select avg(e.salary)
 from employees e
 join departments d
on e.department_id=d.department_id
where department_name='Sales';
 