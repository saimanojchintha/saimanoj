drop database mainproject_db;
show databases;

create database mainproject_db;
use mainproject_db;
create table opd(opdno int primary key,
pname varchar(55),
dname varchar(55),
fee int);
desc opd;
select * from opd;

create table doctor(did int primary key,
dname varchar(65),
deparment varchar(55));
desc doctor;

create table appoint(doa date,
opdno int,
pname varchar(55),
dname varchar(65),
symptom varchar(55),
treatement varchar(65),
foreign key(opdno) references opd(opdno));  
desc appoint;
select *from appoint;

create table patient(pid int auto_increment primary key,
pname varchar(55),
padd varchar(55),
pmob varchar(55));
desc patient;
select *from patient;