SELECT to_char(sysdate,'dd-month-yyyy')
FROM dual;

select to_char (sysdate,'DD"of"MM')
FROM dual;

SELECT to_char(sysdate, 'hh24:mi:ss Am')
FROM dual;

SELECT to_char(sysdate, 'ddspth month- year')
FROM dual;

SELECT to_char(sysdate, ' hh12 :mi:sssss a.m. ')
FROM dual;

SELECT to_char(sysdate, 'dd-mm-yyyy hh:mi:ss p.m. ')
FROM dual;

SELECT to_char(sysdate, 'dy dd-mon-yyyy hh24:mi:sssss am ')
FROM dual;

select commission_pct, nvl(commission_pct,0)
from employees;

select commission_pct,salary,
nvl(commission_pct,0),
nvl2(commission_pct,salary+(salary*commission_pct),salary)
from employees;

select first_name,length (first_name)"expr1",last_name,length (last_name)"expr2",
nullif(length(first_name),length (last_name))result
FROM employees;

select last_name,salary,commission_pct,
coalesce ((salary + (commission_pct*salary)),salary+2000)"new salary"
from employees;

SELECT last_name ,job_id,salary,
CASE job_id WHEN'IT_PROG' THEN 1.10*salary
WHEN 'ST_CLERK' THEN 1.15*salary
WHEN'SA_REP' THEN 1.20*salary
ELSE salary END "REVISED_SALARY"
FROM employees;

select job_id,max(salary)
from employees
group by job_id
order by 1 desc;

select max (salary),department_id,count(department_id),job_id
from employees
group by department_id ,job_id
order by 4;

select sum (count(department_id))
from employees
group by department_id;

select job_id, sum (salary) payroll
from employees
where job_id not like '%REP%'
group by job_id
having sum (salary)>13000
order by sum(salary);

select max (avg(salary))
from employees
group by department_id;
