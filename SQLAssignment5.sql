create table employee1(
employeeId int,
first_name varchar(20),
last_name varchar(20),
city varchar(20),
deptName varchar(20),
)
select * from employee1

alter table employee1 alter column employeeId int not null

alter table employee1 add constraint pk_employee1 primary key(employeeId)

create unique index  index_employee1 on employee1(employeeId)

insert into employee1 values(1,'pooja','patil','pune','HR') 
insert into employee1 values(2,'Shrutika','Yadav','satara','sales')
insert into employee1 values(3,'pranali','kalbhor','kolhapur','sales')
insert into employee1 values(4,'Dhiraj','Wagh','kolhapur','sales')
insert into employee1 values(5,'vaibhav','varpe','Mumbai','HR')
insert into employee1 values(6,'pankaj','patil','pune','marketing')
insert into employee1 values(7,'sonali','chavan','pune','marketing')
insert into employee1 values(8,'Nisha','suryawanshi','satara','HR')
insert into employee1 values(9,'prajakta','yadav','sangli','HR')
insert into employee1 values(10,'Sushant','Kadam','Mumbai','sales')

-- display emp who work in sales department
select * from employee1 where deptName in ('sales')

--display emp who's salary is greater than 35000
select * from employee1 where salary >=35000

alter table employee1 add salary int

update employee1 set salary=35000 where employeeId=1
update employee1 set salary=37000 where employeeId=2
update employee1 set salary=40000 where employeeId=3
update employee1 set salary=42000 where employeeId=4
update employee1 set salary=30000 where employeeId=5
update employee1 set salary=28000 where employeeId=6
update employee1 set salary=33000 where employeeId=7
update employee1 set salary=36000 where employeeId=8
update employee1 set salary=31000 where employeeId=9
update employee1 set salary=29500 where employeeId=10

--display emp who belong to pune & mumbai city
select * from employee1 where city in ('pune','Mumbai')

-- display emp who's salary is in between 25,000 - 30,000
select * from employee1 where salary between 25000 and 30000

-- display emp name who's name start with 'T'
select * from employee1 where first_name like'T%'

--display emp name who's name end with 'A'
select * from employee1 where first_name like'%a'

--display unique department from emp table
select distinct DeptName from employee1

-- display emp those are not working in hr & sales dept
select * from employee1 where deptName not in('HR','Sales')


--Aggregate function
--1.count  2.sum   3.avg  4.Max  5.Min

select count (distinct city)from employee1   --unique city(not repeted)

select count(*) from employee1 --show all table

select sum(salary)as Sumsalary from employee1

select avg(salary)as 
Avgsalary from employee1

select max(salary)as maxsalary from employee1

select min(salary)as minsalary from employee1

select * from employee1

--group by class
select deptName,count(employeeId)as empcount from employee1
group by deptName

select city,count(employeeId) as empcount from employee1
group by city

