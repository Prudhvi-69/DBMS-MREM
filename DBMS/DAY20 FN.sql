use happy;

select * from BigEmp;

select * from BigEmp where 
JoiningDate>'2000' and salary>35000 ;

create INDEX ind on BigEmp(JoiningDate,salary,Department);

select * from BigEmp where 
JoiningDate>'2010' and salary>35240 
and Department LIKE '%e%';


select * from BigEmp where 
JoiningDate>'2000' and salary>35000 ;


drop index ind on BigEmp;

select * from BigEmp;

-- Before INDEX
select * from BigEmp where Salary>30800 and 
DateOfBirth>'2004' and Department LIKE '%e%';
-- 8 seconds to retrieve 8,23,040 rows

create index ind ON BigEmp(Salary,DateOFBirth,Department);

-- After INDEX
select * from BigEmp where Salary>30800 and 
DateOfBirth>'2004' and Department LIKE '%e%' ;
-- 7 seconds to retrieve 8,23,040 rows








USE BATCH2;


CREATE TABLE BigEmp (
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
WHILE @i <= 1900000
BEGIN
    INSERT INTO BigEmp(EmployeeID, FirstName, LastName, 
	Gender, DateOfBirth, JoiningDate, Department, Salary)
    VALUES(
        @i,
        'FirstName' + CAST(@i AS NVARCHAR(10)),
        'LastName' + CAST(@i AS NVARCHAR(10)),
        CASE WHEN @i % 2 = 0 THEN 'M' ELSE 'F' END,
        DATEADD(DAY, -(@i % 10000), GETDATE()),
        DATEADD(DAY, -(@i % 365), GETDATE()),
        CASE WHEN @i % 4 = 0 THEN 'HR'
             WHEN @i % 4 = 1 THEN 'Finance'
             WHEN @i % 4 = 2 THEN 'Engineering'
             ELSE 'Marketing' END,
        30000 + (@i % 10000)
    );
    SET @i = @i + 1;
END



