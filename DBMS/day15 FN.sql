use batch2;

select * from employees;

select * from promotions;
/*It will retrieve all the individual rows from both
the tables without any duplicate rows with the help of
FULL OUTER JOIN*/
select * from employees 
FULL OUTER JOIN promotions
ON employees.ID=promotions.empID;





select * from employees
CROSS JOIN promotions;


