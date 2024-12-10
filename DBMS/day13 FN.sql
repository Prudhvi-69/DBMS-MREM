use batch2;

select * from CLASS;


/*gets the lowest ID present in the ID column from class table*/
select min(ID) as Lowest_ID from CLASS;
/*gets the highest ID present in the ID column from class table*/
select max(ID) as Highest_ID from CLASS;

/*gets the lowest marks present in the marks column from class table*/
select min(marks) as lowest_marks from CLASS
/*gets the highest marks present in the marks column from class table*/
select max(marks) as highest_marks from CLASS;


select * from CLASS order by name;

select * from CLASS order by marks;

select * from CLASS order by location desc;

/*select the top 6 names in the ascending order*/
select top 6 name from CLASS order by name;









create table employees(name varchar(20) not null,
ID int primary key, location varchar(20),
salary int not null, Dept varchar(10) not null,
DOJ DATE not null);

insert into employees values('Hemanth',10,'JNTU',28000,'Chef','2019-12-09'),
('Nithin',12,'KPHB',78000,'Dev','2022-09-06'),
('Umesh',2,'Vangapad',68000,'Resources','2021-10-06'),
('Ramakrishna',32,'Erragadda',100200,'Manager','2002-09-06'),
('Ajay',24,'Dilsukhnagar',200000,'Driver','2021-09-06'),
('Dileep',25,'Vijayawada',49000,'Plumber','2020-09-06'),
('Bhanu',28,'Jammalamadugu',20000,'Dentist','2021-09-06'),
('Pavan PA',39,'Kodad',50000,'Waiter','2020-09-16'),
('Sai Gopi',47,'Malladugu',58050,'Carpenter','2005-09-06'),
('Bhavan',38,'Patancheru',60000,'Gold Smith','1999-09-06');

select * from employees;

create table promotions(prom_ID int primary key,
empID int, salaryInc int, pDate Date);

insert into promotions values(101,12,5000,'2024-12-10'),
(102,10,3500,'2024-12-10'),
(103,47,4800,'2024-12-10'),
(104,28,6000,'2024-12-10'),
(105,2,2000,'2024-12-10'),
(106,39,2060,'2024-12-10'),
(107,69,6900,'2024-12-10'),
(108,45,2200,'2024-12-10'),
(109,109,3500,'2024-12-10'),
(110,106,5200,'2024-12-10'),
(111,520,6800,'2024-12-10'),
(112,420,6100,'2024-12-10');

select * from promotions;

select E.name,E.location,E.salary, P.prom_ID, P.salaryInc
from employees E
INNER JOIN promotions P
ON E.ID=P.empID;
