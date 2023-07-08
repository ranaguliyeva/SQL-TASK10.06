/*SET7
1. **SELECT with JOIN and ON clause**
Write a SQL statement to display the employee's full name, department name, and location id.*/
select concat(e.first_name, concat(' ', e.last_name)), d.department_name, l.location_id from employees e
join departments d on e.department_id=d.department_id
join locations l on d.location_id=l.location_id;

/*2. **SELECT with WHERE and LIKE clause**
Write a SQL statement to find all employees whose first name starts with 'A'.*/
select first_name from employees
where first_name like 'A%';

/*3. **SELECT with WHERE and IN clause**
Write a SQL statement to find all employees who work in department 10, 20 or 30.*/
select employee_id, department_id from employees
where department_id IN(10,20,30);

/*4. **SELECT with WHERE and BETWEEN clause**
Write a SQL statement to find all employees whose salary is between $5000 and $10000.*/
select * from employees 
where salary between 5000 and 10000;

/*5. **SELECT with Aggregate Function and HAVING clause**
Write a SQL statement to find the job titles with more than 5 employees.*/
select sum(employee_id), j.job_title from employees e
join jobs j on e.job_id=j.job_id
group by j.job_title
having sum(employee_id)>5;