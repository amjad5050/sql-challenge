1---List the following details of each employee: employee number, last name, first name, sex, and salary.
select employees.emp_no,employees.last_name,employees.first_name,employees.sex,salaries.salary
From employees
left join salaries
on employees.emp_no=salaries.emp_no;
---2. List first name, last name, and hire date for employees who were hired in 1986.
Select employees.first_name,employees.last_name,employees.hire_date From employees
where hire_date like '%1986';
---3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT departments.dept_no,departments.dept_name,dept_manager.emp_no,employees.first_name,employees.last_name
From departments
left Join dept_manager
on departments.dept_no=dept_manager.dept_no
left join employees
on dept_manager.emp_no=employees.emp_no
Order by departments.dept_no,dept_manager.emp_no;


---4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT dept_emp.emp_no,departments.dept_name,employees.first_name,employees.last_name
From dept_emp
left Join departments
on departments.dept_no=dept_emp.dept_no
left join employees
on dept_emp.emp_no=employees.emp_no
Order by departments.dept_name,dept_emp.emp_no;

---5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select employees.first_name,employees.last_name,employees.sex From employees
where first_name = 'Hercules' and last_name like 'B%';
---6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no,departments.dept_name,employees.first_name,employees.last_name
From dept_emp
INNER Join departments
on departments.dept_no=dept_emp.dept_no
INNER join employees
on dept_emp.emp_no=employees.emp_no 
WHERE departments.dept_name='Sales'
Order by departments.dept_name,dept_emp.emp_no;

---7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no,departments.dept_name,employees.first_name,employees.last_name
From dept_emp
INNER Join departments
on departments.dept_no=dept_emp.dept_no
INNER join employees
on dept_emp.emp_no=employees.emp_no 
WHERE departments.dept_name='Sales' OR departments.dept_name='Development'
Order by  departments.dept_name,dept_emp.emp_no DESC;

---8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT  COUNT(emp_no) AS frequency, last_name FROM employees
GROUP BY last_name
ORDER BY frequency DESC;

