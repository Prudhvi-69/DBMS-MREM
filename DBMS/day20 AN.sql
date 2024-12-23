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
	SET @i = @i + 1;
END














