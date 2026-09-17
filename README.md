# Employee-Database-for-MySQL-ASS-2--Module-3
# Employee Database – DML Data Insertion

## 📌 Project Overview

As a Data Analyst, this project continues the development of the **Employee Database** created in the previous DDL assignment.

The database already contains the required tables, relationships, primary keys, foreign keys, and other constraints. In this assignment, **MySQL DML (Data Manipulation Language) commands** are used to populate the database tables with employee-related data.

The main objective is to insert valid data into the existing tables while maintaining **data integrity and consistency**.

---

## 🎯 Objectives

The objectives of this assignment are:

* Populate the Employee Database with sample data.
* Use **DML INSERT statements** to add records to the tables.
* Insert data while respecting primary key and foreign key constraints.
* Ensure that employee information is stored correctly.
* Maintain relationships between Employees, Departments, and Locations.
* Verify that the inserted records are available in the database.

---

## 🗄️ Database Structure

The Employee Database contains the following main tables:

### 1. Departments

Stores information about different departments in the organization.

| Column            | Description                           |
| ----------------- | ------------------------------------- |
| `department_id`   | Unique identifier for each department |
| `department_name` | Name of the department                |

### 2. Locations

Stores information about the locations associated with the organization.

| Column          | Description                         |
| --------------- | ----------------------------------- |
| `location_id`   | Unique identifier for each location |
| `location_name` | Name of the location                |

### 3. Employees

Stores information about employees working in the organization.

| Column          | Description                         |
| --------------- | ----------------------------------- |
| `employee_id`   | Unique identifier for each employee |
| `employee_name` | Name of the employee                |
| `gender`        | Employee gender (`M` or `F`)        |
| `age`           | Age of the employee                 |
| `hire_date`     | Employee joining date               |
| `designation`   | Employee job designation            |
| `salary`        | Employee salary                     |
| `department_id` | Reference to the Departments table  |
| `location_id`   | Reference to the Locations table    |

---

## 🛠️ Technologies Used

* **MySQL**
* **MySQL Workbench**
* SQL – Data Manipulation Language (DML)

---

## 📝 DML Insertion

The `INSERT INTO` command is used to populate the tables with records.

### Insert Departments

```sql
INSERT INTO Departments
(department_id, department_name)
VALUES
(1, 'Human Resources'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Marketing'),
(5, 'Sales');
```

### Insert Locations

```sql
INSERT INTO Locations
(location_id, location_name)
VALUES
(1, 'Chennai'),
(2, 'Bangalore'),
(3, 'Mumbai'),
(4, 'Hyderabad'),
(5, 'Delhi');
```

### Insert Employees

```sql
INSERT INTO Employees
(employee_id, employee_name, gender, age, hire_date,
 designation, salary, department_id, location_id)
VALUES
(101, 'John Smith', 'M', 30, '2022-01-15',
 'Data Analyst', 55000.00, 3, 1),

(102, 'Priya Sharma', 'F', 28, '2021-06-20',
 'HR Executive', 45000.00, 1, 1),

(103, 'Rahul Kumar', 'M', 35, '2020-03-10',
 'Finance Manager', 75000.00, 2, 2),

(104, 'Anita Devi', 'F', 27, '2023-02-05',
 'Marketing Executive', 48000.00, 4, 3),

(105, 'Arun Raj', 'M', 32, '2019-11-18',
 'Sales Manager', 68000.00, 5, 4);
```

> **Note:** The employee data above is sample data. Replace it with the INSERT statements/data provided in your assignment if your instructor has given specific records.

---

## 🔍 Verification of Inserted Data

After inserting the records, the data can be verified using `SELECT` statements.

### View Departments

```sql
SELECT * FROM Departments;
```

### View Locations

```sql
SELECT * FROM Locations;
```

### View Employees

```sql
SELECT * FROM Employees;
```

### View Employees with Department and Location

```sql
SELECT 
    e.employee_id,
    e.employee_name,
    e.designation,
    e.salary,
    d.department_name,
    l.location_name
FROM Employees e
JOIN Departments d
    ON e.department_id = d.department_id
JOIN Locations l
    ON e.location_id = l.location_id;
```

---

## 🔐 Data Integrity

The INSERT operations must follow the constraints defined in the database.

Important considerations include:

* Each `employee_id` must be unique.
* Each `department_id` must exist in the `Departments` table before it is referenced by an employee.
* Each `location_id` must exist in the `Locations` table before it is referenced by an employee.
* Employee names should not be NULL if the column has a `NOT NULL` constraint.
* Gender values must follow the defined constraint.
* Employee age must satisfy the minimum age condition.
* Salary values must use the correct numeric format.

---

## 📂 Project Files

The project can contain the following files:

```text
Employee-Database/
│
├── README.md
├── Employee_DML_Insert.sql
└── Employee_Database.sql
```

### File Description

* **README.md** – Documentation of the project and DML operations.
* **Employee_DML_Insert.sql** – SQL statements used to insert employee data.
* **Employee_Database.sql** – Database and table creation script from the previous assignment.

---

## 🚀 Execution Steps

1. Open **MySQL Workbench**.
2. Open the Employee Database SQL script.
3. Select the appropriate database using:

```sql
USE employee_database;
```

4. Ensure that the required tables have already been created.
5. Insert records into the `Departments` and `Locations` tables.
6. Insert employee records into the `Employees` table.
7. Execute the SQL statements.
8. Use `SELECT *` queries to verify the inserted records.
9. Save the SQL script for future use.

---

## 📊 Expected Outcome

After successfully executing the DML INSERT statements:

* Department records are stored in the `Departments` table.
* Location records are stored in the `Locations` table.
* Employee records are stored in the `Employees` table.
* Primary key constraints prevent duplicate identifiers.
* Foreign key relationships maintain connections between employees, departments, and locations.
* The database is populated and ready for further **DML queries, joins, subqueries, aggregate functions, and window functions**.

---

## ✅ Conclusion

This assignment demonstrates the use of **MySQL DML INSERT commands** to populate an existing Employee Database. The employee data is inserted while following the database structure, relationships, and constraints established during the previous DDL assignment.

The completed database provides a reliable foundation for performing further SQL operations and analyzing employee-related information using MySQL.
