--subquery in SQL/inner query

select * from Employee3

select max(salary) as maxsalary from Employee3  --find the max salary

--find max salary and display name
  select First_Name,salary from Employee3 where salary=(select max(salary) from Employee3)
  --main query                                           --inner query(first execuite)
  --first execuite inner query and then execuite main query

  --2nd highest
    select First_Name,salary from Employee3 where salary=(
  select max (salary)from Employee3 where salary <>(select max(salary)from Employee3)
  )

  --3rd highest
   select First_Name,salary from Employee3 where salary=(
   select max (salary)from Employee3 where salary<(
  select max (salary)from Employee3 where salary <>(select max(salary)from Employee3)
  )
  )

  select * from Employee3 Where EmpId in
  (
  select EmpId from Employee3 where salary>30000
  )
   --display name of employee who take higher salarythan employee Id 5
 select First_Name,salary from Employee3 where salary>(select (salary)from Employee3 where EmpId=5)

 -- display employee details whose designation is same as id=4
  select * from Employee3 where designation=(select (designation)from Employee3 where EmpId=4)

  --display emp details whose salary is geater than the avg salary of all emp
  select * from Employee3 where salary>(select avg(salary)from Employee3)

  --find emp whose salary is more than avg salary of any department 
  select * from Employee3 where salary >all(select avg(salary) from Employee3 group by DeptId)
  
  --display sum of salary dept wise
  select DeptId,sum(salary)as sumsalary from Employee3 group by DeptId

  --display emp who get more than avg salary of  sales department
 select * from Employee3 Where salary>(
 select avg(salary)from Employee3 where DeptId in(
 select DeptId from Department1 where DeptId=3 
 )
 )
  
  ---view in SQL
  --(create view)
    create view secondhighestsalary as
   select First_Name,salary from Employee3 where salary=(
  select max (salary)from Employee3 where salary <>(select max(salary)from Employee3)
  )


  create view thirdhighestsalary as
 select First_Name,salary from Employee3 where salary=(
   select max (salary)from Employee3 where salary<(
  select max (salary)from Employee3 where salary <>(select max(salary)from Employee3)
  )
  )

  --(Execute view)
  select * from secondhighestsalary
  

 --display person name who has purchase the product whos price is >5000
  --select * from student2
  --select * from product

  --subquery with update statement
  select * from Department1
  select * from Employee3
  update Employee3 set salary=salary*0.30 where DeptId=(select DeptId from Department1 where DeptId=3)

  --subquery with delete statement
  delete from Employee3 where DeptId=(select DeptId from Department1 where DeptId=3)