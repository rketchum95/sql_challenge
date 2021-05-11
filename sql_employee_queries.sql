--SQL Queries
--1.  List the following details of each employee: 
--employee number, last name, first name, sex, and salary.
select employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
from employees
inner join salaries on 
employees.emp_no = salaries.emp_no;


--2. List first name, last name, and hire date for 
--employees who were hired in 1986.
Select * from employees
where hire_date BETWEEN '1986-01-01' AND '1986-12-31';


--3. List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
select dept_mgr.dept_no, departments.dept_name, dept_mgr.emp_no, employees.last_name, employees.first_name
from dept_mgr
join departments
on dept_mgr.dept_no = departments.dept_no
join employees
on dept_mgr.emp_no = employees.emp_no;


--4. List the department of each employee with the following 
--information: employee number, last name, first name, and department name.
select dept_employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_employees
join employees 
on dept_employees.emp_no = employees.emp_no
join departments
on dept_employees.dept_no = departments.dept_no;


--5. List first name, last name, and sex for employees 
--whose first name is "Hercules" and last names begin with "B."

Select first_name,last_name, gender from employees
where first_name = 'Hercules' and last_name like 'B_%';


--6. List all employees in the Sales department, including 
--their employee number, last name, first name, and department name.
select dept_employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_employees
join employees 
on dept_employees.emp_no = employees.emp_no
join departments
on dept_employees.dept_no = departments.dept_no
where departments.dept_name = 'Sales';


--7. List all employees in the Sales and Development departments,
-- including their employee number, last name, first name, and department name.

select dept_employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_employees
join employees 
on dept_employees.emp_no = employees.emp_no
join departments
on dept_employees.dept_no = departments.dept_no
where departments.dept_name = 'Sales' or departments.dept_name = 'Development';



--8. In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.

select last_name, count(last_name) as "Frequency"
from employees
group by last_name
order by "Frequency" desc;