use batch2;

select * from CLASS;

select Dept from CLASS group by Dept;

select Dept from CLASS;
/*counts no of people in each department*/
select Dept,count(*) from CLASS group by Dept;
/*write the 2 lines above*/

/*Display Dept wise no_of_people and total marks*/
select dept,count(*) as no_of_people, sum(marks) as Total
from CLASS group by Dept;

select sum(marks) as Total from CLASS;

/*write about your EX*/
select dept,count(*) as no_of_people, sum(marks) as Total,
avg(marks) as average
from CLASS group by Dept;

select * from CLASS;
