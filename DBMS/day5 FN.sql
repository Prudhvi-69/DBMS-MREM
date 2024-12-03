use Batch2;

create table Saturday(ID int primary key,name varchar(20),
mobile char(10) unique, email varchar(50) unique);

insert into Saturday(name,ID,mobile,email) values('Adarsh',7,'845125458','adarsh@gmail.com');
insert into Saturday(name,ID,mobile,email) values('Santhosh',3,'854125458','santhosh@gmail.com');
insert into Saturday(name,ID,mobile,email) values('Bharath',14,'845235458','bharath@gmail.com');
insert into Saturday(name,ID,mobile,email) values('Bhavan',13,'845105458','bhavan@gmail.com');
insert into Saturday(name,ID,mobile,email) values('Anush',24,'958525458','anush@gmail.com');
/*Asta-kun, Yuno-kun, Noelle, Mimosa, Julius, Yami, Zora, Lily, Sisgoleon
Fuegoleon, Leopold, Luckk, Magna, Vanessa, Finral, Henry, Secre, */
select * from Saturday order by mobile;

cREAte table Sat(name varchar(20) NOT NULL, 
ID int primary key, mobile char(10) unique);

insert into Sat values('Swathi',8,'630216512');
insert into Sat values('Reshmi',21,'962016512');
insert into Sat values('Anush',24,'853316512');
insert into Sat(ID,mobile,name) values (224,
'756512256','Pavani');
insert into Sat(ID,mobile,name) values (2,
'988512256','Srikanth');


select * from Sat;

insert into Sat values('Swathi',88,'925316512');

select * from Sat;




create table checks(ID int primary key, name varchar(20) not null,
gender char(1) check (gender in ('f','m','o')),marks int check
(marks between 0 and 100));

insert into checks values(20,'Pavani','f',100);
insert into checks values(2,'Person4','o',75);
insert into checks values(22,'Person2','m',0);
insert into checks values(202,'Person5','m',90);
insert into checks values(212,'Priya','f',80);


select * from checks;


