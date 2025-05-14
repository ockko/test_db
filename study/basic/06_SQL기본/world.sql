use world;

select Population
from city
where CountryCode = 'KOR'
order by Population desc;

select CountryCode, Population
from city
order by CountryCode, Population desc;

select count(*)
from city
where CountryCode = 'KOR';

select *
from city
where CountryCode in ('KOR', 'CHN', 'JPN');

select *
from city
where CountryCode = 'KOR'
  and Population >= 1000000;

select *
from city
where CountryCode = 'KOR'
order by Population desc
limit 10;

select *
from city
where CountryCode = 'KOR'
  and Population between 1000000 and 5000000;