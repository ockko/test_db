-- 계정만들기
create user '계정명'@'%' identified by '비밀번호';
create user '계정명'@'localhost' identified by '비밀번호';

-- mysql 데이터베이스 사용
use mysql;

-- 계정 조회하기
select user, host from user as u;

-- 데이터베으스(스키마) 생성
create database 데이터베이스이름;
create schema 데이터베이스이름;

create database testdb;

-- 권한부여
-- grant 권한 privileges on 데이터베이스.테이블 to '계정명'@'%';
-- ockko 계정이 testdb에 대한 모든 권한을 부여
grant all privileges on testdb.* to 'ockko'@'%';

-- ockko@%가 가지고 있는 모든 권한 조회
show grants for 'ockko'@'%';