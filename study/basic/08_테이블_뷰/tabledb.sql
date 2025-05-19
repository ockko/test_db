drop database if exists tabledb;

create database tabledb;

use tabledb;

drop table if exists usertbl;

create table usertbl
(
    userID    char(8)     not null primary key,
    name      varchar(19) not null,
    birthyear int         not null,
    addr      char(2)     not null,
    mobile1   char(3),
    mobile2   char(8),
    height    smallint,
    mDate     date
);

drop table if exists buytbl;

create table buytbl
(
    num       int      not null primary key auto_increment,
    userID    char(8)  not null,
    prodName  char(6)  not null,
    groupName char(4),
    price     int      not null,
    amount    smallint not null,
    foreign key (userID) references usertbl (userID)
);

insert into usertbl (userID, name, birthyear, addr, mobile1, mobile2, height, mDate)
values ('LSG', '이승기', 1987, '서울', '011', '1111111', 182, '2008-08-08'),
       ('KBS', '김범수', 1979, '경남', '011', '2222222', 173, '2012-04-04'),
       ('KKH', '김경호', 1971, '전남', '019', '3333333', 177, '2007-07-07');

insert into buytbl (userid, prodName, groupName, price, amount)
values ('KBS', '운동화', NULL, 30, 2),
       ('KBS', '노트북', '전자', 1000, 1);

-- userID가 외래키이므로 usertbl에 'JYP'에 해당하는 데이터가 있어야 함.
/*
insert into buytbl (userid, prodName, groupName, price, amount)
values ('JYP', '모니터', '전자', 200, 1);
 */

create table usertbl
(
    userID    char(8)     not null,
    name      varchar(10) not null,
    birthyear int         not null,
    constraint primary key PK_usertbl_userID (userID)
);

drop table if exists prodTbl;

create table prodTbl
(
    prodCode char(3)  not null,
    prodID   char(4)  not null,
    prodDate datetime not null,
    proCur   char(10),
    constraint primary key PK_prodTbl_prodCode_prodID (prodCode, prodID)
);

create view v_userbuytbl as
select u.userID, u.name, b.prodName, u.addr, concat(u.mobile1, u.mobile2) as 연락처
from usertbl u
         join buytbl b
              on u.userID = b.userID;

select *
from v_userbuytbl
where name = '김범수';