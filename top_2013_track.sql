SELECT t.Name, COUNT(*) [# Purchased]
FROM Track t, InvoiceLine il, invoice i
WHERE t.TrackId = il.TrackId
AND i.InvoiceId = il.InvoiceId
AND year(i.InvoiceDate) = 2013
GROUP BY t.Name, il.Quantity
ORDER BY COUNT(*) desc