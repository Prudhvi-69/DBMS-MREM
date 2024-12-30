use batch2;

select * from Academics;
select * from Accounts;
select * from examination;
select * from Sports;
select * from Clubs;


select A.name,A.ID,A.location,A.gender from Academics A
INNER JOIN examination E 
ON A.ID=E.sID and E.cgpa>7
INNER JOIN Accounts Ac
ON E.sID=Ac.sID and Ac.status='paid';




-- creating a view on multiple tables at once
create view above7_paidFees as
select A.name,A.ID,A.location,A.gender from Academics A
INNER JOIN examination E 
ON A.ID=E.sID and E.cgpa>7
INNER JOIN Accounts Ac
ON E.sID=Ac.sID and Ac.status='paid';

-- extracting data from the view.....
select * from above7_paidFees where gender='f';

--CREATING THE VIEW ON MULTIPLE TABLES and extract from all tables
create view studentData as
select A.name, A.ID,A.location,
Ac.fees, Ac.status,
E.no_of_bl,E.cgpa,
S.sport, C.clubName, C.role
from Academics A
LEFT OUTER JOIN Accounts ac on ac.sID=A.ID 
LEFT OUTER JOIN examination E on e.sID=A.ID
LEFT OUTER JOIN Sports S on S.sID=A.ID
LEFT OUTER JOIN Clubs C on C.sID=A.ID;

SELECT * FROM studentData;


