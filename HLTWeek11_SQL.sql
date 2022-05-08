show databases;
CREATE DATABASE employee2022
USE employee2022;
CREATE TABLE employee_info(
Emp_ID INT NOT NULL,
Emp_Name VARCHAR (20) NOT NULL,
Sex CHAR (1),
City VARCHAR (15) NOT NULL,
Start_date DATE,
Salary DECIMAL (8,2) NOT NULL,
PRIMARY KEY (Emp_ID));

explain employee_info;

ALTER TABLE employee_info
DROP COLUMN sex;

ALTER TABLE employee_info rename to staff_info;

ALTER TABLE staff_info
ADD COLUMN position varchar(20);

EXPLAIN staff_info

ALTER TABLE staff_info
DROP COLUMN Start_date;

ALTER TABLE staff_info
ADD COLUMN Age INT;

ALTER TABLE staff_info
modify Age INT NOT NULL;

ALTER TABLE staff_info
modify position INT NOT NULL;

ALTER TABLE staff_info
drop column position;

EXPLAIN staff_info

INSERT INTO staff_info (Emp_ID, Emp_Name, City, Salary, Age)
VALUES ('1', 'Robert', 'London', '35000', '33'),
('2', 'Jack', 'Birmingham', '34000', '28'),
('3', 'Rahim', 'Cardiff', '24000', '22');

SELECT * FROM staff_info

INSERT INTO staff_info (Emp_ID, Emp_Name, City, Salary, Age)
VALUES ('4', 'Josh', 'Leeds', '30000', '37'),
('5', 'Kevin', 'Coventry', '44000', '48');

SELECT * FROM staff_info WHERE Emp_ID = 4;

SELECT * FROM staff_info ORDER BY Emp_Name;