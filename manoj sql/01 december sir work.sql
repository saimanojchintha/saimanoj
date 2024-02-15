use manojsaimanoj;
-- to find length of string
SELECT char_length('saimanoj') as char_length;

-- to add strings
SELECT concat('saimanoj','manojsai');
SELECT concat_ws('_','Skill','Development','Program') as `concat_ws`;

-- lowerr and upper case
SELECT LCASE('SRI SATHYA SAI SKILL DEVELOPMENT PROGRAM') as lowerbabu;
SELECT lower('SRI SATHYA SAI SKILL DEVELOPMENT PROGRAM');
 
SELECT ucase('hello world') as upperbabu;
SELECT upper('hello world');

-- trim,ltrim and utrim
select trim('     hare krishna     ') ;
select ltrim('      krishna krishna')as ltrim ;
select rtrim('hare hare     ') as rtrim;

-- left and right
select left('jai sree ram',4) ; 
select right('jai ganesha',7);
 

