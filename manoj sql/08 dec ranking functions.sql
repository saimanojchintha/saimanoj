use manojsaimanoj;

CREATE TABLE window_practice( 
    Employee_Name VARCHAR(45) NOT NULL,  
    Year INT NOT NULL,  
	Country VARCHAR(45) NOT NULL,  
    Product VARCHAR(45) NOT NULL,  
    Sale DECIMAL(12,2) NOT NULL,  
    PRIMARY KEY(Employee_Name, Year)  
); 
INSERT INTO window_practice(Employee_Name, Year, Country, Product, Sale)  
VALUES('Joseph', 2017, 'India', 'Laptop', 10000),  
('Joseph', 2018, 'India', 'Laptop', 15000),  
('Joseph', 2019, 'India', 'TV', 20000),  
('Bob', 2017, 'US', 'Computer', 15000),  
('Bob', 2018, 'US', 'Computer', 10000),  
('Bob', 2019, 'US', 'TV', 20000),  
('Peter', 2017, 'Canada', 'Mobile', 20000),  
('Peter', 2018, 'Canada', 'Calculator', 1500),  
('Peter', 2019, 'Canada', 'Mobile', 25000); 

select * from window_practice;

# row_number
select employee_name,year,product,country,
row_number() over(order by year) as rows_number
from window_practice;

select employee_name,year,product,country,
row_number() over(partition by year) as rows_number
from window_practice;



# rank

select employee_name,year,product,sale,country,
rank() over(partition by year order by sale) as rank_number 
from window_practice;

select employee_name,year,product,sale,country,
rank() over(order by country) as rank_number 
from window_practice;

# dense_rank

select employee_name,year,product,sale,country,
dense_rank() over(partition by year order by sale) as rank_number 
from window_practice;



