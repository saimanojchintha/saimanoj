show databases;
use manojsaimanoj;

create table sales_info(
salesman_id int primary key,
name varchar (65),
city varchar(65),
commission decimal(5,5));
desc sales_info;

insert into sales_info values
(5001,"james hoog","newyork",0.15),
(5002,"nail knite","paris",0.13),
(5005,"pit alex","london",0.11),
(5006,"mc lyon","paris",0.14),
(5007,"paul adam","rome",0.13),
(5003,"lausaon hen","san jose",0.12);

select * from sales_info;

#1 Create a view for those salespeople who belong to the city of New York. 
create view sales_peoplesss as
select name
from sales_info
where city = "newyork";
select * from sales_peoplesss;

#2.Create a view for all salespersons. Return salesperson ID, name, and city.  
create view all_guyss as
select salesman_id,name,city
from sales_info;
select * from all_guyss;

#3Create a view to count the number of salespeople in each city. Return city, number of salespersons
create view no_peoples as
select city,count(distinct salesman_id)
from sales_info 
 group by city;
select * from no_peoples;


#table 2
create table customer_info(
customer_id int primary key,
cust_name varchar(65),
city varchar(65),
grade int,
salesman_id int,
foreign key (salesman_id) references sales_info(salesman_id));
desc customer_info;

insert into customer_info values
(3002,"nick romando","newyork",100,5001),
(3007,"brad davis","newyork",200,5001),
(3005,"graham zusi","california",200,5002),
(3008,"julian green","london",300,5002),
(3004,"fabian johnson","Paris",300,5006),
(3009,"geoff cameran","berlin",100,5003),
(3003,"jozy atlidar","moscos",200,5007);

select * from customer_info;

#table 3
create table order_information(
order_no int primary key,
purchase_amount float,
order_date datetime,
customer_id int,
salesman_id int,
foreign key(salesman_id) references sales_info(salesman_id),
foreign key(customer_id) references customer_info(customer_id));
desc order_information;

insert into order_information values
(70001,150.5,'2012-10-05',3005,5002),
(70009,270.65,'2012-09-10',3001,5005),
(70002,65.26,'2012-10-05',3002,5001),
(70004,110.5,'2012-08-17',3009,5003),
(70007,948.5,'2012-09-10',3005,5002),
(70005,2400.6,'2012-07-27',3007,5001),
(70008,5760,'2012-09-10',3002,5001);
set foreign_key_checks=0;

#1.	From the Orders table, create a view to count the number of unique customers, 
#compute the average and the total purchase amount of customer orders by each date
create view tab_2 as
select count(distinct salesman_id),avg(purchase_amount),sum(purchase_amount)
from order_information;
select* from tab_2;

#2.Create a view to get the salesperson and customer by name. Return order name, purchase amount, salesperson ID, name, customer name
create view three as
select s.name,c.cust_name,o.order_no,o.purchase_amount,o.salesman_id
from sales_info as s,customer_info as c,order_information as o;
select * from three;

#3.	From the salesman and orders tables, create a view to find the salesperson who handles a customer who makes the highest 
#order of the day. Return order date, salesperson ID, name.

CREATE VIEW elitsalesman as
SELECT b.order_date, a.salesman_id, a.name
FROM salesman a, order_information b 
WHERE a.salesman_id = b.salesman_id
AND b.purchase_amount =
(SELECT MAX(purchase_amount)
FROM order_information c
WHERE c.order_date = b.order_date);
       
select *from elitsalesman;

#4.From the customer table, create a view to find all the customers who have the highest grade. Return all the fields of customer.
create view high as
select *, max(grade) 
from customer_info;
select * from high;

# 5.From the salesman and orders tables, create a view to compute the average purchase amount and 
#total purchase amount for each salesperson. Return name, average purchase and total purchase amount. (Assume all names are unique.).

create view last_one as
select name,sum(purchase_amount),avg(purchase_amount)
from sales_info,order_information
where sales_info.salesman_id = order_information.salesman_id
group by name;
select * from last_one;
