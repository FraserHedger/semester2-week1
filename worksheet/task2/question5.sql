-- For each student, calculate the total number of credits from courses they passed. Assume a passing grade is 40 or higher.
-- Expected Columns:
-- StudentId, FirstName, LastName,
SELECT s.StudentId, s.FirstName, s.LastName, SUM(c.Credits) AS TotalCredits
FROM Enrolment e
JOIN Student s ON e.StudentId = s.StudentId
JOIN Course c ON e.CourseId = c.CourseId
WHERE e.Grade >= 40
GROUP BY s.StudentId, s.FirstName, s.LastName;
