SELECT t.Name [Track Name], a.Title [Album Title], g.Name [Genre], mt.Name [Media Type]
FROM Track t, Album a, Genre g, MediaType mt
WHERE t.AlbumId = a.AlbumId
AND t.GenreId = g.GenreId
AND t.MediaTypeId = mt.MediaTypeId