-- Find the number of Retiring Employees by Title (Deliverable 1)
Select e.emp_no, 
	e.first_name, 
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
Into retirement_titles
From titles as ti
Left Join employees as e
On ti.emp_no = e.emp_no
Where (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
Order by ti.emp_no;

Select * From retirement_titles;

Select Distinct On (rt.emp_no)
	rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
Into unique_titles
From retirement_titles as rt
Where (rt.to_date = '9999-01-01')
Order By rt.emp_no, rt.to_date desc;

Select * From unique_titles;

Select Count (ut.title), ut.title
Into retiring_titles
From unique_titles as ut
Group By ut.title
Order by count(ut.title) desc;

Select * From retiring_titles;

-- Find the Employees Eligible for the Mentorship Program (Deliverable 2)
Select Distinct On (ti.emp_no) 
	e.emp_no, 
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
Into mentorship_eligibilty
From employees as e
Inner Join dept_emp as de
On (e.emp_no = de.emp_no)
Inner Join titles as ti
On (e.emp_no = ti.emp_no)
Where (de.to_date = '9999-01-01')
	And (e.birth_date Between '1965-01-01' And '1965-12-31')
Order By ti.emp_no;

Select * From mentorship_eligibilty;