const express = require('express');
const mysql = require('mysql');
const fs = require('fs');

const PORT = process.env.PORT || 3001;
const app = express();

app.use(express.urlencoded({ extended: false }));
app.use(express.json());
app.use(express.static('public'));

const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'employee_info'
},
    console.log('Connected to the employees database')
);

app.listen(PORT, () =>
    console.log(`Example app listening at http://localhost:${PORT}`)
);