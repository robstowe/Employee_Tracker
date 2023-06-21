INSERT INTO department (id, dept_name)
VALUES  (001, "Sales"),
        (002, "Engineering"),
        (003, "Finance"),
        (004, "Legal");

INSERT INTO roles (id, job_title)
VALUES  (001, "Account Executive", 100,000.00,),
        (002, "Sales Manager", 150,000.00,),
        (003, "Software Engineer", 100,000.00,),
        (004, "Lead Engineer", 150,000.00,),
        (005, "Accountant", 100,000.00,);
        (006, "Chief Revenue Officer", 150,000.00,),
        (007, "Lawyer", 100,000.00,),
        (008, "Chief Legal Officer", 150,000.00,);

INSERT INTO roles (salary)
VALUES  ("");
--Josshy should this just be an empty string?

INSERT INTO roles (department_id)
VALUES  ();
--I'm not sure how we define department id

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES  (01, 'Rob', 'Stowe', 100,000.00, 001, '');
        (02, 'Adam', 'Colin', 150,000.00, 002, '');
        (03, 'Alex', 'Colin', 100,000.00, 003, '');
        (04, 'Suraj', 'Nair', 150,000.00, 004, '');
        (05, 'Drew', 'Jordan', 100,000.00, 005, '');
        (06, 'Barry', 'Engler', 150,000.00, 006, '');
        (07, 'Hamza', 'Rahman', 100,000.00, 007, '');
        (08, 'Nick', 'Giannini', 150,000.00, 008, '');
--Assuming this should just be an empty string?

INSERT INTO employee (last_name)
VALUES  ("");
--Assuming this should just be an empty string?

INSERT INTO employee (role_id)
VALUES ();
--not sure how to define this, assuming it has to go back to the roles table

INSERT INTO employee (manager_id)
VALUES ();
--same as above