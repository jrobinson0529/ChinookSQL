SELECT e.EmployeeId, e.Email, e.FirstName, e.LastName, SUM(i.Total) [Total Sales]
FROM Employee e
JOIN Customer c
ON c.SupportRepId = e.EmployeeId
JOIN Invoice i
ON c.CustomerId = i.CustomerId
GROUP BY e.EmployeeId, e.Email, e.FirstName, e.LastName
