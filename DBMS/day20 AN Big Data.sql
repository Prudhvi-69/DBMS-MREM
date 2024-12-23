use batch2;

select * from BigEmp;
-- 10 seconds to extract before index
select * from BigEmp 
where salary>30500 and DateOfBirth>'2005'
and Department LIKE '%e%';

-- creating the index on 2 columns
create index ind ON BigEmp(salary,DateOfBirth,Department);

-- 8 seconds to extract after index on 3 columns
select * from BigEmp 
where salary>30500 and DateOfBirth>'2005'
and Department LIKE '%e%';

-- creating index on only one column
create index inn ON BigEmp(salary);

-- 9 seconds to extract after index on 1 column
select * from BigEmp 
where salary>30500 and DateOfBirth>'2005'
and Department LIKE '%e%';


drop index ind on BigEmp;

drop index inn on BigEmp;

 use batch2;

select * from BigEmp;

select * from BigEmp
where salary>30500 and DateOfBirth>'2005'
and Department LIKE '%e%';












/*
use batch1;


CREATE TABLE BigEmp(
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender CHAR(1),
    DateOfBirth DATE,
    JoiningDate DATE,
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);




SET NOCOUNT ON;
DECLARE @i INT = 1;
WHILE @i <= 1600000
BEGIN
    INSERT INTO BigEmp(EmployeeID, FirstName, LastName, 
	Gender, DateOfBirth, JoiningDate, Department, Salary)
    VALUES(
        @i,
        'FirstName' + CAST(@i AS VARCHAR(10)),
        'LastName' + CAST(@i AS VARCHAR(10)),
        CASE WHEN @i % 2 = 0 THEN 'M' ELSE 'F' END,
        DATEADD(DAY, -(@i % 10000), GETDATE()),
        DATEADD(DAY, -(@i % 365), GETDATE()),
        CASE WHEN @i % 4 = 0 THEN 'HR'
             WHEN @i % 4 = 1 THEN 'Finance'
             WHEN @i % 4 = 2 THEN 'Engineering'
             ELSE 'Marketing' END,
        30000 + (@i % 10000))
END








*/


