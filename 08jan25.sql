desc employees;
desc departments;
select first_name,last_name,salary,job_id,department_name,location_id
from employees
natural join departments;

desc jobs;

select * 
from jobs;

select employee_id, first_name, job_id,salary,job_title,max_salary
from employees
natural join jobs;

select employee_id,last_name,location_id,department_id
from employees join departments
using (department_id) ;

select e.first_name,e.last_name,e.salary,e.department_id,
d.department_id,d.department_name,d.location_id,
l.location_id, l.city,l.country_id,
c.country_name
from employees e
join departments d
on d.department_id=e.department_id
join locations l
on l.location_id=d.location_id
join countries c
on c.country_id=l.country_id;

CREATE TABLE job_grades (
grade 		CHAR(1),
lowest_sal 	NUMBER(8,2) NOT NULL,
highest_sal	NUMBER(8,2) NOT NULL
);

ALTER TABLE job_grades
ADD CONSTRAINT jobgrades_grade_pk PRIMARY KEY (grade);

INSERT INTO job_grades VALUES ('A', 1000, 2999);
INSERT INTO job_grades VALUES ('B', 3000, 5999);
INSERT INTO job_grades VALUES ('C', 6000, 9999);
INSERT INTO job_grades VALUES ('D', 10000, 14999);
INSERT INTO job_grades VALUES ('E', 15000, 24999);
INSERT INTO job_grades VALUES ('F', 25000, 40000);

COMMIT;

select * from job_grades;

select e.last_name,e.salary,j.grade
from employees e 
join job_grades j
on e.salary 
between j.lowest_sal and j.highest_sal;







