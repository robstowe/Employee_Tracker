DROP DATABASE IF EXISTS employee_info;
CREATE DATABASE employee_info;

USE employee_info;

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(30) NOT NULL
);


-- CREATE TABLE department (
--     id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     dept_name VARCHAR(30) NOT NULL
-- );

CREATE TABLE employee_jobs (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    job_title VARCHAR(30) NOT NULL,
    salary DECIMAL,
    department_id INT,
    FOREIGN KEY (department_id)
    REFERENCES department(id)
    ON DELETE SET NULL
);

CREATE TABLE employee_data (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
    FOREIGN KEY (role_id)
    REFERENCES employee_jobs(id),
    manager_id INT
);