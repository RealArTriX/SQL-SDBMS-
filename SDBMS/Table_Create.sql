USE sdbms;

CREATE TABLE Students (
    stu_id INT PRIMARY KEY,
    stu_name VARCHAR(50),
    stu_ph_no INT,
    stu_email VARCHAR(100),
    stu_dob DATE
);

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    book_name VARCHAR(50),
    athr_name VARCHAR(50),
    book_brn_id INT,
    book_price INT
);

CREATE TABLE Branch (
    brn_id INT PRIMARY KEY,
    brn_name VARCHAR(20),
    brn_ctg VARCHAR(20)
);

CREATE TABLE Users (
    usr_id INT PRIMARY KEY,
    usr_name VARCHAR(50),
    usr_ph_no INT,
    usr_email VARCHAR(50)
);

CREATE TABLE Issues (
    isu_id INT UNIQUE,
    isu_date DATE,
    isu_book_id INT,
    isu_stu_id INT
);

CREATE TABLE Login (
    lgn_id INT UNIQUE NOT NULL,
    lgn_usr_id INT,
    lgn_usr_name VARCHAR(50),
    lgn_usr_pass VARCHAR(20),
    lgn_role_id INT
);

CREATE TABLE Roles (
    rol_id INT PRIMARY KEY,
    rol_name VARCHAR(25),
    rol_lvl VARCHAR(20)
);

CREATE TABLE Permissions (
    pr_id INT UNIQUE NOT NULL,
    pr_name VARCHAR(20),
    pr_role_id INT
);

CREATE TABLE Instructors (
    inct_id INT PRIMARY KEY,
    inct_name VARCHAR(50),
    inct_ph_no INT,
    inct_email VARCHAR(100),
    inct_brn_id INT
);

CREATE TABLE salary (
    Basic_salary INT NOT NULL,
    DA_salary INT,
    HRA_salary INT,
    Tax INT
);

CREATE TABLE performance (
    attendance INT NOT NULL,
    total_marks INT,
    grade CHAR(1),
    best_subject VARCHAR(255)
);

CREATE INDEX idx_sname
ON students(stu_surname, stu_name);

CREATE INDEX idx_iname
ON instructors(inct_surname, inct_name);

CREATE INDEX idx_credlogin
ON login(lgn_usr_id, lgn_usr_pass);