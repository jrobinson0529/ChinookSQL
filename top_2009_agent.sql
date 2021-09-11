SELECT TOP 1 e.EmployeeId, e.Email, e.FirstName, e.LastName, SUM(i.Total) [Total Sales]
FROM Employee e
JOIN Customer c
ON c.SupportRepId = e.EmployeeId
JOIN Invoice i
ON c.CustomerId = i.CustomerId
WHERE year(i.InvoiceDate) = 2009
GROUP BY e.EmployeeId, e.Email, e.FirstName, e.LastName
ORDER BY SUM(i.Total) DESC
