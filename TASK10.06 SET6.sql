/*SET6
1. **SELECT with DISTINCT clause**
Write a SQL statement to select all distinct job titles from the 'employees' table.*/
select distinct j.job_title from employees e
join jobs j on e.job_id=j.job_id;

/*2. **SELECT with ALIAS**
Write a SQL statement to display the 'employee_id' as 'Employee ID' and 'first_name' as 'First Name' 
from the 'employees' table.*/
select employee_id as "Employee_ID", first_name as "First_Name" from employees;

/*3. **SELECT with ORDER BY clause**
Write a SQL statement to select all employees' first names, sorted in ascending order.*/
select first_name from employees
order by first_name;

/*4. **SELECT with GROUP BY clause**
Write a SQL statement to find the total salary for each job title.*/
select sum(e.salary),j.job_title from employees e
join jobs j on j.job_id=e.job_id
group by j.job_title;

/*5. **SELECT with LIMIT clause**
Write a SQL statement to select the top 5 highest earning employees.*/
select salary from employees
where rownum<=5
order by salary desc
fetch next 5 rows only;