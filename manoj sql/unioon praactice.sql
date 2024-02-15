use manojsaimanoj;
create table salesman(salesman_id int primary key, name varchar(60), city varchar(60), commission decimal(5,5)); 
insert into salesman values
(5001,"James Hoog","New York", 0.15),
(5002,"Nail Knite","Paris" ,0.13),
(5005,"Pit Alex" ,"London", 0.11),
(5006," Mc Lyon","Paris",0.14),
(5007,"Paul Adam","Rome",0.13),
(5003,"Lauson Hen","San Jose", 0.12);

select *from salesman;

create table customer(customer_id int primary key,cust_name varchar(60),city varchar(65),grade varchar(55),salesman_id int); 
insert into customer values
(3002,"Nick Rimando","New York",100,5001),
(3007,"Brad Davis","New York",200,5001),
(3005,"Graham Zusi","California",200,5002),
(3008,"Julian Green"," London", 300,5002),
(3004,"Fabian Johnson","Paris",300,5006);

select * from customer;

select salesman.name,customer.cust_name
from salesman s inner join customer c where (name,cust_id)="london"
on  where salesman salesman_id=costumer salesman_id;






