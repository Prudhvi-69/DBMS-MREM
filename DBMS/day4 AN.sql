use Batch2;
create table CIDE(name varchar(20),ID int);

insert into CIDE values('Aakash',2010);
insert into CIDE values('Vinod',420);
insert into CIDE values('Koushik',29);
insert into CIDE values('Ashwini',1229);
insert into CIDE values('Harish',422);

select * from CIDE;
/* 
this is the commentsssssssssssssssssssss
enjoyyyyyyy
*/
select name,ID from CIDE;
select name as peru, ID as Roll from CIDE;

select * from CIDE where ID=422;
select * from CIDE;


cREAte table IDCE(name varchar(20), ID int, mobile char(10) UNIque);

insert into IDCE values('Aakash',2010,'852365422');
insert into IDCE values('Vinod',420,'946126545');
insert into IDCE values('Koushik',29,'845659512');
insert into IDCE values('Ashwini',1229,'651325644');
insert into IDCE values('Adarsh',7,'623651565');

insert into IDCE(ID,name,mobile) values(13,'Sagar','255984569');

insert into IDCE(name,ID) values('Akshay',26);

select * from IDCE;

