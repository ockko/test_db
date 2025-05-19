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