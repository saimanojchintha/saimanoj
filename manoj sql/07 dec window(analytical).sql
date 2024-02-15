use manojsaimanoj;
CREATE TABLE Sales( 
    Employee_Name VARCHAR(45) NOT NULL,  
    Year INT NOT NULL,  
	Country VARCHAR(45) NOT NULL,  
    Product VARCHAR(45) NOT NULL,  
    Sale DECIMAL(12,2) NOT NULL,  
    PRIMARY KEY(Employee_Name, Year)  
); 
INSERT INTO Sales(Employee_Name, Year, Country, Product, Sale)  
VALUES('Joseph', 2017, 'India', 'Laptop', 10000),  
('Joseph', 2018, 'India', 'Laptop', 15000),  
('Joseph', 2019, 'India', 'TV', 20000),  
('Bob', 2017, 'US', 'Computer', 15000),  
('Bob', 2018, 'US', 'Computer', 10000),  
('Bob', 2019, 'US', 'TV', 20000),  
('Peter', 2017, 'Canada', 'Mobile', 20000),  
('Peter', 2018, 'Canada', 'Calculator', 1500),  
('Peter', 2019, 'Canada', 'Mobile', 25000); 

select * from Sales;
select * from sales order by year;
select year, sum(Sale) as total_Sales
from Sales 
group by year
order by year;

# with partition
select year, sum(Sale) 
over(partition by year) as total_Sales
from Sales;
	
# without partition
select year,sale,employee_name,country, sum(Sale) 
over() as total_Sales
from Sales;

#lag
select employee_name,year,lag(sale,1)
over(order by year) as after_lagged
from sales;

#lead
select employee_name,year,lead(sale,3)
over(order by year) as after_lagged
from sales;

#first value and last values


select employee_name,year,last_value(product) over() as least_one from sales;
select employee_name,year,product,last_value(product) over(order by year) as least_one from sales;

select employee_name,year,first_value(product)over( order by year) as least_one from sales;
select employee_name,year,first_value(product)over() as least_one from sales;


