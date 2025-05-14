use sqldb;

create table testtbl1(
	id int,
	username char(3),
	age int
);

insert into testtbl1 values (1, '홍길동', 25);

select * from sqldb.testtbl1;

update testtbl1
set age = 100
where id = 1;

delete
from testtbl1
where id = 1;