--Create tables for loading
CREATE TABLE Titles (
    "Emp_no" int   NOT NULL,
    "Title" varchar (20)  NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL
);

CREATE TABLE Salaries (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL
);

CREATE TABLE Employees (
    "emp_no" int   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar  (40) NOT NULL,
    "gender" varchar  (40) NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE Dept_Mgr (
    "dept_no" varchar(4)   NOT NULL,
    "emp_no" int   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL
);

CREATE TABLE Dept_Employees (
    "emp_no" int   NOT NULL,
    "dept_no" varchar (4)   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL
);

CREATE TABLE Departments (
    "dept_no" varchar (4)  NOT NULL,
    "dept_name" varchar (30)  NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

Select * from departments;
Select * from dept_employees;
Select * from dept_mgr;
Select * from employees;
Select * from salaries;
Select * from titles;