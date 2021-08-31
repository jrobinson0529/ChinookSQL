select FirstName, LastName, InvoiceId, InvoiceDate, BillingCountry, Country
from Invoice, Customer
where Customer.Country = 'BRAZIL'