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
create view 

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


