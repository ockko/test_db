use employees;

create view employees_info as
select e.emp_no, e.birth_date, e.first_name, e.last_name, e.gender, e.hire_date, t.title, t.from_date as t_from, t.to_date as t_to, s.salary, s.from_date as s_from, s.to_date as s_to
from employees e
    join titles t
        on e.emp_no = t.emp_no
    join salaries s
        on t.emp_no = s.emp_no;

select *
from employees_info
where s_to = '9999-01-01';

create view emp_dept_info as
select de.emp_no, de.dept_no, d.dept_name, de.from_date, de.to_date
from dept_emp de
    join departments d
        on de.dept_no = d.dept_no;

select *
from emp_dept_info
where to_date = '9999-01-01'
order by emp_no;