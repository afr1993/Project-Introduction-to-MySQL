CREATE DATABASE StudentRecords;
SHOW DATABASES;
USE StudentRecords;
CREATE TABLE Students (
    studentId INT PRIMARY KEY,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    age INT,
    email VARCHAR(100)
);

INSERT INTO Students (studentId, firstName, lastName, age, email) VALUES
(1, 'Adrian', 'Flores', 30, 'afr.1993@gmail.com'),
(2, 'Juan', 'Perez', 22, 'jnp345@gmail.com'),
(3, 'Pedro', 'Ramirez', 19, 'prz@gmail.com'),
(4, 'Miguel', 'Villa', 21, 'mikevilla@gmail.com'),
(5, 'Eva', 'Gonzales', 23, 'evag98e@gmail.com');

CREATE TABLE Courses (
    courseId INT PRIMARY KEY,
    courseName VARCHAR(100),
    courseDescription TEXT,
    studentId INT,
    FOREIGN KEY (studentId) REFERENCES Students(studentId)
);
INSERT INTO Students (studentId, firstName, lastName, age, email)
VALUES (6, 'Frank', 'Castel', 20, 'frankpunisher124@gmail.com');

SELECT * FROM Students;

UPDATE Students
SET age = 31
WHERE studentId = 1;

SELECT * FROM Students WHERE studentId = 1;


INSERT INTO Courses (courseId, courseName, courseDescription, studentId) VALUES
(101, 'Mathematics', 'Algebra and calculus.', 1),
(102, 'English Literature', 'Modern English texts.', 2),
(103, 'Computer Science', 'Programming and databases.', 3),
(104, 'History', 'World history', 4),
(105, 'Biology', 'Human anatomy.', 5);

SELECT * FROM Courses;



