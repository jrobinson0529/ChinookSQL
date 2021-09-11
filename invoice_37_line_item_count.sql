SELECT COUNT(*) [Line Items for Invoice ID 37]
FROM InvoiceLine il
JOIN Invoice i
	ON i.InvoiceId = 37 AND il.InvoiceId = 37