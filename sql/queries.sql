-- =====================================================
-- STUDENT ENROLLMENT SYSTEM - SQL OPERATIONS
-- SELECT | INSERT | UPDATE | DELETE | JOIN | SUBQUERY
-- =====================================================

-- -----------------------------------------------------
-- 1. SELECT (Retrieve all students)
-- -----------------------------------------------------
SELECT * FROM Students;

-- -----------------------------------------------------
-- 2. SELECT with WHERE (Filter specific department)
-- -----------------------------------------------------
SELECT * FROM Students WHERE DepartmentID = 1;

-- -----------------------------------------------------
-- 3. INSERT (Add a new student)
-- -----------------------------------------------------
INSERT INTO Students (Name, Email, DepartmentID)
VALUES ('Test Student', 'test.student@student.edu', 1);

-- -----------------------------------------------------
-- 4. UPDATE (Modify a student's name)
-- -----------------------------------------------------
UPDATE Students 
SET Name = 'Updated Student Name' 
WHERE StudentID = 1;

-- -----------------------------------------------------
-- 5. DELETE (Remove a test student)
-- -----------------------------------------------------
DELETE FROM Students 
WHERE StudentID = 11;

-- -----------------------------------------------------
-- 6. JOIN (Show students with their course enrollments)
-- -----------------------------------------------------
SELECT 
    s.Name AS StudentName,
    c.CourseName AS EnrolledCourse
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID;

-- -----------------------------------------------------
-- 7. SUBQUERY (Find students in IT department)
-- -----------------------------------------------------
SELECT Name 
FROM Students 
WHERE DepartmentID = (
    SELECT DepartmentID 
    FROM Departments 
    WHERE DepartmentName = 'Information Technology'
);

-- -----------------------------------------------------
-- 8. JOIN with Aggregation (Count enrollments per student)
-- -----------------------------------------------------
SELECT 
    s.Name,
    COUNT(e.CourseID) AS NumberOfCourses
FROM Students s
LEFT JOIN Enrollments e ON s.StudentID = e.StudentID
GROUP BY s.StudentID, s.Name;

-- -----------------------------------------------------
-- 9. JOIN with Department (Students and their departments)
-- -----------------------------------------------------
SELECT 
    s.Name AS StudentName,
    d.DepartmentName AS Department
FROM Students s
JOIN Departments d ON s.DepartmentID = d.DepartmentID;

-- -----------------------------------------------------
-- 10. SUBQUERY with IN (Find students enrolled in Database Systems)
-- -----------------------------------------------------
SELECT Name 
FROM Students 
WHERE StudentID IN (
    SELECT StudentID 
    FROM Enrollments 
    WHERE CourseID = (
        SELECT CourseID 
        FROM Courses 
        WHERE CourseName = 'Database Systems'
    )
);