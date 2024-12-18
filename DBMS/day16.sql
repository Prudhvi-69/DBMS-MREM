use LetsDoIt;

create table Google(empName varchar(20) not null,
empID int primary key,salary int,location varchar(20),
mobile char(10) unique, reportingID int
);

insert into Google values
('Sanku',21,50000,'Erragadda','8525412542',0),
('Akshaya',18,30000,'Kompally','961641125',21),
('Rasagna',22,18000,'London','7845126526',21),
('Ashwini',29,15000,'Alwal','7896416112',18),
('Swati',8,100000,'KPHB','4512612651',29),
('Poojitha',17,5000,'Shahpur','784545125',22),
('Anush',24,200000,'Medchal','798461326',29),
('Pavan',4,10000,'Medchal','845659516',24),
('Nagesh',69,6900,'ORR','6906906969',22),
('Nithin',19,6000,'Dilsukhnagar','9684513461',17),
('Akshara',1,120000,'Alwal','9461694541',17),
('Vaishnavi',10,20000,'LB Nagar','794561455',1);

select * from Google;
/*Extract Employees who are getting reports*/
select G1.empName,G1.empID,G2.empName,G2.reportingID from Google G1
JOIN Google G2
ON G1.empID=G2.reportingID;

/*Extract employees who are getting reports and sort by NAMES*/
select G1.empName,G1.empID,G2.empName,G2.reportingID from Google G1
JOIN Google G2
ON G1.empID=G2.reportingID order by G1.empName;



select TOP 3 * from Google order by salary desc;








