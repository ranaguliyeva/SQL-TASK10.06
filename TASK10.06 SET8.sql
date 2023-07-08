/*SET8
1. **SELECT with multiple JOINS**
Write a SQL statement to display the employee's name, their manager's name and the department name.*/
select e.first_name as employee_name, m.first_name as manager_name, d.department_name
from employees e join employees m on e.manager_id=m.employee_id
join departments d on e.department_id=d.department_id;

/*2. **SELECT with WHERE and OR clause**
Write a SQL statement to select all employees who are either 'IT_PROG' or 'SA_REP'.*/
select * from employees e 
join jobs j on e.job_id=j.job_id
where job_title='Programmer' or job_title='Sales Representative';

/*3. **SELECT with Aggregate Function and GROUP BY clause**
Write a SQL statement to find the average salary for each job title.*/
select avg(e.salary), j.job_title from employees e
join jobs j on e.job_id=j.job_id
group by job_title;

/*4. **SELECT with Subquery in WHERE clause**
Write a SQL statement to select all employees who earn more than the average salary.*/
select * from employees 
where salary > (
select avg(salary) from employees);

/*5. **SELECT with UNION clause**
Write a SQL statement to combine the list of all department IDs in 'employees' and 'departments' table.*/
select department_id from employees
union
select department_id from departments;