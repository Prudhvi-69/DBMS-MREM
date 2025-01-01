use Batch1;

create table emp( ID int primary key,name varchar(20) not null,
salary int );

insert into emp values(1,'Likitha',30000),(13,'Bharath',100000),
(15,'Yashwanth',20003),(16,'Aishwarya',50000),
(20,'Varsha',10000),(27,'Lokesh',1000000);




create table salaryLogData(LogID int identity primary key,
ID int, oldSalary int, newSalary int);

create trigger trg 
ON emp
AFTER update
AS
BEGIN 
	INSERT into salaryLogData(ID,oldSalary,newSalary)
	select i.ID,
	d.salary as OldSalary,
	i.salary as NewSalary
	from  
	inserted i
	JOIN deleted d ON i.ID=d.ID
end;


select * from emp;  -- data inside the table
select * from salaryLogData; -- empty table until update

insert into emp values(8,'Abhinav',50000); -- no trigger
update emp set salary=100000 where name='Varsha'; -- trigger activates
-- Trigger has been created only on update, so it'll be activated 
-- upon UPDATE command and you'll see 2 rows affected for one Update

