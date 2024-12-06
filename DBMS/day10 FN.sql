use batch1;

select * from employees;

select sum(salary) from employees;

select avg(salary) as Avg_Salary from employees;

select min(salary) as LOWESTTTTTTTTTTTTTTTTTTTTT from employees;



/*for finding the details of Employee with Min salary*/
select * from employees where salary in 
(select min(salary) from employees);

/*query to select details of the employee with highest salary*/
select * from employees where salary 
in (select max(salary) from employees);



create table Accenture(empName varchar(20) not null,
empID int primary key identity(1,1),
salary decimal(10,2) not null, 
age int not null,
exp_in_years int not null,
Levels int
);





