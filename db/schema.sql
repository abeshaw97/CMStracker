DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE department (
    id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(30),
    PRIMARY KEY(id)
);

CREATE TABLE role (
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT,
    PRIMARY KEY(id),
);

CREATE TABLE employee (
    id INT AUTO_INCREMENT NOT NULL,
     PRIMARY KEY(id),
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT,
    manager_id INT,
    FOREIGN KEY(manager_id) REFERENCES employee(id) ON DELETE SET NULL
);

SELECT * FROM department;
SELECT * FROM role;
SELECT * FROM employee;