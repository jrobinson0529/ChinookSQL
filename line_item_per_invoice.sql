SELECT i.InvoiceID, COUNT(*) [Number of Line Items]
FROM Invoice i
	JOIN InvoiceLine il
	ON i.InvoiceId = il.InvoiceId
	GROUP BY i.InvoiceId