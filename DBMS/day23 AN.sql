use Batch2;

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


create view Stu_Data as
select A.name,A.ID,A.location,A.gender from Academics A
INNER JOIN examination E 
ON A.ID=E.sID and E.cgpa>7
INNER JOIN Accounts Ac
ON E.sID=Ac.sID and Ac.status='paid';







select * from Stu_Data where name like '%v%';


CREATE VIEW Data_IN_View as
select A.name, A.ID, A.location, 
Ac.fees,Ac.status,
E.no_of_bl,E.cgpa,
S.sport,
C.clubName, C.role
from Academics A 
LEFT JOIN Accounts Ac ON A.ID=Ac.sID
LEFT JOIN examination E ON A.ID=E.sID
LEFT JOIN Sports S ON A.ID=S.sID
LEFT JOIN Clubs C ON A.ID=C.sID;



select * from bhAAi;


















