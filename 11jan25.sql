 select employee_id,last_name,department_id
from employees
where department_id in(select department_id
from employees
where last_name like '%u%' );

select last_name,department_id, job_id
from employees
where department_id in (select department_id
from departments
where location_id=1700);



select department_id
from employees
natural join departments
where location_id=1700;

select department_id,location_id
from departments
where location_id =1700;