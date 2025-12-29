--Create Students table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    city VARCHAR(30),
    marks INT
);

--Inserting values into Students table
INSERT INTO Students VALUES
(01, 'Diya', 20, 'Kochi', 67),
(02, 'Shivani', 18, 'Chennai', 83),
(03, 'Jane', 22, 'Pune', 56),
(04, 'Abijith', 19, 'Chennai', 72),
(05, 'Aswin', 21, 'Kochi', 93),
(06, 'Arjun', 22, 'Hyderbad',88);

--Create Courses table
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(30),
    credits INT
);

-- Inserting values into Courses table
INSERT INTO Courses VALUES
(8021, 'Artificial Intelligence', 3),
(8022, 'Data Structures', 4),
(8032, 'Data Science', 3),
(8034, 'Operating System', 4);

--LOGICAL OPERATORS QUERIES:
--AND operation - Students from Kochi AND age > 20
SELECT name, age, city FROM Students 
WHERE city = 'Kochi' AND age > 20;

--OR operation - Students from Chennai OR marks > 75
SELECT name, marks FROM Students 
WHERE city = 'Chennai' OR marks > 75;

--NOT operation Students NOT from Pune
SELECT name, city FROM Students 
WHERE NOT city = 'Pune';

--ARITHMETIC OPERATORS:
--COUNT operation - Total students
SELECT COUNT(*) as total_students FROM Students;

--AVG operation - Average marks
SELECT AVG(marks) as avg_marks FROM Students;

--SUM operation - Total credits 
SELECT SUM(credits) as total_credits FROM Courses;

--ORDER BY QUERIES:
--ORDER BY operation for Descending order
SELECT name, marks FROM Students 
ORDER BY marks DESC;

SELECT name, age, marks FROM Students 
ORDER BY age ASC, marks DESC;
