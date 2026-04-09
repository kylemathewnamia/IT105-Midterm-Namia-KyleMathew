# Student Enrollment System - IT105 Midterm Project

## Project Title
**Student Enrollment System Database**

## System Description
This database system manages student enrollment for a school. It tracks students, courses, instructors, departments, and which students are enrolled in which courses.

## Tables Description

| Table | Description |
|-------|-------------|
| Departments | Stores department information (IT, CS, Engineering, etc.) |
| Students | Stores student information (name, email, department) |
| Instructors | Stores instructor information (name, department) |
| Courses | Stores course information (course name, instructor) |
| Enrollments | Links students to courses (which student took which course) |

## Features Implemented

1. **Database Design** - 5 tables with primary keys and foreign key relationships
2. **Normalization** - Database normalized from UNF to 3NF
3. **Sample Data** - 10+ records per table
4. **SQL Operations** - SELECT, INSERT, UPDATE, DELETE, JOIN, SUBQUERY
5. **Indexing** - Before/after comparison showing performance improvement

## Reflection

Through this project, I learned:

- How to design a relational database with proper relationships using primary and foreign keys
- The importance of normalization from UNF to 3NF to eliminate redundancy and anomalies
- How to write SQL queries including JOINs and subqueries
- How indexing improves query performance by replacing full table scans with index seeks
- How to use Git and GitHub for version control with multiple commits