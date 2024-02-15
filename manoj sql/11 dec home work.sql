create database manojsaimanoj;
use manojsaimanoj;
create table employee(employee_id int primary key,
first_name varchar(65),
last_name varchar(65),
salary int,
joining_date datetime,
department varchar(65));
insert into employee values
(1,'Anika','Arora',100000,'2020-02-14 9:00:00','HR'),
(2,'Veena','Verma',80000,'2011-06-15 9:00:00','Admin'),
(3,'Vishal','Singhal',300000,'2020-02-16 9:00:00','HR'),
(4,'Sushanth','Singh',500000,'2020-02-17 9:00:00','Admin'),
(5,'Bhupal','Bhati',500000,'2011-06-18 9:00:00','Admin'),
(6,'Dheeraj','Diwan',200000,'2011-06-19 9:00:00','Account'),
(7,'Karan','Kumar',75000,'2020-01-14 9:00:00','Account'),
(8,'Chandrika','Chauhan',90000,'2011-04-15 9:00:00','Admin');

create table employee_bonus (
    employee_ref_id int,
    bonus_amount int,
    Bonus_date datetime,
    foreign KEY (Employee_ref_id) REFERENCES Employee(Employee_id));
insert into Employee_Bonus values

(1,5000,'2020-02-16 0:00:00'),
(2,3000,'2011-06-16 0:00:00'),
(3,4000,'2020-02-16 0:00:00'),
(1,4500,'2020-02-16 0:00:00'),
(2,3500,'2011-06-16 0:00:00');



create table Employee_title(Employee_ref_id INT,
Employee_title varchar(40),
Affective_Date datetime);
insert into Employee_Title values
(1, 'Manager','2016-02-20 0:00:00'),
(2,'Executive','2016-06-11 0:00:00'),
(8,'Executive','2016-06-11 0:00:00'),
(5,'Manager','2016-06-11 0:00:00'),
(4,'Asst. Manager','2016-06-11 0:00:00'),
(7,'Executive','2016-06-11 0:00:00'),
(6,'Lead','2016-06-11 0:00:00'),
(3,'Lead','2016-06-11 0:00:00');

#1	Display the “FIRST_NAME” from Employee table using the alias name as Employee_name
select first_name as employee_name from employee;

#2	Display “LAST_NAME” from Employee table in upper case
select upper(last_name) as last_name from employee;

#3	Display unique values of DEPARTMENT from EMPLOYEE table.
select distinct(department) from employee;

#4	Display the first three characters of LAST_NAME from EMPLOYEE table. 
select left(last_name,3) as first_three_last_name from employee;

#5.Display the unique values of DEPARTMENT from EMPLOYEE table and prints its length.
select distinct(department),length(department) from employee;
select  distinct( length(Department)),Department from Employee group by Department;

#6. Display the FIRST_NAME and LAST_NAME from EMPLOYEE table into a single column AS FULL_NAME.
select concat(first_name,Last_Name) as full_name from Employee;

#7. DISPLAY all EMPLOYEE details from the employee table order by FIRST_NAME Ascending.
select * from employee order by(first_name);

#8.Display all EMPLOYEE details order by FIRST_NAME Ascending and DEPARTMENT Descending.
select * from employee order by(first_name),department desc;

#9.Display details for EMPLOYEE with the first name as “VEENA” and “KARAN” from EMPLOYEE table.
select * from employee where first_name in("veena","karan");

#10	Display details of EMPLOYEE with DEPARTMENT name as “Admin”. 
select * from employee where department="admin";

#11.DISPLAY details of the EMPLOYEES whose FIRST_NAME contains ‘V’.
select * from employee where first_name like 'v%';

#12.DISPLAY details of the EMPLOYEES whose SALARY lies between 100000 and 500000. 
select * from employee where salary between 100000 and 500000;

#13. Display details of the employees who have joined in Feb-2020.
select * from employee where month(joining_date)=2 and year(joining_date)=2020;

#14. Display employee names with salaries >= 50000 and <= 100000.
select first_name,last_name from employee where salary between 50000 and 100000;

#Q16 DISPLAY details of the EMPLOYEES who are also Managers.
SELECT Employee.*, Employee_title.Employee_title 
FROM Employee 
JOIN Employee_title ON Employee.Employee_id = Employee_title.Employee_ref_id 
WHERE Employee_title.Employee_title = 'Manager';

#17	DISPLAY duplicate records having matching data in some fields of a table.
select employee_title,affective_date from employee_title group by employee_title,affective_date having count(*) > 1;

#18. Display only odd rows from a table. 
SELECT * FROM Employee WHERE (Employee_id % 2) != 0;
#19.Clone a new table from EMPLOYEE table. 
#20.DISPLAY the TOP 2 highest salary from a table. 
select salary from employee order by salary desc limit 1,2;

#21.DISPLAY the list of employees with the same salary.
select First_name from Employee  where Salary in(select Salary from Employee e where Employee.Employee_id<>e.Employee_id);                  

#Q22 Display the second highest salary from a table.
select salary from employee order by salary desc limit 1; 

#Q23 Display the first 50% records from a table.
SELECT * FROM employee WHERE employee_id <= (SELECT COUNT(employee_id)/2 from employee);

#24.Display the departments that have less than 4 people in it.
#25.Display all departments along with the number of people in there.
select Department,count(Employee_id) as total_people from Employee group by Department;


#Q26 Display the name of employees having the highest salary in each department.
select first_name, Salary from Employee where Salary in(select max(Salary) from Employee group by Department);

# 27 Display the names of employees who earn the highest salary. 
select first_name from employee order by salary desc limit 1;

# 28 Diplay the average salaries for each department
select department,avg(salary) as average_salaries from employee group by department;

#29.display the name of the employee who has got maximum bonus.
SELECT E.First_name, E.Last_name, B.Bonus_Amount
FROM Employee E
JOIN Employee_bonus B ON E.Employee_id = B.Employee_ref_id
WHERE B.Bonus_Amount = (SELECT MAX(Bonus_Amount) FROM Employee_bonus);

#Q30 Display the first name and title of all the employees
SELECT E.First_name, T.Employee_title
FROM Employee E JOIN Employee_title T 
ON E.Employee_id = T.Employee_ref_id;