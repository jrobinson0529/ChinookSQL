SELECT il.InvoiceLineId, t.Name [Track], a.Name [Artist], il.UnitPrice
FROM InvoiceLine il 
	JOIN Track t
	ON il.TrackId = t.TrackId
	JOIN Album al
	ON t.AlbumId = al.AlbumId
	JOIN Artist a
	ON al.ArtistId = a.ArtistId
	ORDER BY t.Name desc
