use batch1;

select * from employees;

/*Extract data of employees in addition
to their total number of people in their department*/

select empName,empID,salary,Dept,
(select count(*) from employees where Dept=E.Dept)
from employees E;

/*Finding average salaries from all departments*/
SELECT DEPT,AVG(SALARY) FROM employees GROUP BY Dept;
/*Sort the details based on avg salary, also group by department*/
SELECT DEPT,AVG(SALARY) FROM employees GROUP BY Dept
order by avg(salary);
/*Finding the lowest Department's Average salary among all Departments*/
SELECT top 1 DEPT,AVG(SALARY) FROM employees GROUP BY Dept
order by avg(salary);
/*Extracting data of everyone from the department with lowest average salary*/
select * from employees where Dept = (
SELECT top 1 DEPT FROM employees GROUP BY Dept
order by avg(salary));

select count(*) from employees where dept='SP';




