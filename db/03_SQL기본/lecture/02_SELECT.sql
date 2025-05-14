-- SELECT
-- 특정 테이블에서 원하는 데이터를 조회할 수 있다.

select * -- 모든 컬럼을 조회해줘
from buytbl; -- buytbl에서

select userId, groupName
from buytbl;

select (5 + 5);

-- 현재 시간 출력
select now();
-- 컬럼에 별칭 사용
select concat('ockko', '안녕', 'kb') as '인 사';

-- usertbl의 name, mobile1, mobile2를 조회
-- mobile1, mobile2는 붙어서 전화번호라는 컬럼으로 조회되어야 함
select name, concat(mobile1, mobile2) as 전화번호
from usertbl;