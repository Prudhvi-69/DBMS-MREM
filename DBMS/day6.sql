create database LetsDoIt;

use letsdoit;
create table CSE(
ID int primary key,
name varchar(20) );
create table ECE(
ID int primary key,
name varchar(20) );
create table IT(
ID int primary key,
name varchar(20) );

insert into CSE values(12,'Hemanth'),
(59,'Umesh'),(69,'Akshay');

insert into ECE values(14,'Sai Teja'),
(47,'Akash'),(420,'Vijay');

insert into IT values(29,'Sagar'),
(40,'Rohan'),(68,'Prakash');


select * from CSE;
select * from ECE;
select * from IT;



create table Library(
BookID int Primary key,
BookName varchar(20) not null,
LibrarianID int not null,
LibrarianName varchar(20) not null,
CSE_ID int,
ECE_ID int,
IT_ID int,

foreign key (CSE_ID) references CSE(ID),
foreign key (ECE_ID) references ECE(ID),
foreign key (IT_ID) references IT(ID) 

);

insert into Library values(101,'Hello',401,'LB1',1,14,29);
insert into Library values(102,'OOPS',401,'LB1',12,420,40);
insert into Library values(103,'DBMS',401,'LB1',69,420,68);
insert into Library(BookID,BookName,LibrarianID,LibrarianName,ECE_ID,IT_ID) values(104,'Python',401,'LB1',420,68);

/*(103,'DBMS',402,'LB2',3,3,3),
(104,'Python',402,'LB2',4,4,4),
(105,'DSA',403,'LB3',5,5,5);
*/

select * from Library;
/*When you want specific columns from all tables use below*/
select CSE.name, ECE.name, IT.name, 
Library.BookID,Library.BookName 
from CSE,ECE,IT,Library 
where Library.CSE_ID=CSE.ID and Library.ECE_ID=ECE.ID
and Library.IT_ID=IT.ID;
/*
CSEname ECEName    ITName   BookID BookName
Hemanth	Sai Teja	Sagar	101	Hello
Hemanth	Vijay	Rohan	102	OOPS
Akshay	Vijay	Prakash	103	DBMS
*/

/*When you want ALL columns from Library use below*/
select * from CSE,ECE,IT,Library 
where Library.CSE_ID=CSE.ID and Library.ECE_ID=ECE.ID
and Library.IT_ID=IT.ID;

/*
BID BName   LID LBN CID EID ITID

101	Hello	401	LB1	12	14	29
102	OOPS	401	LB1	12	420	40
103	DBMS	401	LB1	69	420	68
104	Python	401	LB1	NULL	420	68
*/
/*When you want Name of books taken by CSE People use below*/
select Library.BookName from Library,CSE 
where Library.CSE_ID=CSE.ID;
/*
BookName
Hello
OOPS
DBMS
*/
/*When you want to check the books taken by one person use below*/
select Library.BookName from Library,CSE 
where Library.CSE_ID=CSE.ID and Library.CSE_ID=12;





