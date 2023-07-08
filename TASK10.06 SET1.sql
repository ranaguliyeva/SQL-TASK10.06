/*SET1
1.DDL Operation (CREATE)
Write a SQL statement to create a new table named 'new_employees' that has the same structure as the 'employees' table.*/
create table new_employees as
select * from employees
where 1=0;

select * from new_employees;

/*DML Operation (INSERT)
2.Write a SQL statement to insert a new record into the 'employees' table. Use your own values for the data.*/
insert into employees
values(99, 'Jack', 'Dannel', 'JDANNEL', '515.123.4466','28-FEB-03', 'IT_PROG', 10000, 0.1, 100, 30);

/*SELECT Statement
3.Write a SQL statement to select all employees' first and last names and their department ids 
from the 'employees' table*/ 
select first_name, last_name, department_id
from employees;

/*Single Function (Character)
4.Write a SQL statement to display the first name of all employees in lower case.*/
select lower(first_name) from employees;

/*Aggregate Function
5.Write a SQL statement to find the average salary in the 'employees' table.*/
select avg(salary) from employees;
