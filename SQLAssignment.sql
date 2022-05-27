create table student2(
studentId int,
StudentName varchar(20),
 percentage int,

)
select * from student2

alter table student2 add city varchar(30)

alter table student2 drop column city

sp_rename 'student2.StudentName','Name'

alter table student2 alter column Name varchar(30)

alter table student2 add constraint un_student2 unique(studentId)

alter table student2 alter column Name int not null

alter table student2 add constraint pk_student2 primary key(Name)