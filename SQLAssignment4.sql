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


--Select all records where the City column has the value "London
select * from Customers where City in('London')

--Use the NOT keyword to select all records where City is NOT "Berlin".
select * from Customers where City not in('Berlin')

--Select all records where the CustomerID column has the value 23
select * from Customers where CustId=23

--Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 121110.
select * from Customers where City='Berlin' and Postalcode=121110

--Select all records where the City column has the value 'Berlin' or 'London'.
select * from Customers where City in ('Berlin','London')

--Select all records from the Customers table, sort the result alphabetically by the column City.
select * from Customers
order by city

--Select all records from the Customers table, sort the result reversed alphabetically by the column City.
select * from Customers
order by city desc

alter table Customers add Country varchar(30)
update Customers set Country='Norway' where CustId=1
update Customers set Country='India' where CustId=2
update Customers set Country='UK' where CustId=3
update Customers set Country='USA' where CustId=23
update Customers set Country='Norway' where CustId=20
update Customers set Country='Australia' where CustId=18
update Customers set Country='India' where CustId=11
update Customers set Country='UK' where CustId=5
update Customers set Country='Norway' where CustId=10
update Customers set Country='USA' where CustId=8

--Select all the different values from the Country column in the Customers table.
select Country, count(CustId) as CustomerCount from Customers
group by Country

--Select all records from the Customers where the PostalCode column is empty.
select * from  Customers Where Postalcode is null

--Select all records from the Customers where the PostalCode column is NOT empty.
select * from Customers where Postalcode is not null

--Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway"
update Customers set City='Oslo' where Country='Norway'

--Delete all the records from the Customers table where the Country value is 'Norway'.
delete from Customers where Country='Norway'

alter table Customers add Price int
update Customers set price=20000 where CustId=2
update Customers set price=25500 where CustId=3
update Customers set price=22000 where CustId=5
update Customers set price=35000 where CustId=8
update Customers set price=30000 where CustId=11
update Customers set price=18000 where CustId=18
update Customers set price=15000 where CustId=23

--Use the MIN function to select the record with the smallest value of the Price column.
select min (Price) as minPrice from Customers

--Use an SQL function to select the record with the highest value of the Price column.
select max (Price) as maxPrice from Customers

--Use an SQL function to calculate the average price of all products.
select avg (Price) as AvgPrice from Customers

--Use an SQL function to calculate the sum of all the Price column values in the Products table
select sum (Price) as SumPrice from Customers

--Select all records where the value of the City column starts with the letter "a".
select * from Customers where City like 'A%'

--Select all records where the value of the City column ends with the letter "a".
select * from Customers where City like '%a'

--Select all records where the value of the City column does NOT start with the letter "a".
select * from Customers where City not like 'A%'

--Select all records where the first letter of the City starts with anything from an "a" to an "f"
select * from Customers where City like'[A-F]%'

--Use the IN operator to select all the records where the Country is either  "Norway" or  "France".
select * from Customers where city  in ('Norway','France')

--Use the IN operator to select all the records where the Country is either not "Norway" or not "France".
select * from Customers where city not in ('Norway','France')

--Select all records where the second letter of the City is an "a".
select * from Customers where City like '_a%'

--Select all records where the first letter of the City is an "a" or a "c" or an "s".
select * from Customers where City like'[ACS]%'

--Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".
select * from Customers where City not like'[ACF]'

--Select all records where the value of the City column starts with letter "a" and ends with the letter "b".
select * from Customers where City like 'a%%b'

--Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20
select * from Customers where Price between 10 and 20

--Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.
select * from Customers where Price not between 10 and 20

