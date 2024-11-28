use Batch1;
create table B3(Name varchar(20), DOB DATE);

insert into B3 values('Neha','2024-11-27');
insert into B3 values('Akshaya','2024-11-27');
select * from B3;

truncate table B2;

select * from B2;
/* For dropping the table */
drop table B2;
select * from B2;
/* For deleting a specific column */
alter table B2 drop column DOB;
select * from B2;
/*For adding a new column to the table*/
alter table B2 add ID int;
select * from B2;

exec sp_rename 'byach2','B2';

SELECT * from b2;

alter table B2 drop column nAmE;

SeleCT * from byAch2;

exec sp_rename 'b2.ID','aayyDiii','COLUMN';


alter table B2 add name varchar(20),gender char(1);

SELECT * from b2;
insert into b2 values(44,'hellll','f');
insert into b2(aayydiii,gender,name) values(10,'m','oops');
SELECT * from b2;





/*
truncate table b2;
insert into b2(aayydiii,gender,name) values(10,'m','oops');
insert into b2 values(44,'hellll','f');
SELECT * from b2;
*/


alter table B3 add ID int;
select * from b3;
/*Renaming the column name with the help of sp_rename*/
exec sp_rename 'b3.ID','Roll';
select * from b3;

insert into b3(DOB,Name,Roll) values('2021-03-17','Manideep',55);
insert into b3(Roll,DOB,Name) values(12,'2027-01-14','Sanku');
insert into b3 values('Vaishnavi','2003-07-20',21);
select * from b3;
/*Updating the value at a specific place*/
update B3 set Roll=10,DOB='2020-11-11' where name='Neha';
select * from b3;

update B3 set Roll=8 where name='Akshaya';
select * from b3;
/*deleting a specific row based on condition*/
delete B3 where name='Neha'; 
select * from b3;
/*deleting all rows of the table*/
delete B3;

select * from b3;

/*Once we are done with DDL, we can move on to DML*/ 


