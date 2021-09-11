SELECT year(InvoiceDate) [Year], COUNT(*)
FROM Invoice
WHERE year(InvoiceDate) = '2009'
OR year(InvoiceDate) = '2011'
GROUP BY year(InvoiceDate)
