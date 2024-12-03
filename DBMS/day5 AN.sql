use batch1;

create table Saturday(ID int primary key, name varchar(20) not null,
mobile char(10) unique, gender char(1) check (gender in ('f','m','o')));

insert into Saturday values(18,'Harika','6125861324','f');
insert into Saturday values(20,'Nagesh','5874861324','m');
insert into Saturday values(19,'Nikhil','8964861324','m');
insert into Saturday values(50,'Balu','9634861324','o');


select * from Saturday;


create table Sat(ID int primary key, name varchar(20) not null,
mobile char(10) unique, gender char(1) check (gender in ('f','m','o')),
age int check (age>=18 and age<=25));

insert into Sat values(18,'Harika','6125861324','f',24);
insert into Sat values(20,'Nagesh','5874861324','m',18);
insert into Sat values(19,'Nikhil','8964861324','m',23);
insert into Sat values(50,'Balu','9634861324','o',19);

select * from Sat;

/*Between is going to keep the input values in the range*/
create table task(ID int primary key, name varchar(20) not null,
mobile char(10) unique, gender char(1) check (gender in ('f','m','o')),
age int check (age>=18 and age<=25),marks int check (marks between 
0 and 100));

insert into task values(18,'Harika','6125861324','f',24,100);
insert into task values(20,'Nagesh','5874861324','m',18,69);
insert into task values(19,'Nikhil','8964861324','m',23,96);
insert into task values(50,'Balu','9634861324','o',19,50);
insert into task values(16,'Nithin','8884861324','m',21,0);

select * from task;



create table asks(ID int primary key, name varchar(20) not null,
mobile char(10) unique, gender char(1) check (gender in ('f','m','o')),
age int check (age>=18 and age<=25),marks int check (marks between 
0 and 100));

insert into asks values(18,'Harika','6125861324','f',24,100),
(20,'Nagesh','5874861324','m',18,69),
(19,'Nikhil','8964861324','m',23,96),
(50,'Balu','9634861324','o',19,50),
(16,'Nithin','8884861324','m',21,0);


alter table asks add agee int;

alter table tasks add constraint shouldbe check (agee>=18 and agee<=25);


insert into asks values(108,'Haarika','625861324','f',24,100,29);
select * from asks;
insert into asks values(8,'Haaarika','62561324','f',24,100,9);

alter table asks drop column agee;
select * from asks;

alter table asks add agee int;

alter table asks add constraint agee check (agee between 18 and 25);
insert into asks values(80,'Haaaarika','623561324','f',24,100,9);
select * from asks;



/*
create table (ID int primary key, name varchar(20) not null,
mobile char(10) unique, gender char(1) check (gender in ('f','m','o')),
age int check (age>=18 and age<=25),marks int check (marks between 
0 and 100));
*/



create table take(ID int primary key, name varchar(20) not null,
mobile char(10) unique, gender char(1) check (gender in ('f','m','o')),
age int check (age>=18 and age<=25),marks int check (marks between 
0 and 100));

insert into take values(18,'Harika','6125861324','f',24,100),
(20,'Nagesh','5874861324','m',18,69),
(19,'Nikhil','8964861324','m',23,96),
(50,'Balu','9634861324','o',19,50),
(16,'Nithin','8884861324','m',21,0);
/*Add a new column in the table*/
alter table take add agee int;
/*Adding a new constraint on a specific column in the table*/
alter table take add constraint aged check (agee between 18 and 25);
/*try inserting invalid data onto the constraint*/
insert into take values(800,'arika','623561324','f',24,100,9);
/*check if the invalid data has been inserted into the table*/
select * from take;
/*insert the valid data by constraints into the table*/
insert into take values(800,'arika','623561324','f',24,100,19);
/*Removing the constraint on the column*/
alter table take drop constraint aged;
/*inserting an invalid value after constraint is removed*/
insert into take values(1800,'Karika','23561324','f',24,100,2);




create table surtur(ID int primary key, name varchar(20) not null,
mobile char(10) unique, 
gender char(1) check (gender in ('f','m','o')),
age int check (age>=18 and age<=25),
marks int check (marks between 0 and 100),
result varchar(10) 
check ((result='pass' and marks>=35) or (result='fail' and marks<35))
);



