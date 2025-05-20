use testdb;

create table usertbl
(
    userID    char(8)     not null primary key,
    name      varchar(10) not null,
    birthYear int         not null,
    addr      nchar(2)    not null
);

insert into usertbl
values ('LSG', '이승기', 1987, '서울'),
       ('KBS', '김범수', 1979, '경남'),
       ('KKH', '김경호', 1971, '전남'),
       ('JYP', '조용필', 1950, '경기'),
       ('S나', '성시경', 1979, '서울');

select *
from usertbl;

alter table usertbl
    drop primary key;

alter table usertbl
    add constraint pk_name primary key (name);

select *
from usertbl;