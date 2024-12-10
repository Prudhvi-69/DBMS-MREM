use batch1;

select * from employees;

select * from promotions;

select * from pro;

select E.empName,E.salary,E.Location, P.prom_ID, P.pDate,P.emp_ID
from employees E RIGHT OUTER JOIN promotions P
ON E.empID=P.emp_ID;

select E.empName,E.salary,E.Location, P.prom_ID, P.pDate,P.emp_ID
from employees E FULL OUTER JOIN promotions P
ON E.empID=P.emp_ID;

/*It will retrieve all the rows from Employee table and will keep
NULL values on the right side for those not matched
It will also retrieve all the rows from the Promotions table and will 
keep NULL values on the left side for those not matched
*/

create table mentor(pID int primary key,
name varchar(20), mID int);

insert into mentor(pID,name) values(1,'Sasntosh');
insert into mentor values(2,'Prakash',1),
(3,'Shiva',1),(4,'Sai Kumar',1);

insert into mentor values(5,'Rahul',2),
(6,'Hemanth',2),(7,'Koushik',2);

insert into mentor values(8,'Mahesh',3),
(9,'Naresh',3),(10,'Praveen',3);

insert into mentor values(11,'Ankita',8),
(12,'Uday',6);

select * from mentor;


select m1.Name Higher ,m2.Name Under from mentor m1
JOIN mentor m2
on m1.pID=m2.mID;

/*
What is meant by DBA?????
What is meant by DBO????? 

*/

/*Extracting specific columns from both tables by using
CARTESIAN JOIN ON employees and promotions tables*/
select E.empName,E.salary,E.Location,P.prom_ID, 
P.pDate,P.emp_ID from employees E 
CROSS JOIN promotions P 

/*Extracting all columns from both tables by using 
CARTESIAN JOIN ON employees and promotions tables*/
select * from employees CROSS JOIN promotions;






select * from promotions;

select * from employees;




