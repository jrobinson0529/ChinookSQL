SELECT TOP 1 i.BillingCountry, SUM(i.Total) [Total Sales]
FROM Invoice i
GROUP BY i.BillingCountry
ORDER BY SUM(i.Total) DESC