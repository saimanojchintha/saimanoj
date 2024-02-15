use manojsaimanoj;
select now();

# to add date
select adddate('2023-12-07', interval 31 day);
select date_add('2023-10-30', interval 61 day);

#current date,time
select current_date();
select current_time();
select current_timestamp();

# to get particula date 
select date('2001-06-13 01:05:55');

# to get particular day and day name from date

select day(current_date());
select dayname(current_date());

# to know differnce between dates
select datediff('2023-10-01','2022-10-01');

# to know date
select makedate(2001,300);

# to get hour
select hour('17:02:55');
