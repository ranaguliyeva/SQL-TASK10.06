/*SET 9
1. **SELECT with JOIN and USING clause**
Write a SQL statement to display the employee's full name and department name using the 'department_id' field.*/
select concat(e.first_name, e.last_name), d.department_id
from employees e join departments d
on e.department_id=d.department_id;

/*2. **SELECT with CASE statement**
Write a SQL statement to categorize employees' salaries into 'Low', 'Medium' and 'High'.*/
select employee_id, salary,
CASE
    WHEN salary between 2000 and 5000 THEN 'Low'
    WHEN salary between 5001 and 10000 THEN 'Medium'
    ELSE 'High'
END salary_category
from employees;

/*3. **SELECT with Subquery in SELECT clause**
Write a SQL statement to display the department name and the highest salary in each department.*/
select d.department_name, max(e.salary) from employees e
join departments d on e.department_id=d.department_id
group by d.department_name;

/*4. **SELECT with WHERE and NULL clause**
Write a SQL statement to find all employees with no commission_pct.*/
select * from employees
where commission_pct is null;

/*5. **SELECT with GROUP BY and ROLLUP clause**
Write a SQL statement to show the total salary, grouped by department and job title.*/
select sum(salary), department_id, job_id from employees
group by rollup (department_id, job_id);