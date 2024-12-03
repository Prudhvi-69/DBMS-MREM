use Batch1;

select * from B3;

insert into B3 values('Neha','2024-11-27',21);
insert into B3 values('Akshaya','2024-11-27',18);
insert into B3 values('Shubhangi','2021-11-11',31);
insert into B3 values('Sanku','2020-01-02',21);
insert into B3 values('Reels','2002-05-17',10);
insert into B3 values('Nagesh','1947-08-14',16);
insert into B3 values('Srinivas','2005-10-10',44);
insert into B3 values('Rasagna','2020-02-17',29);
/*Renaming one column in the output console using an alias*/
select Name,DOB,Roll as ID from B3;
/*Renaming all columns in the output console using an alias*/
select Name as peru, DOB as date, Roll as ID from B3;

select Name,DOB,Roll from B3 where name='nagesh';


select Name,DOB,Roll from B3 where roll=21;


create table MEI(name varchar(20),ID int unique);

insert into MEI values('Reels',16);
insert into MEI values('Nagesh',17);
insert into MEI values('Srinivas',44);
insert into MEI values('Rasagna',29);
insert into MEI values('Sai Krishna',53);
insert into MEI values('Aaradhana',3);
insert into MEI values('Prakash',21);
insert into MEI values('Rohan',47);

select * from MEI;

insert into MEI(name) values('Santhosh');

select * from MEI;


create table IME(name varchar(20),ID int primary key, mobile char(10) UNIQUE, 
gender char(1));

insert into IME values('Bhanu',39,'8745205652','f');
insert into IME values('Tushar',28,'4145205652','m');
insert into IME values('Akshith',8,'874585252','m');
insert into IME values('Anil',7,'9945205652','m');
insert into IME values('Aadi Reddy',10,'9999905652','m');
insert into IME values('Manasa',6,'5215205652','f');

select * from IME;
/*the below line will give error message because of Primary key*/
insert into IME(name,gender,mobile) values('Bhargavi','f','8451256525');

create table EMI(name varchar(20) NOT NULL,ID int primary key, mobile char(10) UNIQUE, 
gender char(1));

insert into EMI values('Bhanu',39,'8745205652','f');
insert into EMI values('Tushar',28,'4145205652','m');
insert into EMI values('Akshith',8,'874585252','m');
insert into EMI values('Anil',7,'9945205652','m');
insert into EMI values('Aadi Reddy',10,'9999905652','m');
insert into EMI values('Manasa',6,'5215205652','f');

select * from EMI;
/*You will get error message after the next line because no value in name*/
insert into EMI(ID,mobile) values(1,'522505652');
/*Adding a new column with a default value*/
alter table EMI add Attendance varchar(10) default 'absent';

select * from EMI;

insert into EMI values('Rohith',23,'7845123351','m','present');
insert into EMI values('Koushik',25,'8523123351','m','absent');
insert into EMI(name,ID,mobile,gender) values('Poojitha',17,'852123351','f');
/*when you dont give any value into that column, it will take the
default value assigned during column creation*/
select * from EMI;







