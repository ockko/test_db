use sqldb;

select s.stdName as `학생 이름`, s.addr as 지역, sc.clubName as `가입한 동아리`, c.roomNo as 동아리방
from stdtbl s
join stdclubtbl sc
on s.stdName = sc.stdName
join clubtbl c
on sc.clubName = c.clubName;

select c.clubName, c.roomNo, sc.stdName, s.addr
from clubtbl c
join stdclubtbl sc
on c.clubName = sc.clubName
join stdtbl s
on sc.stdName = s.stdName
order by clubName;

select a.emp as 부하직원, a.manager as 직속상관, b.empTel as 직속상관연락처
from emptbl a
join emptbl b
on a.manager = b.emp
where a.emp = '우대리';