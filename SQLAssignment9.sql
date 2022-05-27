create table study(
studId varchar(5),
courseId varchar(5),
year int
)
select * from study

insert into Study values('s1','c1',2016)
insert into Study values('s2','c2',2017)
insert into Study values('s1','c2',2017)

--self join 
select s1.studId,s1.courseId,s1.year
from study s1,study s2
where s1.studId=s2.studId and s1.courseId<>s2.courseId
