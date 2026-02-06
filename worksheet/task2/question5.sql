-- For each student, calculate the total number of credits from courses they passed. Assume a passing grade is 40 or higher.
-- Expected Columns:
-- StudentId, FirstName, LastName,
SELECT Student.Studentid, Student.FirstName, Student.LastName
FROM Enrolment 
LEFT JOIN Student ON Enrolment.Studentid = Student.Studentid
LEFT JOIN Course ON Enrolment.Courseid = Course.Courseid
WHERE Enrolment.Grade >= 40;

