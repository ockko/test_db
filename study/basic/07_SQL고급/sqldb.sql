use sqldb;

select *
from buytbl b
join usertbl u
on b.userID = u.userID
where b.userID = 'JYP';

select u.userID, u.name, b.prodName, u.addr, concat(u.mobile1, u.mobile2) as 연락처
from usertbl u
left outer join buytbl b
on u.userID = b.userID
order by u.userID;

select *
from usertbl
where userID not in (select userID
    from usertbl
    where mobile1 is null
    or mobile2 is null);

select *
from usertbl
where userID in (select userID
    from usertbl
    where mobile1 is null
    or mobile2 is null);