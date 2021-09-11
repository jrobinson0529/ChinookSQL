SELECT i.Total [Invoice Total], c.FirstName + ' ' + c.LastName [Customer Name], c.Country,
e.FirstName + ' ' + e.LastName [Employee Name]
FROM Invoice i
JOIN Customer c
ON i.CustomerId = c.CustomerId
JOIN Employee e
ON c.SupportRepId = e.EmployeeId
ORDER BY c.FirstName