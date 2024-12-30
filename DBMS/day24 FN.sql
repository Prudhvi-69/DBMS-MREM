use batch1;

create function dbo.Adds
()
returns INT
as
begin
return 6+9;
end;


select dbo.Adds() as result;



CREATE FUNCTION gd(@DName NVARCHAR(50))
RETURNS TABLE
AS
RETURN
(
    SELECT EmpID, empName, Dept, Salary
    FROM Employees
    WHERE Dept = @DName
);


