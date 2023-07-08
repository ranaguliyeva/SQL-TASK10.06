/*1. **SELECT with Self JOIN**
Write a SQL statement to find pairs of employees who have the same job title.*/
select e1.employee_id, e1.first_name, j.job_title, e2.employee_id, e2.first_name, j.job_title
from employees e1
join jobs j on e1.job_id=j.job_id
join employees e2 on e1.job_id = e2.job_id and e1.employee_id < e2.employee_id;

/*2. **SELECT with Aggregate Function and WHERE clause**
Write a SQL statement to find the total salary of employees whose department id is 30.*/
select sum(salary) from employees
where department_id=30;

/*3. **SELECT with UNION ALL clause**
Write a SQL statement to combine the list of all department IDs in 'employees' and 'departments' table including duplicates.*/
select department_id from employees
union all
select department_id from departments;

/*4. **SELECT with NOT IN clause**
Write a SQL statement to select all employees who do not work in department 30, 50 or 80.*/
select * from employees
where department_id NOT IN (30, 50, 80);

/*5. **SELECT with Subquery in FROM clause**
Write a SQL statement to select the highest paid employee from each department.*/
select e.department_id, e.employee_id, e.first_name, e.salary from employees e
join (
select department_id, max(salary)as max_sal
from employees
group by department_id) subquery
on e.department_id=subquery.department_id and e.salary=subquery.max_sal;



