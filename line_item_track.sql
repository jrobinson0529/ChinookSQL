SELECT il.InvoiceLineId, t.Name [Track]
FROM InvoiceLine il
	JOIN Track t
	ON il.TrackId = t.TrackId
	ORDER BY il.InvoiceLineId desc

