-- Find the 5 youngest students in the database.
-- Expected Columns:
-- StudentId, FirstName, LastName, DateOfBirth
SELECT StudentID, FirstName, LastName, DateOfBirth
FROM Student
ORDER BY DateOfBirth DESC
LIMIT 5;