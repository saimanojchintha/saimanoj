use superstores;
select * from cust_dimen;
select * from market_fact;
select * from orders_dimen;
select * from prod_dimen;
select * from shipping_dimen;


alter table cust_dimen modify column cust_id varchar(65);
desc cust_dimen;
alter table cust_dimen add primary key(cust_id);
desc cust_dimen;

##Task 2:- Basic & Advanced Analysis

#1 Write a query to display the Customer_Name and Customer Segment using alias 
#name “Customer Name", "Customer Segment" from table Cust_dimen.
SELECT Customer_Name AS 'Customer Name',Customer_Segment AS 'Customer Segment'FROM Cust_dimen;

#2 Write a query to find all the details of the customer from the table cust_dimen order by desc
select * from cust_dimen order by cust_id desc;

#3 Write a query to get the Order ID, Order date from table orders_dimen where ‘Order Priority’ is high.
select order_id,order_date from orders_dimen where order_priority = 'high';

#4 Find the total and the average sales (display total_sales and avg_sales) 
select avg(sales) as average,sum(sales) as total_sales from market_fact;

#5. Write a query to get the maximum and minimum sales from maket_fact table.
select max(sales) as maximum, min(sales) as minimum from market_fact;

#6. Display the number of customers in each region in decreasing order of no_of_customers. The result should contain columns Region, no_of_customer
SELECT region, COUNT(Cust_id) AS 'no_of_customers'FROM cust_dimen GROUP BY region ORDER BY COUNT(Cust_id) DESC;

#7. Find the region having maximum customers (display the region name and max(no_of_customers)
select region,count(cust_id) as no_of_customers from cust_dimen group by region order by cust_id desc limit 1;

#8. Find all the customers from Atlantic region who have ever purchased ‘TABLES’ and the number of tables purchased
 #(display the customer name, no_of_tables purchased) 
 
 #9 Find all the customers from Ontario province who own Small Business. (display the customer name, no of small business owners)
 select customer_name,province,customer_segment from cust_dimen where region='ontario' and customer_segment='small business';
 
 #10 Find the number and id of products sold in decreasing order of products sold (display product id, no_of_products sold)
 select prod_id,sum(order_quantity) from market_fact group by prod_id order by  order_quantity desc ;

#11. Display product Id and product sub category whose produt category belongs to Furniture and Technlogy.
# The result should contain columns product id, product sub category
select prod_id,product_sub_category from prod_dimen where product_category in ('furniture' and'technology');

# 12 Display the product categories in descending order of profits (display the product category wise profits i.e. product_category, profits)?

#13 . Display the product category, product sub-category and the profit within each subcategory in three columns
#14 Display the order date, order quantity and the sales for the order.
#15 Display the names of the customers whose name contains the 
# i) Second letter as ‘R’
#ii) Fourth letter as ‘D
select customer_name from cust_dimen where customer_name like '_r%';
select customer_name from cust_dimen where customer_name like '___d%';

#16 Write a SQL query to to make a list with Cust_Id, Sales, Customer Name and their region where sales are between 1000 and 5000.

#17. Write a SQL query to find the 3rd highest sales.
select sales from market_fact order by sales desc limit 2,1;

#Where is the least profitable product subcategory shipped the most? For the least profitable product sub-category, display the region-wise no_of_shipments and the 
#profit made in each region in decreasing order of profits (i.e. region, no_of_shipments, profit_in_each_region)