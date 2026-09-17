-- To create Employee database
create database Employeesdetails;
Use Employeesdetails;
create table Departments (
department_id int primary key,
department_name varchar(100)
);
create table Location(
location_id int primary key,
location_name varchar(100)
);
create table Employees(

employee_id int primary key,
employee_name varchar(100),
gender enum('M','F'),
Age int,
Hire_Date date,
Designtion varchar(100),
Salary decimal(10,2),
department_id int,
Location_id int,

foreign key (department_id)
references Departments(department_id),

foreign key (location_id)
references location(location_id)
);
-- alter table - add
alter table employees
add column Email varchar(100);

alter table employees
modify column designation varchar(100);

alter table employees
drop column Age;

alter table employees
rename column hire_date to date_of_joining;




