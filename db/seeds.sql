INSERT INTO department (department_name)
VALUES ("Sales"),
       ("Engineering"),
       ("Finance"),
       ("Legal");


-- INSERT INTO department (dept_name)
-- VALUES  ("Sales"),
--         ("Engineering"),
--         ("Finance"),
--         ("Legal");

INSERT INTO employee_jobs (job_title, salary, department_id)
VALUES  ("Account Executive", 100000.00, 1),
        ("Sales Manager", 150000.00, 1),
        ("Software Engineer", 100000.00, 2),
        ("Lead Engineer", 150000.00, 2),
        ("Accountant", 100000.00, 3),
        ("Chief Revenue Officer", 200000.00, 3),
        ("Lawyer", 100000.00, 4),
        ("Chief Legal Officer", 200000.00, 4);


INSERT INTO employee_data (first_name, last_name, role_id)
VALUES  ('Rob', 'Stowe', 1),
        ('Adam', 'Colin', 2),
        ('Alex', 'Colin', 3),
        ('Suraj', 'Nair', 4),
        ('Drew', 'Jordan', 5),
        ('Barry', 'Engler', 6),
        ('Hamza', 'Rahman', 7),
        ('Nick', 'Giannini', 8);

INSERT INTO employee_data (first_name, last_name, role_id, manager_id)
VALUES ('Josshy', 'Olea', 3, 4);
