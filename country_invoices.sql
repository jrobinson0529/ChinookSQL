SELECT BillingCountry, COUNT(*) [# Of Invoices]
FROM Invoice
GROUP BY BillingCountry