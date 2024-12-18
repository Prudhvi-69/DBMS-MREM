use batch1;



select * from employees where Dept = (
SELECT top 1 DEPT FROM employees GROUP BY Dept
order by avg(salary));


/*Extracting data of employees whose salary is MAXIMUM 
in their department */

select * from employees where salary IN (
	select max(salary) from employees group by Dept)


select * from employees;

select * from employees where DOJ between 
'2023-01-01' and '2024-12-31';




