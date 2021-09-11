SELECT TOP 1 mt.Name, COUNT(*) [# Purchased]
FROM Track t, InvoiceLine il, invoice i, MediaType mt
WHERE t.TrackId = il.TrackId
AND i.InvoiceId = il.InvoiceId
AND mt.MediaTypeId = t.MediaTypeId
GROUP BY mt.Name
ORDER BY COUNT(*) desc