select e.first_name,e.last_name,d.department_name,l.city,l.state_province
from employees e
join departments d
on e.department_id=d.department_id
join locations l
 on d.location_id=l.location_id;
 
 select e.first_name,e.last_name,e.salary,jg.grade
 from employees e
 JOIN job_grades jg
 on e.salary between jg.lowest_sal and jg.highest_sal ;
 
 select e.first_name,e.last_name,d.department_name,l.city,l.state_province
from employees e
join departments d
on e.department_id=d.department_id
join locations l
 on d.location_id=l.location_id
where first_name like '%z%';

select first_name,last_name,salary
from employees
where salary<(select salary
from employees
where employee_id=182);

 select e.first_name employee,m.first_name manager
 from employees e 
 join employees m
 on e.manager_id=m.employee_id;


 
  
