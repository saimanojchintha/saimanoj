use manoj;

# finding ascii value
select ascii('sai'),ascii('manoj');
select ascii('s');

# finding char values
select char(115,97,105);

# to get binary number
SELECT BIN(12);

# bit_length
select bit_length("mitraz");

# to get char_length
select char_length("saimanoj");
select length("sai manoj");

# to add strings
select concat('iam','a','good','boy');
SELECT CONCAT_WS('!','1st string','2nd string');

# to get nth element
select elt(4,'sai',1,'manoj',2);
select elt(5,'sai',1,'manoj',2);

# exportset
SELECT EXPORT_SET(5,'1','0',',',3);

# to get index position
select field('ank','ant','bat','ank');

select find_in_set('ank','ant,bat,ank');

# rounding off decimals
select format(12345.62487,2);

#converting into hexa decimals
select hex(157);

# replacing some letters 
select insert('manojkumar',6,5,'suresh');

