-- List all students along with the names of the courses they are enrolled in.
-- Expected Columns:
-- StudentId, FirstName, LastName, CourseName

SELECT Student.StudentId ,Student.FirstName, Student.LastName, Course.CourseName
FROM Enrolment 
LEFT JOIN Student ON Enrolment.Studentid = Student.Studentid
LEFT JOIN Course ON Enrolment.Courseid = Course.Courseid



