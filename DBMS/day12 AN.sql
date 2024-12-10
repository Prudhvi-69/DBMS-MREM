use Batch1;

select * from employees;

create table pro(names varchar(20) not null,
pro_ID int primary key, location varchar(20) not null,
work varchar(100), workHours int
);

insert into pro values('Prakash',21,'Medchal','HOD',13),
('Santhosh',22,'Medchal','Smuggler',23),
('Shiva',55,'Thoopran','Player',24),
('Nagesh',8,'KPHB','Batsman',12),
('Sai Sri',32,'Erragadda','Plumber',8),
('Sujith',69,'Secbad','Doctor',4),
('Akshaya',18,'Kompally','Nurse',9),
('Sai Kumar',4,'Dilsukhnagar','Teacher',6),
('Yashwanth',49,'Banjarahills','Caretaker',9),
('Mahesh',41,'Peddapalli','Dentist',13),
('Sudeep',27,'Moosapet','Snatcher',12),
('Ram',61,'Miyapur','Player',20);

select * from pro;


create table promotions(prom_ID int primary key, emp_ID varchar(20) not null default 000,
p_ID int not null default 000, pDate DATE);

insert into promotions(prom_ID,emp_ID,pDate) values
(701,'MR000IT046','2024-12-08'),
(702,'MR000GR001','2024-11-08'),
(703,'MR000SP007','2023-12-09');
insert into promotions(prom_ID,emp_ID,pDate) values(704,'MR000SP051','2024-05-08');
insert into promotions(prom_ID,emp_ID,pDate) values(705,'MR000SP041','2024-12-08');

select * from promotions;

insert into promotions(prom_ID,p_ID,pDate) values(706,22,'2022-09-06'),
(707,49,'2024-12-08'),(708,27,'2023-03-12'),
(709,41,'2020-03-17');


select * from employees;

select * from promotions;

select E.empName,E.salary,P.emp_ID,P.pDate from employees E
INNER JOIN promotions P
ON E.empID=P.emp_ID;

/*The above inner join is gonna perform intersection 
between Employees and Promotions and retrieve the common
records from both where matched.
*/
/*Retrieving EMployees data who got Promotions*/
select E.empName,E.salary,E.Dept,E.DOJ, P.pDate from employees E
LEFT OUTER JOIN promotions P 
ON E.empID=P.emp_ID;
/*Retrieving Procurement data who got promotions*/
select r.names,r.work,r.location, P.pDate,P.prom_ID from pro r
LEFT OUTER JOIN promotions P
ON r.pro_ID=P.p_ID;



select * from pro r
LEFT OUTER JOIN promotions P
ON r.pro_ID=P.p_ID;


/*Retrieve the names and work of procurement table with all who
got promotions, keeps the NULL for names,work for Employee Promotions*/
select r.names,r.work, P.p_ID,P.pDate from pro r
RIGHT OUTER JOIN promotions P
ON r.pro_ID=P.p_ID;







