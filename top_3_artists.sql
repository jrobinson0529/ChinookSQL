SELECT TOP 3 t.Composer, COUNT(*) [# Purchased]
FROM Track t, InvoiceLine il, invoice i
WHERE t.TrackId = il.TrackId
AND i.InvoiceId = il.InvoiceId
AND t.Composer IS NOT NULL
GROUP BY t.Composer
ORDER BY COUNT(*) desc