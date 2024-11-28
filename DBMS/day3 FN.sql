use Batch2;

create table info(peru varchar(20), ID int,
DOB DATE, gender char(1));

insert into info values('ashish',11,'2003-06-17','M');

select * from info;


drop table info;
truncate table info;



select * from info;
 
alter table info drop column ID;

insert into info values('reshmi','2010-04-12','f');

select * from info;

alter table info add color varchar(10);

select * from info;

EXEC sp_rename 'info','clause';

select * from clause;

select * from info;
