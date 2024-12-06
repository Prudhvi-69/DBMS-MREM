use batch2;

create table Thursday(ID int primary key identity(4,3),
name varchar(20), mobile bigint not null,
alt_mob char(10), gender char(1) 
check (gender in ('m','f','o')), 
CGPA decimal(10,2),
country varchar(20)
);

insert into Thursday(name,mobile,alt_mob,gender,CGPA,country)
values('Raju',8454120512,'9451555242','m',10.25,'Kazak');

insert into Thursday(name,mobile,alt_mob,gender,CGPA,country)
values('Santhosh',856120512,'7451555242','m',25.33,'Pakistan');

select * from Thursday;


