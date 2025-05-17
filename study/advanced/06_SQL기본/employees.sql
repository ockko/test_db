use employees;

select *
from dept_manager
where to_date = '9999-01-01';

select *
from employees
where emp_no = (select emp_no
    from dept_manager
    where to_date = '9999-01-01'
    and dept_no = 'd005');

select *
from employees
order by hire_date desc
limit 140, 20;

select count(*)
from dept_emp
where to_date = '9999-01-01';

select avg(salary)
from salaries
where to_date = '9999-01-01';

select *
from salaries
where to_date = '9999-01-01'
and salary > (select avg(salary)
    from salaries
    where to_date = '9999-01-01');

select dept_no, count(*)
from dept_emp
where to_date = '9999-01-01'
group by dept_no
order by dept_no;