# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.

select concat(first_name, ' ', last_name) as full_name
from employees
where last_name like 'E%e';

#     Find all employees born on Christmas — 842 rows.

select *
from employees
where month(birth_date) = 12
and day(birth_date) = 25;

#     Find all employees hired in the 90s and born on Christmas — 362 rows.

select *
from employees
where year(hire_date) between 1990 and 1999
    and month(birth_date) = 12
  and day(birth_date) = 25;

#     Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.

select *
from employees
where year(hire_date) between 1990 and 1999
  and month(birth_date) = 12
  and day(birth_date) = 25
order by birth_date, hire_date desc;

#     For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).

select first_name, last_name, datediff(current_date, hire_date)
from employees
where year(hire_date) between 1990 and 1999
  and month(birth_date) = 12
  and day(birth_date) = 25
order by datediff(current_date, hire_date) desc;

# Modify your first query to order by first name. The first result should be Irena Flexer and the last result should be Vidya Awdeh.

select first_name, last_name
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
  and last_name <= 'Flexer'
order by first_name, last_name desc;

# Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.

select first_name, last_name
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name, last_name;

# Change the ORDER BY clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.

select first_name, last_name
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by last_name, first_name;

# Update your queries for employees with 'e' in their last name to sort the results by their employee number. Make sure the employee numbers are in the correct order.

select emp_no, first_name, last_name
from employees
where last_name like '%e%'
order by emp_no;

# Now reverse the sort order for both queries and compare results.

select emp_no, first_name, last_name
from employees
where last_name like '%e%'
order by emp_no asc ;

select emp_no, first_name, last_name
from employees
where last_name like '%e%'
order by emp_no desc;

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).

select first_name
from employees
where first_name in ('Irena', 'Vidya', 'Maya');

-- Find all employees whose last name starts with 'E' — 7,330 rows.

select last_name
from employees
where last_name like 'E%';

-- Find all employees with a 'q' in their last name — 1,873 rows.

select last_name
from employees
where last_name like '%q%';

# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.

select first_name
from employees
where first_name = 'Irena'
   or first_name = 'Vidya'
   or first_name = 'Maya';

# Add a condition to the previous query to find everybody with those names who is also male — 441 rows.

select last_name
from employees
where last_name like 'E%'
          && gender = 'M';

# Find all employees whose last name starts or ends with 'E' — 30,723 rows.

select last_name
from employees
where last_name like 'E%'
  and last_name like '%e';

# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.

select last_name
from employees
where last_name like 'E%e';

# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.

select last_name
from employees
where last_name like '%q%'
  and last_name not like '%qu%';
