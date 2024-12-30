use batch1;

create function addss(@value1 int,@value2 int)
returns int
begin
	return @value1+@value2
end;

select dbo.addss(10,59);

select * from employees;

--creating the procedure
create procedure top5Employees
as
begin
select top 5 * from employees order by salary desc;
end;
-- executing the procedure
exec top5Employees
-- deleting the procedure
drop procedure top5Employees














