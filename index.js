const inquirer = require('inquirer');
const fs = require('fs');
const mysql = require('mysql2');

const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'employee_info'
},
    console.log('Connected to the employees database')
);

function startQuestions() {
    inquirer.prompt([
        {
            type: "list",
            message: "Would you like to do?",
            name: "primaryOptions",
            choices: ["View all departments", "View all roles", "View all employees", "Add a department", "Add a role", "Add an employee", "Update an employee's role"]

        }
    ]).then(res => {
        switch (res.primaryOptions) {
            case "View all departments":
                viewDepartments()
                break;
            case "View all roles":
                viewRoles()
                break;
            case "View all employees":
                viewEmployees()
                break;
            case "Add a department":
                addDepartment()
                break;
            case "Add a role":
                addRole()
                break;
            case "Add an employee": //needs inquirer.prompt because they are asking something, for all adds
                addEmployee()
                break;
            case "Update an employee's role":
                updateRole()
                break;
        }
    })

}

function viewDepartments() {
    db.query("Select * from department", function (e, result, fields) {
        console.table(result)
        startQuestions();
    })
}

function viewRoles() {
    db.query("Select * from employee_jobs", function (e, result, fields) {
        console.table(result);
        startQuestions();
    })
}

function viewEmployees() {
    db.query("Select * from employee_data", function (e, result, fields) {
        console.table(result);
        startQuestions();
    })
}

function addDepartment() {
    inquirer.prompt([
        {
            type: "input",
            message: "What Department would you like to add?",
            name: "newDept",
        }
    ]).then((res) => {
        db.query("Insert into department SET ?;", {
            department_name: res.newDept
        });
        startQuestions();
    })
}

function addRole() {
    inquirer.prompt([
        {
            type: "input",
            message: "What Role would you like to add?",
            name: "newRole",
        }
    ]).then((res) => {
        db.query("Insert into employee_jobs SET ?;", {
            job_title: res.newRole
        });
        startQuestions();
    })
}
//i think I need to add additional prompts here for adding employee name, salary, and department
function addEmployee() {
    inquirer.prompt([
        {
            type: "input",
            message: "What is the first name of the Employee you would like to add?",
            name: "newFirst",
        },
        {
            type: "input",
            message: "What is the last name of the Employee you would like to add?",
            name: "newLast",
        },
        {
            type: "input",
            message: "What is their role?",
            name: "newRole",
        },
        {
            type: "confirm",
            message: "Do they have a manager?",
            name: "confManager",
        },
    ]).then((res) => {
        db.query("Insert into employee_data SET ?;", {
            first_name: res.newFirst,
            last_name: res.newLast,
            role_id: res.newRole,
            manager_id: res.confManager,
        });
        startQuestions();
    })
}


startQuestions();    