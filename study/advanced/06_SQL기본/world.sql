use world;

select sum(Population)
from city
where CountryCode = 'KOR';

select min(Population) as 최소값
from city
where CountryCode = 'KOR';

select avg(Population)
from city
where CountryCode = 'KOR';

select max(Population) as 최대값
from city
where CountryCode = 'KOR';

select length(Name)
from city;

select upper(left(Name, 3))
from country;

select round(LifeExpectancy, 0)
from country;