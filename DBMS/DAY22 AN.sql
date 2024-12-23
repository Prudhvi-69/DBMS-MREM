use batch1;

select * from employees;

/*Creating a view to access the data of 
top 5 employees and restricting the user
to access any other's data*/
create view top_five as 
select top 5 * from employees 
order by salary desc;

-- extracting everything from view
select * from top_five;

-- extracting specific data from the view
select * from top_five 
where empName like '%e%';

-- extracting from view based on Dept
select * from top_five 
where Dept='IT';

-- extract from the table
select * from employees;

select * from employees 
where Dept='IT';

create view top_ten as 
select top 10 empName from employees
order by empName desc;




