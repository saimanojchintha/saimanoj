use manojsaimanoj;
create table customers
(customer_id int primary key,
customer_name varchar(80) not null,
city varchar(80) not null,
grade int not null,
salesman_id int not null);

insert into customers values
(3002,'Nick Rimando','New York',100,5001),
(3007,'Brad Davis','New York',200,5001),
(3005,'Graham Zusi','California',200,5002),
(3008,'Julian Green','London',300,5002),
(3004,'Fabian Johnson','Paris',300,5006),
(3009,'Geoff Cameron','Berlin',100,5003),
(3003,'Jozy Altidor','Moscow',200,5007);

select * from customers;

#1.Write a SQL query to locate the details of customers with grade values above 100. Return customer_id, cust_name, city, grade, and salesman_id.
select customer_id,customer_name,city,grade,salesman_id  from customers where grade > 100 ; 

#2.	Write a SQL query to find all the customers in ‘New York’ city who have a grade value above 100
#Return customer_id, cust_name, city, grade, and salesman_id

select * from customers where city = 'New York' and  grade > 100 ;

#3.	Write a SQL query to find customers who are from the city of New York or
#have a grade of over 100. Return customer_id, cust_name, city, grade, and salesman_id

select * from customers where city = 'New York' or  grade > 100 ;

#4.	Write a SQL query to find customers who are either from the city 'New York' or who do not have a grade 
#greater than 100.Return customer_id, cust_name, city, grade, and salesman_id.

select * from customers where city = 'Newyork' or not(grade > 100); 

#5 Write a SQL query to identify customers who do not belong to the city of 'New York' or have a grade value
 #that exceeds 100. Return customer_id, cust_name, city, grade, and salesman_id

select * from customers where not (city = 'New York' or  grade  > 100) ;





-- ASSIGNMENT 2
 create table orders (order_no int primary key,purchase_amount float,order_date date,customer_id int not null,salesman_id int not null);
 
 alter table orders
modify column purchase_amount decimal(25,5);
 
 
 insert into orders values
 (70001,150.5,'2012-10-05',3005,5002),
 (70009,270.65,'2012-09-10',3001,5005),
 (70002,65.26,'2012-10-05',3002,5001),
 (70004,110.5,'2012-08-17',3009,5003),
 (70007,948.5,'2012-09-10',3005,5002),
 (70005,2400.6,'2012-07-27',3007,5005),
 (70008,5760,'2012-09-10',3002,5001);
 
 select * from orders;
 
 #1.Write a SQL query to find details of all orders excluding those with ord_date equal to
 #'2012-09-10' and salesman_id higher than 5005 or purch_amt greaterthan 1000.Return ord_no, purch_amt, ord_date, customer_id and salesman_id. 
 
select order_no,purchase_amount,order_date,customer_id,salesman_id from orders where not order_date = '2012-09-10'and salesman_id > 5005  or purchase_amount > 1000 ;

# 2.	Write a SQL query to find details of all orders with a purchase amount less than 200 or exclude orders with an order date greater
# than or equal to '2012-02-10' and a customer ID less than 3009.Return ord_no, purch_amt, ord_date, customer_id and salesman_id.

select order_no,purchase_amount,order_date,customer_id,salesman_id from orders where purchase_amount < 200 or not(order_date >= '2012-02-10') and customer_id < 3009 ;

# 3.	Write a SQL query to find all orders that meet the following conditions. Exclude combinations of order date equal to '2012-08-17' or
#  customer ID greater than 3005 and purchase amount less than 1000.

select * from orders where not (order_date = '2012-08-17' or customer_id > 3005) and purchase_amount < 1000

#4.	Write a SQL query that displays order number, purchase amount, and the achieved and unachieved percentage (%)
# for those orders that exceed 50% of the target value of 6000.  

select order_no,purchase_amount,unacheived percentage = 6000*50%100 from orders ; 
