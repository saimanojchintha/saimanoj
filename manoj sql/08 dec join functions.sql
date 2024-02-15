use manojsaimanoj;
#joins

create table customer_id(cus_id int primary key auto_increment,cust_name  varchar(65), age int, cust_address varchar(25),salary int);
insert into customer_id values
(1,"ramesh",32,"ahmedabad",2000),
(2,"khilan",25,"delhi",1500),
(3,"kaushik",23,"kota",2000),
(4,"chaithali",25,"mumbai",6000),
(5,"hardik",27,"bhopal",8500),
(6,"komal",22,"mp",45000),
(7,"muffy",24,"indore",1000);

desc customer_id;
CREATE TABLE parent (
    id INT NOT NULL,
    PRIMARY KEY (id)
) ;
desc parent;
CREATE TABLE child (
    id INT,
    parent_id INT,
    FOREIGN KEY (parent_id)
        REFERENCES parent(id)
        
);
desc child;
create table order_tb(order_id int primary key auto_increment,
date date,
cust_id int,
amount int,
FOREIGN KEY (cust_id)
        REFERENCES customer_id(cus_id)
	);
    desc order_tb;
	
    
insert into order_tb values
(102,'2009-10-08',3,3000),
(100,'2009-10-08',3,1500),
(101,'2009-11-20',2,1560),
(103,'2009-05-20',4,2060);

#inner
select cust_name,cus_id,date,amount
from customer_id inner join order_tb
on customer_id.cus_id = order_tb.cust_id ;

#left
select cust_name,cus_id,date,amount
from customer_id left join order_tb
on customer_id.cus_id = order_tb.cust_id ;

# right

select cust_name,cus_id,date,amount
from customer_id right join order_tb
on customer_id.cus_id = order_tb.cust_id ;

# cross
select cust_name,cus_id,date,amount
from customer_id cross join order_tb;


