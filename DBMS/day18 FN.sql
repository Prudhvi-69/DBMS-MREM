use batch2;

create table Academics(ID int primary key,
name varchar(20) not null, gender char(1) not null,
location varchar(20)
);

create table Accounts(sID int, eID int, fees int,
due int, 
status varchar(10) check (status in('paid','due')),
salary int
);

create table examination(sID int, no_of_bl int, 
cgpa decimal(4,2)
);

create table Sports(sID int, sport varchar(20) not null,
medals int
);

create table Clubs(sID int, clubName varchar(20),
role varchar(20), year int 
);

insert into Academics values(21,'Reshmi','f','Manikonda'),
(7,'Adarsh','m','Bihar'),
(12,'Hemanth','m','JNTU'),
(6,'Nithin','m','Erragadda'),
(10,'Aakash','m','Vikarabad'),
(69,'Umesh','m','Kamareddy'),
(24,'Pavani','f','Medchal'),
(16,'Bhavana','f','BHEL'),
(420,'Prashanth','m','Nalgonda'),
(17,'Ranjith','m','Medchal');

insert into Accounts(sID,fees,due,status) values
(21,400000,100000,'due'),(17,70000,17000,'due'),(16,35000,0,'paid'),
(24,400000,0,'paid'),(69,100000,500000,'due'),(7,200000,0,'paid');

insert into Accounts(eID,salary) values
(222,20000),(177,35000),(100,50223),(690,69000),(262,35000);

insert into Examination values(21,9,9.5),
(7,0,9.9),
(12,0,10.0),
(6,5,9.5),
(10,13,6.5),
(69,20,2.3),
(24,0,9.0),
(16,0,9.9),
(420,10,5.5),
(17,24,5.2);


insert into Sports values(21,'Kabaddi',4),
(7,'Cricket',0),
(12,'Volleyball',69),
(10,'Kabaddi',12),
(420,'Kho-Kho',0),
(17,'Volleyball',0);

insert into Clubs values(69,'Arts','Artist',1997),
(420,'Cultural','Magician',1990),
(16,'Technical','Hacker',1897),
(24,'Culteriya','Dancer',2020),
(21,'StudentVoice','Speaker',2021),
(10,'StudentTribe','Embasiddor',2024);

select * from Academics

select * from Accounts

select * from examination

select * from Sports

select * from Clubs

/*
Extracting Names of people who are having CGPA > 7
*/

select A.name from Academics A
INNER JOIN examination E 
ON A.ID=E.sID where E.cgpa>7;



/*Extracting students with CGPA > 7 
and paid their fees without dues*/

select A.name from Academics A
INNER JOIN examination E 
ON A.ID=E.sID and E.cgpa>7
INNER JOIN Accounts Ac
ON E.sID=Ac.sID and Ac.status='paid';
/*Extract the name of Student whose CGPA > 7,
paid their fees without dues and
into Sports category
*/
select A.name from Academics A
INNER JOIN examination E 
ON A.ID=E.sID and E.cgpa>7
INNER JOIN Accounts Ac
ON E.sID=Ac.sID and Ac.status='paid'
INNER JOIN Sports S
ON Ac.sID=S.sID;


























