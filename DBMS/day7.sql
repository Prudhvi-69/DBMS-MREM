use Batch1;

create table Person(
sn int identity(1,4), name varchar(20) not null, ID int primary key,
mobile char(10), gender char(1) 
check (gender in ('f','m','o'))
);

drop table Person;

insert into Person(name,ID,mobile,gender) values('Sujith',21,'6451884516','m'),
('Sujatha',22,'6451884517','o'),
('Ram',13,'5851884516','m'),
('Ramya',16,'9551884516','f'),
('Rohith',23,'8881884516','m');

select * from Person;

select * from Person order by sn;






select * from Person order by ID desc;



create table Persons(
sn int identity(1,4), name varchar(20) not null, ID int primary key,
mobile char(10), gender char(1) 
check (gender in ('f','m','o'))
);

insert into Persons(name,ID,gender) values('Sujith',21,'m'),
('Sujatha',22,'o'),
('Ram',13,'m'),
('Ramya',16,'f'),
('Rohith',23,'m');


select * from Persons;
/*Retrieving data where name is ending with h*/
select * from Persons where name like '%h'
/*Retrieving data where name is starting with su*/
select * from Persons where name like 'su%'
/*Retrieving data where name is containing m*/
select * from Persons where name like '%m%'
/* When you use LIKE, you can give single character
or set of characters for checking the pattern.
*/






