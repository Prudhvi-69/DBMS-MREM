use batch1;

select * from employees;
/*
extract names,IDs of people who salary is 
more than the average salary of all, who are
belonging to IT dept
*/

select avg(salary) from employees;
/*
Extract data of people who salary is 
more than the average salary of all, who are
belonging to HR dept
*/

select empID,empName,Dept,salary from employees 
where Dept='HR' and salary > (
select avg(salary) from employees
);




select * from employees where Dept='HR';

select * from college;



select empID,empName,Dept,salary from employees 
where Dept='HR' and empName > (
select avg(salary) from employees
);





























