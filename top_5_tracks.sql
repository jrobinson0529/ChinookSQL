SELECT TOP 5 t.Name, COUNT(*) [# Purchased]
FROM Track t, InvoiceLine il, invoice i
WHERE t.TrackId = il.TrackId
AND i.InvoiceId = il.InvoiceId
GROUP BY t.Name
ORDER BY COUNT(*) desc