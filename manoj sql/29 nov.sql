
use saimanoj;
create table emp_info(emp_id int,first_name varchar(80),last_name varchar(80),email varchar(80),phone_number varchar(80),hiredate int,job_id varchar(80),salary int,commision_pct int,
manager_id int,department_id int);

insert into emp_info values
(100,"steven","king","sking",5151234567,1987-06-17,"ad_pres",24000,0,0,90),
(101,"neena","kochar","ncochaar",5151234568,1987-06-18,"ad_vp",17000,0,100,90),
(102,"lex","dehaan","ldehaan",5151234569,1987-06-19,"ad_vp",17000,0,100,90),
(103,"alexander","hunold","ahunold",5904234567,1987-06-20,"it_prog",9000,0,102,60),
(104,"bruce","ernst","bernst",5904234568,1987-06-21,"it_prog",6000,0,103,60),
(105,"david","austin","daustin",5904234569,1987-06-22,"it_prog",4800,0,103,60),
(106,"valli","pateballa","vpatball",5904234560,1987-06-23,"it_prog",4800,0,103,60),
(107,"diana","lorentz","dlorentnz",5904235567,1987-06-24,"it_prog",4200,0,103,60),
(108,"nancy","greenberg","dgreenbe",5151244569,1987-06-25,"fl_mgr",12000,0,101,100),
(109,"daniel","faviet","dfaviet",5151244169,1987-06-26,"fl_account",9000,0,108,100),
(110,"john","chen","dchen",5151244269,1987-06-27,"fl_account",8200,0,108,100);

select * from emp_info;

-- 1.Write a query to display the names (first_name, last_name) using alias name "First Name", "Last Name"

select first_name as "First Name",last_name as "Last Name"
from emp_info;

-- 2.Write a query to get unique department ID from employee table

select distinct department_id from emp_info;

-- 3.Write a query to get all employee details from the employee table order by first name descending

select * from emp_info order by first_name DESC;

-- 4.Write a query to get the names (first_name, last_name), salary, PF of all the employees (PF is calculated as 15% of salary

SELECT  first_name, last_name, salary, salary*0.15 PF 
from emp_info;

-- 5.Write a query to get the employee ID, names (first_name, last_name), salary in ascending order of salary

select emp_id, first_name, last_name
from emp_info;
select * from emp_info order by salary DESC;

-- 6.Write a query to get the total salaries payable to employees

select sum(salary)
from emp_info;

-- 7 Write a query to get the maximum and minimum salary from employees table

select max(salary), min(salary)
from emp_info;

-- 8.Write a query to get the number of employees working with the company

#select count(*)
#from emp_info;

select count(emp_id)
from emp_info;

-- 9.Write a query to get the number of jobs available in the employees table

select count(distinct job_id) from emp_info;

-- 10 Write a query get all first name from employees table in upper case
	
select upper(first_name)
from emp_info;

-- 11 Write a query to select first 10 records from a table

select * from emp_info limit 10;

select avg(salary),count(*) from emp_info;

