use batch2;

create table Wed(name varchar(20) not null,
ID int primary key, age int not null,
country varchar(10) not null
);

insert into Wed values('Adarsh',7,20,'Pakistan'),
('Hemanth',20,28,'Bangladesh'),
('Anush',24,60,'Afghan'),
('Sagar',30,40,'Japan'),
('Bhavan',25,46,'Kazak');

select * from wed;
/*when you want to search a pattern at the ending*/
select * from Wed where name LIKE '%sh';
/*when you want to search a pattern at the beginning*/
select * from Wed where name LIKE 'a%';
/*when you want to search a pattern anywhere in the middle*/
select * from Wed where name LIKE '%ha%';
select * from Wed where name LIKE '%a%';

select * from Wed;


select * from Wed order by name;

select * from Wed order by name desc;

select * from Wed order by age;

select * from Wed order by age desc;

