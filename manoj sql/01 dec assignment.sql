create database saimanoj;
show databases;
use saimanoj;

create table emp_info 
(emp_id int not null auto_increment unique,
first_name varchar(20),last_name varchar(20),
email varchar(30),phone_num int,hire_date date,
job_id varchar(30),salary int,
commision_pct int,manager_id int,
department_id int, primary key(emp_id));

insert into emp_info values
(101,'Neena','Kocchar','Nikochar',51512345,'1987-06-17','ad_vp',17000,0,100,90),
(102,'Lex','De Haan','Ledhaan',51512345,'1987-06-19','ad_vp',17000,0,100,90),
(103,'Alexander','Hunold','ahunold',59042347,'1987-06-20','It_prog',9000,0,102,60),
(104,'Bruce','ernst','bernst',59042348,'1987-06-21','it_prog',6000,0,103,60),
(105,'david','Austin','daustin',59042345,'1987-06-22','it_prog',4800,0,103,60),
(106,'valli','pataballa','vpatabal',59042345,'1987-06-23','it_prog',4800,0,103,60),
(107,'Diana','Lorentz','dlorentz',59042355,'1987-06-24','it_prog',4200,0,103,60),
(108,'nancy','greenberg','ngrrenbe',51512449,'1987-06-25','fi_mgr',12000,0,101,100),
(109,'daniel','faviet','dfaviet',51512169,'1987-06-26','fi_account',9000,0,108,100),
(110,'John','Chen','jchen',51512449,'1987-06-27','fi_account',8200,0,108,100);

select *from emp_info;

-- 1.	Write a query to update the portion of the phone_number in the
-- employees table, within the phone number the substring '123' will be replaced by '999'

update emp_info
set phone_num=replace(phone_num,'123','999')
where phone_num like '%123%';

-- 2.Write a query to get the details of the employees where the length of the first name greater than or equal to 8

select * from emp_info where length(first_name)>=8;

-- 3.	Write a query to append '@example.com' to email field.

UPDATE emp_info
SET email = CONCAT(email, '@example.com');

select * from emp_info;

-- 4.Write a query to get the employee id, first name and hire month from hire_date [ Hint: Use mid() ]

select emp_id,first_name,mid(hire_date,6) as hire_month from emp_info;

-- 5 Write a query to get the employee id, email id (discard the last three characters).

select emp_id,left(email,length(email) - 4 ) from emp_info;

-- 6 Write a query to find all employees where first names are in upper case.


-- 7.Write a query to extract the last 4 character of phone numbers.

select right(phone_num, 4) from emp_info;

-- 8.Write a query to display the length of first name for employees where last name contain character 'c' after 2nd position

SELECT first_name, last_name FROM emp_info WHERE INSTR(last_name,'C') > 2;

#select first_name,last_name from emp_info where last_name like '__%c';

-- 9.	Write a query that displays the first name and the length of the first name for all employees whose name starts with the letters 'A', 'J' or 'M'. 
-- Give each column an appropriate label. Sort the results by the employees' first names.

select first_name ,
length(first_name) 
from emp_info 
where first_name like 'a%' or first_name like 'j%' or first_name like 'm%' order by first_name;

-- 10 Write a query to display the first name and salary for all employees. 
# Format the salary to be 10 characters long, left-padded with the $ symbol. Label the column SALARY.



