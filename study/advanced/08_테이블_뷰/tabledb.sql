use tabledb;

drop table if exists userTBL, buyTBL;

create table userTBL
(
    userID    char(8)     not null primary key,
    name      varchar(10) not null,
    birthyear int         not null
);

create table buyTBL
(
    num      int     not null primary key auto_increment,
    userID   char(8) not null,
    prodName char(6) not null
);

alter table buyTBL
    add foreign key (userID) references userTBL (userID);

create table userTBL
(
    userID    char(8)     not null primary key,
    name      varchar(10) not null,
    birthyear int         not null,
    email     char(30) unique
);

create table userTBL
(
    userID char(8) not null primary key,
    name varchar(10),
    birthYear int check (birthYear between 1900 and 2023),
    mobile char(3) not null
);

create table userTBL
(
    userID char(8) not null primary key,
    name varchar(10) not null,
    birthYear int not null default -1,
    addr char(2) not null default '서울',
    mobile1 char(3),
    mobile2 char(8),
    height smallint default 170,
    mDate date
);

insert into userTBL (userID, name, mobile1, mobile2, mDate)
values ('LHL', '이혜리', '011', '1234567', '2025.05.19');

alter table userTBL
drop column mobile1;

alter table userTBL
change column name uName varchar(10) not null;

alter table userTBL
drop primary key;