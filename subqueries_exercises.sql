# Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows

select emp_no
from employees
where hire_date = (select hire_date
                   from employees
                   where emp_no = 101010);

# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles

select title
from employees
         join titles t on employees.emp_no = t.emp_no
where first_name = 'Aamod';

# Find all the current department managers that are female

select e.first_name as 'First Name', e.last_name as 'Last Name'
from employees
         join dept_manager dm on employees.emp_no = dm.emp_no
         join employees e on dm.emp_no = e.emp_no
where dm.to_date > current_date
  and e.gender = 'F';

# Find all the department names that currently have female managers

select dept_name
from departments
         join dept_manager dm on departments.dept_no = dm.dept_no
         join employees e on dm.emp_no = e.emp_no
where dm.to_date > current_date
  and e.gender = 'F';

# Find the first and last name of the employee with the highest salary

select e.first_name as 'First Name', e.last_name as 'Last Name', salary
from salaries s
         join employees e on salary = e.emp_no
where s.to_date > current_date
order by salary desc ;