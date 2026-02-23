-- For each student, calculate the total number of credits from courses they passed. Assume a passing grade is 40 or higher.
-- Expected Columns:
-- StudentId, FirstName, LastName,
SELECT s.StudentId, s.FirstName, s.LastName, 
SUM(c.credits) AS TotalCredits
FROM Student s
LEFT JOIN Enrolment e ON s.StudentId = e.StudentId
LEFT JOIN Course c ON e.CourseId = c.CourseId
GROUP BY s.StudentId
HAVING e.Grade >= 40;