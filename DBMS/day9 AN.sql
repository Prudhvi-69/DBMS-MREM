use Batch1;

create table employees(empID char(10) primary key,
empName varchar(20) not null, Dept varchar(20) not null,
salary int not null,DOJ DATE not null,Location varchar(15),
Gender char(1) check (Gender in ('f','m','l','g','t','o'))
);

insert into employees values
('MR000HR001','Keshav','HR',50000,'2025-08-18','Secunderabad','m'),
('MR000IT052','Bhanu','IT',70500,'2025-11-28','Karimngar','f'),
('MR000SP041','Manoj','SP',30000,'2024-05-12','Amaravati','m'),
('MR000SP051','Nithin','SP',3000,'2025-08-18','KPHB','m'),
('MR000GR001','Prakash','GR',80070,'2022-03-05','KPHB Signal','m'),
('MR000HR022','Sai','HR',62000,'2024-01-15','Dilsukhnagar','m'),
('MR000HR014','Dheeraj','HR',47000,'2020-04-25','Attapur','m'),
('MR000IT046','Ram','IT',56000,'2025-02-07','ORR SR','m'),
('MR000IT043','Sujith','IT',68000,'2023-11-04','Nagarkurnool','m'),
('MR000SP007','Tushaar','SP',42700,'2023-11-15','Bihar','m'),
('MR000GR102','Sudeep','GR',56000,'2021-05-22','SR Nagar','m');

/*Retrieve all columns/rows from the table*/
select * from employees;
/*Retrieve all Depts which are having employees with salary>50000*/
select Dept from employees where salary>50000 group by Dept;
/*Retrieve all Depts and Total salary in each Department */
select Dept, sum(salary) from employees group by dept
/*Retrieve all Depts and Total salary in each Dept whose Total Salary
exceeding 150000 */
select Dept, sum(salary) from employees group by dept 
having sum(salary)>150000;





