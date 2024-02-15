use saimanoj;
SELECT * FROM employs;

#1.	Write a query to find the name (first_name, last_name) of the employees who are managers
select concat(first_name," ",last_name) as name,manager_id from employs;

#2.	Write a query to find the name (first_name, last_name) of all employees who works in the IT department.
select first_name,last_name from employs
where job_id in (select job_id from employs
where job_id = 'it_prog');
#3 Write a query to find the name (first_name, last_name) and the salary of the employees who have a higher salary than the employee whose last_name=’Diana’
select first_name,last_name,salary from employs
where salary > (select distinct(salary) from employs where first_name='diana'); 

#4.	Write a query to find the name (first_name, last_name), and salary of the employees whose salary is greater than the average salary
select first_name,last_name ,salary from employs
where salary > ( select avg(salary) from employs);

#5.	Write a query to find the name (first_name, last_name), and salary of the employees
# whose salary is greater than the average salary of all departments
select first_name,last_name,salary,department_id from employs
where salary > all (select avg(salary) from employs group by department_id);

#Write a query to find the name (first_name, last_name) and salary of the employees who earn a salary that
# is higher than the salary of all the Shipping Clerk (JOB_ID = 'IT-PROG). Sort the results of the salary of the lowest to highest.

select first_name,last_name,salary,job_id from employs
where salary > all(select salary where job_id='it_prog')
order by salary;


create table student_grade(
id int primary key,
name varchar(65),
score int);
desc student_grade;
insert into student_grade values
(1,'simisola',60),
(2,'ivan',80),
(3,'metodija',52),
(4,'callum',98),
(5,'leia',84),
(6,'aparecdic',82),
(7,'ursula',69),
(8,'ramazan',78),
(9,'corona',87),
(10,'alise',57),
(11,'galadriel',89),
(12,'merel',99),
(13,'cherice',55),
(14,'nithya',81),
(15,'elsad',71),
(16,'liisi',90),
(17,'johanna',90),
(18,'anfisa',90),
(19,'ryosuke',97),
(20,'sakchai',61),
(21,'elbert',63),
(22,'katelyn',51);
select*from student_grade;

select id,name,score,
CASE  
when Score >= 94 THEN 'A'
when Score >= 90 THEN 'A-' 
when Score >= 87 THEN 'B+' 
when Score >= 83 THEN 'B' 
when Score >= 80 THEN 'B-' 
when Score >= 77 THEN 'C+' 
when Score >= 73 THEN 'C' 
when Score >= 70 THEN 'C-' 
when Score >= 67 THEN 'D+' 
when Score >= 60 THEN 'D'  
else 'F'  
end as grade 
from student_grade;
