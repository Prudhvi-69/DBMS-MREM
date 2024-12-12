use batch1;

select * from mentor;

alter table mentor add salary int;

update mentor set salary=450000 where pID=1; 

update mentor set salary=5000 where pID=2; 
update mentor set salary=29000 where pID=3; 
update mentor set salary=500000 where pID=4; 
update mentor set salary=40000 where pID=5; 
update mentor set salary=2000 where pID=6; 
update mentor set salary=25000 where pID=7; 
update mentor set salary=3000 where pID=8; 
update mentor set salary=38000 where pID=9; 
update mentor set salary=1000 where pID=10; 
update mentor set salary=1500 where pID=11; 
update mentor set salary=5000 where pID=12; 

select * from mentor


select m1.name,m1.salary,m2.salary from mentor m1 JOIN mentor m2
ON m2.pID=m1.mID where m1.salary>m2.salary;






