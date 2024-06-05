create Database Rohit;
Use Rohit;
CREATE TABLE Department (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL
);
insert into Department values  (1,"DSDS"),
(2,"DSDA"),
(3,"JAVA"),
(4,"Full Stack Developer"),
(5,"Web Developer");
select*from Department;
CREATE TABLE Course (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);
insert into Course values (1,"Excel",1),
(2,"Excel",2), (3,"SQL",1),(4,"SQL",2),(5,"Power BI",1),(6,"Power BI",2);
insert into Course values (7,"Python",1),(8,"Python",2),(9,"basic Java",3),(10,"Advance Java",4),(11,"Java",5);
select*from Course;
CREATE TABLE Student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(20),
    birth_date DATE,
    enrollment_date DATE,
    graduation_date DATE,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);
insert into Student values (101, 'Rohit', 'Verma', 'ro@lk', '78945612', '1998-01-03', '2023-09-28', '2019-11-30', 1),
(102,"Deepti","Badatya","dp@hu","808092365",'2000-03-14','2023-09-28','2023-06-06',2),
(103, 'Shardha', 'Gharger', 'sg@kl', '784596321', '1968-03-15', '2023-10-02', '2022-06-05', 3),
(104, 'Rutu', 'Mushate', 'rm@hj', '457896123', '1999-03-15', '2022-06-01', '2022-06-01', 4),
(105, 'Shitij', 'Bhagre', 'hb@ui', '457123669', '1995-05-12', '2023-12-01', '1999-06-05', 5);
select * from Student;
CREATE TABLE Instructor (
    instructor_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(20),
    hire_date DATE,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);
insert into Instructor values (201,'Rutu','Surve','rs@rs','789456123','2023-05-06',1),
(202,'Punam','Shalesa','ps@ps','456789123','2023-01-01',2),
(203,'Mritunjay','Kumar','mk@mk','7539514862','2023-02-02',3),
(204,'Tanvi','Surve','ts@ts','758964123','2023-03-03',4),
(205,'Rohit','Chavan','rc@rc','9842563781','2023-04-04',5);
Select*from Instructor;
CREATE TABLE Enrollment (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    grade VARCHAR(2),
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);
insert into Enrollment values (1001,101,1,'2023-09-28','95'),
(1002,102,2,'2023-09-28','85'),
(1003,103,3,'2023-10-02','82'),
(1004,104,4,'2022-06-01','79'),
(1005,105,5,'2023-12-01','56');
Select*from Enrollment;
CREATE TABLE Assignment (
    assignment_id INT PRIMARY KEY AUTO_INCREMENT,
    course_id INT,
    assignment_name VARCHAR(100) NOT NULL,
    description TEXT,
    due_date DATE,
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);
insert into Assignment values (901,1,'Schema','Create a Schema','2024-04-20'),
(902,2,'Power BI','Create a Dashboard','2024-04-20'),
(903,3,'Java','Create a software','2024-04-20'),
(904,4,'Development','Develop a software for AI','2024-04-20'),
(905,5,'Design','Design a Software for client','2024-04-20');
Select * from Assignment;
CREATE TABLE Grade (
    grade_id INT PRIMARY KEY AUTO_INCREMENT,
    enrollment_id INT,
    assignment_id INT,
    grade VARCHAR(2),
    FOREIGN KEY (enrollment_id) REFERENCES Enrollment(enrollment_id),
    FOREIGN KEY (assignment_id) REFERENCES Assignment(assignment_id)
);
insert into Grade values (2001,1001,901,"99"),
(2002,1002,902,'95'),
(2003,1003,903,'90'),
(2004,1004,904,'85'),
(2005,1005,905,'80');
select*from Grade;
Select*from Department;
