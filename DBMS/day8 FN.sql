use batch1;

create table college(name varchar(20) not null, ID int primary key, 
gender char(1) check (gender in ('f','m','o')), mobile char(10), 
department char(4) check (department in ('CSE','ECE','IT'))
);

insert into college values('Nagesh',8,'m','874525121','CSE'),
('Srinivas',7,'m','976414512','CSE'),
('Rahul',9,'m','746516594','IT'),
('Shiva',11,'m','8524236232','ECE'),
('Abhi',13,'m','763126127','ECE'),
('Nithin',17,'m','964364511','IT');


select * from college;

select * from college where department='CSE';

select count(*) as CSE_Count from college where department='CSE';

select count(*) as ECE_Count from college where department='ECE';

select count(*) as IT_Count from college where department='IT';

select department, count(*) as Total from college group by department;

select department, count(*) as Total from college group by department 
order by department desc;



select name,ID, gender from students
where ID between 10 and 40 
order by gender;


