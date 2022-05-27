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

--Write a query to get first 10 records from the employee table
select top 5 * from Employee3