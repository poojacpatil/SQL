create table Employee2(
First_Name varchar(20),
Last_Name varchar(20),
EmpId int,
EmpName varchar(20),
DeptId int,
Salary int,
)
select * from Employee2

alter table Employee2 drop column EmpId

alter table Employee2 alter column EmpId int not null

alter table Employee2 add constraint pk_Employee2 primary key(EmpId)

drop table Employee2

create table Employee3(
EmpId int,
First_Name varchar(20),
Last_Name varchar(20),
EmpName varchar(20),
DeptId int,
Salary int,
)
select * from Employee3

alter table Employee3 drop column EmpName 

alter table Employee3 alter column EmpId int not null

alter table Employee3 add constraint pk_Employee3 primary key(EmpId)
alter table Employee3 drop constraint pk_Employee3

alter table Employee3 add constraint pk_Employee3 primary key(DeptId)
alter table Employee3 alter column DeptId int not null

insert into Employee3 values(1,'pooja','patil',101,33000) 
insert into Employee3 values(2,'dhiraj','wagh',110,30000) 
insert into Employee3 values(3,'priya','urit',99,25000) 
insert into Employee3 values(4,'sonali','chavan',88,20000) 
insert into Employee3 values(5,'shruti','patil',100,28000)
insert into Employee3 values(6,'vaibhav','varpe',90,31000) 
insert into Employee3 values(7,'Dipali','patil',80,24000)
insert into Employee3 values(8,'pankaj','patil',96,45000)
insert into Employee3 values(9,'sushant','kadam',85,33000) 
insert into Employee3 values(10,'sai','Kumbhar',82,40000) 

--Write a query to display first_name and last_name using alias ‘First Name’ & ‘Last Name’ from employee table
select First_Name,Last_Name from Employee3

---Write a query to get unique department ID from employee table
select distinct DeptId from employee3

--Write a query to get all employee details from employee table display in descending order
select * from Employee3
order by First_Name desc

---Write a query to get total salaries payable to all employees from employee table
select sum(salary)as Sumsalary from Employee3

--Write a query to get max and min salary of employee
select max(salary)as Maxsalary from Employee3

select min(salary)as Minsalary from Employee3

--Write a query to get number of employees are working in company
select count (*) from Employee3

select * from Employee3
alter table Employee3 add designation varchar(30)
update Employee3 set designation='employee' where EmpId=1
update Employee3 set designation='manager' where EmpId=2
update Employee3 set designation='employee' where EmpId=3
update Employee3 set designation='CEO' where EmpId=4
update Employee3 set designation='chairman' where EmpId=5
update Employee3 set designation='manager' where EmpId=6
update Employee3 set designation='CEO' where EmpId=7
update Employee3 set designation='manager' where EmpId=8
update Employee3 set designation='chairman' where EmpId=9
update Employee3 set designation='employee' where EmpId=10

--Write a query to get the number of unique designation in the company
select distinct designation from Employee3

--Write a query to display emp_name as ‘Name’ in upper case
select Upper(First_Name)from Employee3
select Upper(Last_Name)from Employee3

--Write a query to get first 5 records from the employee table
select top 5 * from Employee3

--self join
select * from Employee3
alter table Employee3 add managerId int
update Employee3 set managerId=1 where EmpId in (2,3,4)
update Employee3 set managerId=8 where EmpId in (6,7)
update Employee3 set managerId=null where EmpId in (5)
update Employee3 set managerId=11 where EmpId in (10)
update Employee3 set managerId=11 where EmpId in (9)
alter table Employee3 drop column managerId

alter table Employee3 add managerid int
update Employee3 set managerid=1 where EmpId in (2,3,4)
update Employee3 set managerid=6 where EmpId in (6,7,8)
update Employee3 set managerid=11 where EmpId in (10)

select e1.First_Name as EmpName, e2.First_Name as managerName
from Employee3 e1 ,Employee3 e2
where e1.managerId= e2.EmpId

create table Department1(
DeptId int primary key,
DeptName varchar(20),
)
alter table Department1 add constraint pk_Department1_Employee3
foreign key (DeptId) references Employee3(DeptId)
select * from Department1

insert into Department1 values(1,'HR')
insert into Department1 values(2,'Marketing')
insert into Department1 values(3,'sales')
insert into Department1 values(4,'production')

Select * from Employee3
update Employee3 set DeptId=1 where Empid in(2,3,4)
update Employee3 set DeptId=2 where Empid in(1,5,6)
update Employee3 set DeptId=3 where Empid in(7,8)
update Employee3 set DeptId=4 where Empid in(9,10)

select p.First_Name,d.DeptName,p.salary,p.Last_Name
from Employee3 p
inner join Department1 d on d.DeptId=p.DeptId


select p.First_Name,d.DeptName,p.salary,p.Last_Name
from Employee3 p
inner join Department1 d on d.DeptId=p.DeptId
where d.DeptName='HR'

select p.First_Name,d.DeptName,p.salary,p.Last_Name
from Employee3 p
inner join Department1 d on d.DeptId=p.DeptId
where d.DeptName='HR'
order by (salary) desc

select p.First_Name,d.DeptName,p.salary,p.Last_Name
from Employee3 p
inner join Department1 d on d.DeptId=p.DeptId
where d.DeptName='sales'
order by (First_Name)

select p.First_Name,d.DeptName,p.salary,p.Last_Name
from Employee3 p
inner join Department1 d on d.DeptId=p.DeptId
order by (First_Name)


--having clause in SQL
select DeptName,count(DeptId) as Department1count from Department1
group by DeptName
having DeptName in ('HR','sales')
order by count (DeptId)

--SQL build in function
--substring ,concat,length(len),upper,lower,trim,lefttrim(ltrim),righttrim(rtrim),cast,Round,replace,reverse

update Employee3 set salary=34996.99 where EmpId=1
select * from Employee3

select SUBSTRING(First_Name,0,3)as tempFirst_Name from Employee3 where EmpId=5

select CONCAT(First_Name,' ',Last_Name)as info from Employee3

select First_Name,LEN(First_Name) as lrnfth from Employee3

select UPPER(First_Name) as First_Name from Employee3

select lower(First_Name) as First_Name from Employee3

select ROUND(789.9876,0)as roundvalue
select ROUND(salary,0)as salary from Employee3 where EmpId=1

select CAST(salary as varchar(20))from Employee3

select REVERSE(First_Name)as reverseFirst_Name from Employee3

select salary,RANK()over(order by salary desc)as salaryrank from Employee3

select replace(First_Name,'pooja','Rohini')as info from Employee3 where EmpId=1