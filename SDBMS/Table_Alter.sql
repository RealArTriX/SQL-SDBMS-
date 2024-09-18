ALTER TABLE Issues
ADD FOREIGN KEY(isu_book_id)
REFERENCES Books(book_id)
ON DELETE CASCADE;

ALTER TABLE Issues
ADD FOREIGN KEY(isu_stu_id)
REFERENCES Students(stu_id)
ON DELETE CASCADE;

ALTER TABLE Permissions
ADD FOREIGN KEY(pr_role_id)
REFERENCES roles(rol_id)              
ON DELETE CASCADE;

ALTER TABLE Login
ADD FOREIGN KEY(lgn_role_id)
REFERENCES roles(rol_id)
ON DELETE SET NULL;

ALTER TABLE Login 
ADD FOREIGN KEY(lgn_usr_id)
REFERENCES user(usr_id)
ON DELETE CASCADE;

ALTER TABLE Books
ADD FOREIGN KEY(book_brn_id)
REFERENCES Branch(brn_id)
ON DELETE SET NULL;

ALTER TABLE Instructors
ADD FOREIGN KEY(inct_brn_id)
REFERENCES Branch(brn_id)
ON DELETE SET NULL;

ALTER TABLE Instructors
ADD Join_date DATE,
ADD Separation_date DATE,
ADD Status VARCHAR(30);

ALTER TABLE students
ADD stu_join_date DATE,
ADD stu_Separation_date DATE,
ADD stu_status VARCHAR(30);

ALTER TABLE Instructors
RENAME COLUMN Join_date TO inct_join_date,
RENAME COLUMN Separation_date TO inct_separation_date,
RENAME COLUMN Status TO inct_status;

ALTER TABLE salary
ADD pay_date DATE,
ADD Sal_id INT,
ADD FOREIGN KEY(sal_id)
REFERENCES instructors(inct_id)
ON DELETE CASCADE;

ALTER TABLE students
ADD stu_surname VARCHAR(50);

ALTER TABLE Instructors
ADD inct_surname VARCHAR(50);

ALTER TABLE students AUTO_INCREMENT = 1;
ALTER TABLE books AUTO_INCREMENT = 27;
ALTER TABLE instructors AUTO_INCREMENT = 16;
ALTER TABLE issues AUTO_INCREMENT = 6;
ALTER TABLE login AUTO_INCREMENT = 721;
ALTER TABLE salary AUTO_INCREMENT = 16;
ALTER TABLE users AUTO_INCREMENT = 111;
ALTER TABLE branch AUTO_INCREMENT = 1017;

ALTER TABLE performance
ADD stu_id INT,
ADD FOREIGN KEY(stu_id)
REFERENCES students(stu_id)
ON DELETE CASCADE;

ALTER TABLE students
ADD stu_brn_id int,
ADD FOREIGN KEY(stu_brn_id)
REFERENCES branch(brn_id)
ON DELETE SET NULL;

ALTER TABLE instructors
DROP COLUMN status,
DROP COLUMN join_date,
DROP COLUMN separation_date;

ALTER TABLE instructors
ADD inct_sal_id INT,
ADD FOREIGN KEY(inct_sal_id)
REFERENCES salary(sal_id)
ON DELETE SET NULL;

ALTER TABLE instructors DROP COLUMN inct_sal_id; 
