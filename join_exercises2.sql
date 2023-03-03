# write a query that shows each department along with the name of the current manager for that department.

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
where dm.to_date > current_date;

# Find the name of all departments currently managed by women

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
where dm.to_date > current_date
  and e.gender = 'F';

# Find the current titles of employees currently working in the Customer Service department

select t.title, count(e.emp_no) as Total
from employees as e
         join titles as t
              on t.emp_no = e.emp_no
         join dept_emp de on e.emp_no = de.emp_no
         join departments d on de.dept_no = d.dept_no
where t.to_date > current_date
  and de.to_date > current_date
  and d.dept_name = 'Customer Service'
group by t.title
order by Total desc;

# Find the current salary of all current managers

SELECT distinct d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name, s.salary as Salary
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
         join salaries as s
              on dm.emp_no = s.emp_no
where dm.to_date > current_date
  and s.to_date > current_date;

# Find the names of all current employees, their department name, and their current manager's name

select CONCAT(e.first_name, ' ', e.last_name)   AS Employee,
       d.dept_name                              as Department,
       CONCAT(e2.first_name, ' ', e2.last_name) as Manager
from employees as e
         join dept_emp as de
              on e.emp_no = de.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
         JOIN dept_manager as dm
              ON d.dept_no = dm.dept_no
         join employees e2
             on dm.emp_no = e2.emp_no
where de.to_date > current_date
and dm.to_date > current_date;
