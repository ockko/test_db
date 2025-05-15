-- 학생 테이블, 동아리 테이블, 학생 동아리 테이블을 이용해서
-- 학생을 기준으로 학생 이름/지역/가입한 동아리/ 동아리방을 출력하세요.
/*
- 세 개 이상 테이블 조인
- 각 테이블은 관계가 있어야 함, 조인 조건을 명확히 설정해야 함.
작동 순서
1. 첫번째 테이블과 두번째 테이블 먼저 조인
2. 1번의 결과 테이블과 세번째 테이블이 조인
-- 각 조인마다 on으로 조건을 지정해야함
*/
select s.stdName   as 학생이름,
       sc.clubName as 동아리명,
       c.roomNo    as 동아리위치
from stdtbl s
         join stdclubtbl sc
              on s.stdName = sc.stdName
         join clubtbl c
              on sc.clubName = c.clubName
order by sc.stdName;