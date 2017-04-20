# Projects
Application 12 is a work in progress side project Tic Tac Toe game. It is a C# program whose main goal is to be able to play against an AI that utilizes a minimax tree with alpha beta pruning. So far the game is functional, meaning that should I remove the automated playing loop a player could play against a randomized AI. In its current state, however, it is set to play itself (i.e. two random agents playing against each other) for several thousand iterations. Each game state is then saved into a file as a hash with special tokens. This is so that the contents of each game can be easily searched and populate a game tree. The next steps for this project will be to create a functional game tree, and apply pruning operations to yield the next move for an agent to take.

The ischeduler database is a class project that contains many tables necessary to create a scheduling system. This project is to show an understanding of relational databases, creating relations between tables, and key constraints. Additionally, I have created queries that address the following problems:

Q1) Show all rooms in Northside Hall building at IU South Bend that have a capacity of 50 or more seats. The result should
include the room’s designation. Results should show the Campus Name, Building Name, Room number, Room Capacity. Sort
the data on Campus Name, Building Name, Room capacity and the Room number (all in Ascending order, except for Room
Capacity).

SELECT campus.Name, building.BuildingName, RoomID, RoomCapacity, RoomDesignationID 
FROM room 
JOIN building ON (building.BuildingID = room.BuildingID) 
JOIN campus ON (campus.CampusID = room.CampusID) 
WHERE room.BuildingID = 'NS' AND room.RoomCapacity > 50 AND room.CampusID = 'SB' ORDER BY room.CampusID, room.RoomID, room.RoomCapacity DESC

Q2)  Show all classrooms in Northside Hall building at IU South Bend that have more seating capacity than Room # 223. The
result should include the room’s designation. Sort the data on room capacity and then room number.

SELECT * 
FROM room 
WHERE RoomCapacity > (SELECT RoomCapacity FROM room WHERE RoomID = '223') AND CampusID = 'SB'AND BuildingID = 'NS'
ORDER BY RoomCapacity, RoomID;

Q3) Display the studentID, student’s Last name, first name, Email, degree description, department name and campus name for
all Active students who have declared a major in one of degrees offered by the Computer and Information Sciences
department at IU South Bend. Sort the data by the title of the degree (e.g., BS in Computer Science) and then by the student’s
last name.
 
SELECT student.studentID, student.LastName, student.FirstName, student.Email, declared_program.DegreeID, academic_program.DegreeDescription, campus.Name 
FROM student 
JOIN declared_program ON (declared_program.studentID = student.studentID) 
JOIN academic_program ON (academic_program.DegreeID = declared_program.DegreeID ) 
JOIN campus ON (campus.CampusID = student.CampusID) 
WHERE academic_program.DeptID = "CSCI" AND student.CampusID = "SB" ORDER BY academic_program.DegreeDescription, student.LastName

Q4)  Display the degrees offered by the Computer and Information Sciences department at IU South Bend, and show the number
of students in each program. Sort the results showing the program with the largest enrollment to smallest enrollment. Make
sure every program is represented (BS in CS, BS in INFO, MS in Applied Math and CS) in your output

SELECT department.DeptID, academic_program.DegreeDescription, PROG_DEPT.DegreeID, academic_program.DegreeID, COUNT(student.StudentID) 
FROM department 
JOIN declared_program AS PROG_DEPT ON (PROG_DEPT.DeptID = department.DeptID)
JOIN student ON (student.StudentID = PROG_DEPT.StudentID) 
JOIN academic_program ON (academic_program.DegreeID = PROG_DEPT.DegreeID ) 
JOIN campus ON (campus.CampusID = department.CampusID) 
WHERE department.DeptID = "CSCI" AND campus.CampusID = "SB"
GROUP BY academic_program.DegreeDescription

Q5)  Show all the IU South Bend students who have successfully completed (CSCI-C243 Data Structures) or (INFO-I308
Information Representation) in the last two years. (last two years implies 2 years from the current semester, Spring 2017)
(Successful completion implies grade of C- or better) (note that these students meet the prereq for the CSCI-C490 this summer!)

SELECT student.LastName, student.FirstName, course.DeptID, course.CourseNo, enrollment.GradeID 
FROM student 
JOIN enrollment ON (enrollment.StudentID = student.StudentID) 
JOIN course ON (course.CourseID = enrollment.CourseID) 
JOIN grade ON (grade.GradeID = enrollment.GradeID) 
JOIN semester ON (semester.AcademicTerm = enrollment.AcademicTerm) 
WHERE (course.DeptID = "CSCI" AND course.CourseNo = "243") OR (course.DeptID = "INFO" AND course.CourseNo = "308") AND grade.GradePoints > (SELECT grade.GradePoints FROM grade WHERE grade.GradeID = "C-") AND ((semester.Year = "2017" AND UPPER(semester.Semester) = "FALL") OR (semester.Year = "2016" AND (UPPER(semester.Semester) = "SPRING" OR UPPER(semester.Semester) = "FALL")) OR (semester.Year = "2015" AND UPPER(semester.Semester) = "FALL"))

Q11) Your own query that uses more than 4 tables (one of which you have not used in any other query) and requires sorting
and aggregating. Provide a description of what you are trying to do, then show the query, and its results.

Display courses with students who have enrolled and received a grade in the class. Also display the average grade point, the number of students Enrolled, and Number of students with CS degrees

SELECT course.CourseID, course.CourseTitle, COUNT(STU_ENROLL.StudentID) AS EnrollmentCount, AVG(grade.GradePoints) AS AverageGrade, COUNT(CASE WHEN UPPER(academic_program.DegreeDescription) LIKE "%COMPUTER%" THEN 1 END) AS NumberOfCsDegrees 
FROM course 
JOIN enrollment AS STU_ENROLL ON (STU_ENROLL.CourseID = course.CourseID) 
JOIN grade ON (grade.GradeID = STU_ENROLL.GradeID) 
JOIN student ON (student.StudentID = STU_ENROLL.StudentID) 
JOIN declared_program ON (declared_program.StudentID = student.StudentID) 
JOIN academic_program ON (academic_program.DegreeID = declared_program.DegreeID) 
WHERE UPPER(course.DeptID) = "CSCI"
GROUP BY course.CourseID
