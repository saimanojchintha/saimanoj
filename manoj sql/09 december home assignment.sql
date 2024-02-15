use manojsaimanoj;
create table doctors(doc_id int primary key ,doc_name varchar(30),department varchar(55),noofpd_days int );
desc doctors;
insert into doctors values
(101,"jk mishra","ortho",3),
(102,"mahesh tripathi","ent",4),
(103,"ravi kumar","neuro",5),
(104,"mukesh jain","physio",3);

desc doctors;
create table patients(pat_no int primary key,
pat_name varchar (60),
department2 varchar (55),
doc_id2 int,
foreign key(doc_id2) references doctors(doc_id));

desc patients;
insert into patients values
(1,"payal","ent",102),
(2,"naveen","ortho",101),
(3,"rakesh","neuro",103),
(4,"atul","physio",104);

select * from patients;
#1 to display patno,patname and corresponding docname for each patient 

select pat_no,pat_name,doc_name
from doctors inner join patients
on doctors.doc_id = patients.doc_id2 ;

#2 to display all list of doctors whose noof pddays more thebn 3
select doc_name from doctors where noofpd_days > 3;

#3 to display docname,department,patname, and docid,from both the tables where docid is either 101 or 103

select doc_name,pat_name,department,doc_id from doctors inner join patients on
 doctors.doc_id=patients.doc_id2 where doc_id in(101,103);
 
 #4 to display total no of differnet departments from patients table
 
 select count(department2)  from patients;
 