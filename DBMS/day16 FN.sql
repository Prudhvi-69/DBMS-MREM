use batch2;

create table Walmart(empID int primary key,
design varchar(20) not null,
name varchar(20) not null,
reportingID int not null);

insert into Walmart values(1,'CEO','Ajay',0),
(2,'Manager','Reshmi',1),
(3,'Manager','Pavani',1),
(4,'Employee','Swati',2),
(5,'Employee','Chandana',3),
(6,'Sub Employee','Nagendar',3),
(7,'Sub Employee','Hemanth',5),
(8,'Sub Employee','Sai Teja',6);

select * from Walmart;


/*Retrieving data from the table based on who are getting
reports from whom with their names and IDs*/

select T1.empID, T1.name as Sub_Level, T2.name as High_Level,
T1.reportingID from Walmart T1 JOIN Walmart T2
ON T1.reportingID=T2.empID;





select * from Walmart


alter table Walmart add Salary int;

select * from Walmart;

update Walmart set Salary=300000 where empID=1;

update Walmart set Salary=160000 where empID=2;
update Walmart set Salary=100000 where empID=3;
update Walmart set Salary=500000 where empID=4;
update Walmart set Salary=50000 where empID=5;
update Walmart set Salary=5000 where empID=6;
update Walmart set Salary=500000 where empID=7;
update Walmart set Salary=3000 where empID=8;


select * from Walmart;




select T1.name,T1.empID,T1.salary from Walmart T1 
JOIN Walmart T2
ON T1.reportingID=T2.empID where T1.salary>T2.salary;







