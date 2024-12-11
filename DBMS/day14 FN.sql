use Batch2;

select * from CLASS

select * from employees;
select * from promotions;

/*Extract all columns and rows from employees and promotions
and the data of employees who has got promotion*/
select * from employees E
INNER JOIN promotions P
ON E.ID=P.empID;

/*Left Outer Join on all employees, who got promtions and also who didnt get*/
select E.name,E.location,E.salary, P.salaryInc,P.pDate from employees E
LEFT OUTER JOIN promotions P
ON E.ID=P.empID;

/*Left Outer Join on all employees, who got promtions and also who didnt get*/
select E.name,E.location,E.salary, P.salaryInc,P.pDate from employees E
RIGHT OUTER JOIN promotions P
ON E.ID=P.empID;







