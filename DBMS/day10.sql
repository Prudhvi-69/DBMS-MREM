use batch2;

create table CLASS(name varchar(20) not null,
ID int primary key, Dept varchar(5), mobile char(10),
marks int,location varchar(20)
);

insert into CLASS values('Anush',24,'IT','78452166',74,'KPHB'),
('Kavitha',1,'CSE','885412166',80,'Medchal'),
('Arya',14,'CSD','985552166',32,'Erragadda'),
('Ashwini',29,'IT','652052166',90,'Kompalli'),
('Chandu',31,'CSI','778952166',100,'Dilsukhnagar'),
('Sai Kiran',18,'CSC','996152166',99,'Uppal X Road'),
('Reshmi',21,'CSC','885252166',99,'Manikonda'),
('Vamshi',16,'CSC','685222166',27,'Vangapadu'),
('Swathi',8,'IT','587432166',96,'KPHB'),
('Kumari',23,'CSD','968452166',69,'Banjarahills');

insert into CLASS values('Pavani',25,'CSC','874551265',5,'8')
/*retrieve everything by default with Primary key order*/
select * from CLASS;
/*retrieve everything in ascending order by name*/
select * from CLASS order by name;
/*retrieve everything in ascending order by Department*/
select * from CLASS order by Dept;
/*retrieve everything in descending order by Department*/
select * from CLASS order by Dept desc;
/*retrieve everything in ascending order by location*/
select * from CLASS order by location;
/*retrieve everything in descending order by location*/
select * from CLASS order by location desc;




