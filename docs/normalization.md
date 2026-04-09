# Normalization Process: Student Enrollment System

## UNF (Unnormalized Form)
The raw student enrollment data contains repeating groups, violating atomicity.

**Example:**
| StudentID | StudentName | CourseList |
|-----------|-------------|----------------|
| 101 | Juan Dela Cruz | Database Systems, Programming 1, Web Development |
| 102 | Maria Santos | Business Management, Marketing |

**Problem:** Multiple course values in a single field. Querying individual courses is impossible.

---

## 1NF (First Normal Form)
Repeating groups are eliminated. Each column contains atomic (single) values.

**Example:**
| StudentID | StudentName | Course |
|-----------|-------------|-------------------|
| 101 | Juan Dela Cruz | Database Systems |
| 101 | Juan Dela Cruz | Programming 1 |
| 101 | Juan Dela Cruz | Web Development |
| 102 | Maria Santos | Business Management |
| 102 | Maria Santos | Marketing |

**Achieved:** Each row is unique. Course data is now queryable.

**Remaining Problem:** Data redundancy exists (StudentName repeats for each course).

---

## 2NF (Second Normal Form)
Partial dependencies are removed by separating data into distinct tables.

**Tables Created:**
- `Students` (StudentID, StudentName) - stores student data once
- `Courses` (CourseID, CourseName) - stores course data once
- `Enrollments` (StudentID, CourseID) - links students to courses

**Example Data:**
| StudentID | StudentName |
|-----------|-------------|
| 101 | Juan Dela Cruz |

| CourseID | CourseName |
|----------|-------------------|
| 1 | Database Systems |

| StudentID | CourseID |
|-----------|----------|
| 101 | 1 |

**Achieved:** No partial dependency. StudentName depends only on StudentID.

---

## 3NF (Third Normal Form)
Transitive dependencies are removed by extracting related data into separate tables.

**New Tables Created:**
- `Departments` (DepartmentID, DepartmentName)
- `Instructors` (InstructorID, InstructorName, DepartmentID)
- `Courses` updated to include InstructorID (removing transitive dependency on InstructorName)

**Final Table Structure:**
| Table | Primary Key | Foreign Key(s) |
|-------|-------------|----------------|
| Departments | DepartmentID | - |
| Students | StudentID | DepartmentID |
| Instructors | InstructorID | DepartmentID |
| Courses | CourseID | InstructorID |
| Enrollments | EnrollmentID | StudentID, CourseID |

**Achieved:** No transitive dependency. Instructor information is independent of Course data.

---

## Normalization Summary

| Normal Form | Action Taken | Problem Solved |
|-------------|--------------|----------------|
| UNF → 1NF | Atomic values | Repeating groups |
| 1NF → 2NF | Separate tables | Partial dependency |
| 2NF → 3NF | Extract related data | Transitive dependency |

**Result:** The Student Enrollment System is fully normalized to 3NF, ensuring:
- No data redundancy
- No update anomalies
- No insertion/deletion anomalies
- Referential integrity through foreign keys