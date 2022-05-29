create table saleman4(
salemanId int primary key,
Name varchar(20),
City varchar(20),
Commision decimal,
)
select * from saleman4

insert into saleman4 values(1,'Ankita','satara',7.6)
insert into saleman4 values(2,'pooja','pune',9.8)
insert into saleman4 values(3,'shuti','mumbai',6.5)
insert into saleman4 values(4,'komal','kolhapur',5.9)
insert into saleman4 values(5,'Ankita','karad',7.5)
insert into saleman4 values(6,'Radha','Thane',6.0)
insert into saleman4 values(7,'sai','sangli',5.3)

create table Customer4(
CustId int primary key,
CustName varchar(20),
City varchar(20),
grade varchar(20),
salemanId int,
 constraint pk_Customer4_saleman4
foreign key (salemanId)references saleman4(salemanId)
)
alter table Customer4 add  OrderId int
select * from Customer4

insert into Customer4 values(1,'dhiraj','nasik','A',1,null)
insert into Customer4 values(2,'sneha','pune','B',2,null)
insert into Customer4 values(3,'sai','Thane','c',3,null)
insert into Customer4 values(4,'om','Bhiwandi','A+',4,null)
insert into Customer4 values(5,'jayesha','kalyan','B+',5,null)
insert into Customer4 values(6,'pranali','mumbai','c',6,null)
insert into Customer4 values(7,'Ankita','satara','c',7,null)

create table order6(
orderId int,
purchas_amt bigint,
date date,
CustId int ,
constraint pk_order6_Customer4
foreign key (CustId)references Customer4(CustId),
salemanId int,
constraint pk_order6_saleman4
foreign key (salemanId)references saleman4(salemanId)

)
select * from order6
insert into order6 values(1,999,getdate(),1,1)
insert into order6 values(2,1500,getdate(),2,2)
insert into order6 values(3,2800,getdate(),3,3)

select * from Customer4
update Customer4 set orderId=1 where CustId in(1,2,3)
update Customer4 set orderId=2 where CustId in(4,5)
update Customer4 set orderId=3 where CustId in(6,7)

select o.purchas_amt,c.CustName,c.City,c.grade
from order5 o
inner join Customer4 c on c.orderId=o.orderId

--show all details of purchas_amt=999
select o.purchas_amt,c.CustName,c.City,c.grade
from order5 o
inner join Customer4 c on c.orderId=o.orderId
where o.purchas_amt=999

--descending order by custname
select o.purchas_amt,c.CustName,c.City,c.grade
from order5 o
inner join Customer4 c on c.orderId=o.orderId
where o.purchas_amt=999
order by (CustName)desc

--ascending order by city
select o.purchas_amt,c.CustName,c.City,c.grade
from order5 o
inner join Customer4 c on c.orderId=o.orderId
where o.purchas_amt=1500
order by (city)

select o.purchas_amt,c.CustName,c.City,c.grade
from order5 o
inner join Customer4 c on c.orderId=o.orderId
order by(purchas_amt)

select top 1 o.purchas_amt,c.CustName,c.City,c.grade
from order5 o
inner join Customer4 c on c.orderId=o.orderId
order by(purchas_amt)desc


