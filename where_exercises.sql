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
