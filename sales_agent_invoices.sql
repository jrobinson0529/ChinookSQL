select Employee.FirstName, Employee.LastName, Invoice.InvoiceId, Invoice.Total
from Employee, Invoice, Customer
where Employee.Title = 'sales support agent' and Employee.EmployeeId = Customer.SupportRepId and Invoice.InvoiceId = Customer.CustomerId