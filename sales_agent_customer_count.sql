SELECT e.EmployeeId, e.FirstName, e.LastName, e.Email, COUNT(*) [Customers]
FROM Employee e
JOIN Customer c
ON e.EmployeeId = c.SupportRepId
GROUP BY e.FirstName, e.LastName, e.Email, e.EmployeeId