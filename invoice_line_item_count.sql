SELECT i.InvoiceId, i.BillingAddress, i.BillingCity, i.BillingCountry,
i.BillingPostalCode, i.BillingState, i.InvoiceDate, i.Total,
COUNT(*) [Invoices]
FROM Invoice i
JOIN InvoiceLine il
ON i.InvoiceId = il.InvoiceId 
GROUP BY i.InvoiceId, i.BillingAddress, i.BillingCity, i.BillingCountry,
i.BillingPostalCode, i.BillingState, i.InvoiceDate, i.Total
ORDER BY COUNT(*) desc

SELECT *
FROM Invoice i, InvoiceLine il
WHERE i.InvoiceId = 96
AND il.InvoiceId = i.InvoiceId