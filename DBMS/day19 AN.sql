use Batch1;

select * from employees where salary IN (
	select max(salary) from employees group by Dept)

select * from employees E where salary IN (
	select max(salary) from employees where dept=E.dept)


create INDEX ind_on_dept ON employees(Dept);


select * from employees;	 




