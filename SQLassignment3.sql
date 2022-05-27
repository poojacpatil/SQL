create table orders
(
orderId int,
orderno int,
studentName varchar(20),
constraint pk_orders primary key(studentName),
constraint fk_orders_student2 foreign key(studentName) references student2 (studentName)
)
alter table orders add constraint pk_order_student2 foreign key(studentName) references student2 (studentName)
sp_help student2



