create table Customers(
CustId int,
CustName varchar(20),
City varchar (30),
Postalcode int,
)
select * from Customers

alter table Customers alter column CustId int not null

alter table Customers add constraint pk_Customers primary key(CustId)

insert into  Customers values(1,'pooja','pune',415104) 
insert into  Customers values(2,'shrutika','satara',415110) 
insert into  Customers values(3,'pankaj','kolhapur',121104) 
insert into  Customers values(23,'sushant','Berlin',121110) 
insert into  Customers values(20,'komal','London',121121) 
insert into  Customers values(18,'priya','pune',121021) 
insert into  Customers values(10,'sagar','London',121110) 
insert into  Customers values(11,'Teju','Berlin',415104) 
insert into  Customers values(8,'neha','Nashik',412109) 
insert into  Customers values(5,'Divya','pune',130123) 

select City from Customers



select * from Customers where City in('London')

select * from Customers where City not in('Berlin')


select * from Customers where CustId=23

select * from Customers where City='Berlin' and Postalcode=121110


select * from Customers where City in ('Berlin','London')

select * from Customers
order by city