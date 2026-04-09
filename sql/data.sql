-- =====================================================
-- STUDENT ENROLLMENT SYSTEM - SAMPLE DATA
-- 10+ RECORDS PER TABLE
-- =====================================================

-- -----------------------------------------------------
-- DEPARTMENTS (10 records)
-- -----------------------------------------------------
INSERT INTO Departments (DepartmentName) VALUES
('Information Technology'),
('Computer Science'),
('Business Administration'),
('Education'),
('Engineering'),
('Accountancy'),
('Tourism'),
('Criminology'),
('Nursing'),
('Arts and Sciences');

-- -----------------------------------------------------
-- STUDENTS (10 records)
-- -----------------------------------------------------
INSERT INTO Students (Name, Email, DepartmentID) VALUES
('Juan Dela Cruz', 'juan.delacruz@student.edu', 1),
('Maria Santos', 'maria.santos@student.edu', 2),
('Jose Rizal', 'jose.rizal@student.edu', 3),
('Ana Reyes', 'ana.reyes@student.edu', 1),
('Mark Lopez', 'mark.lopez@student.edu', 2),
('John Cruz', 'john.cruz@student.edu', 4),
('Jane Dela Peña', 'jane.delapena@student.edu', 5),
('Paul Gomez', 'paul.gomez@student.edu', 6),
('Liza Flores', 'liza.flores@student.edu', 7),
('Miguel Tan', 'miguel.tan@student.edu', 8);

-- -----------------------------------------------------
-- INSTRUCTORS (10 records)
-- -----------------------------------------------------
INSERT INTO Instructors (Name, DepartmentID) VALUES
('Dr. Maria Reyes', 1),
('Prof. James Lopez', 2),
('Dr. Susan Cruz', 3),
('Prof. Robert Santos', 4),
('Dr. Anna Garcia', 5),
('Prof. Michael Tan', 6),
('Dr. Elizabeth Lim', 7),
('Prof. David Mendoza', 8),
('Dr. Patricia Villanueva', 9),
('Prof. Christopher Fernandez', 10);

-- -----------------------------------------------------
-- COURSES (10 records)
-- -----------------------------------------------------
INSERT INTO Courses (CourseName, InstructorID) VALUES
('Database Systems', 1),
('Programming 1', 2),
('Web Development', 3),
('System Analysis', 4),
('Networking Fundamentals', 5),
('Accounting Basics', 6),
('Tourism Management', 7),
('Criminal Law', 8),
('Nursing Care', 9),
('Art Appreciation', 10);

-- -----------------------------------------------------
-- ENROLLMENTS (10 records)
-- -----------------------------------------------------
INSERT INTO Enrollments (StudentID, CourseID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);