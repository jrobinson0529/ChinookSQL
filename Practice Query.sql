-------------------------------------
--------- Subqueries-----------------
-------------------------------------

-- nesting one or more queries inside another one
-- subquery, and correlated subquery are the two main categories [of subqueries]

-- artists and their longest track

SELECT * 
FROM Artist as art
JOIN (SELECT ArtistId, MAX(Milliseconds) / 1000 LongestSongLength
FROM Track as t
	JOIN Album alb
	ON alb.AlbumId = t.AlbumId
	GROUP BY ArtistId)
	maxSong on art.ArtistId = maxSong.ArtistId
	ORDER BY LongestSongLength desc

-- corelated subquery in the select statement
SELECT a.ArtistId,
a.Name,
( select max(Milliseconds) as LongestSongLength
from Track t
	join Album al
		on al.AlbumId = t.AlbumId
		where al.ArtistId = a.ArtistId 
		group by ArtistId)
		from Artist a



--regular subquery
select *
from Artist a
where ArtistId not in (
SELECT ArtistId
	from track t
	join album al
		on al.AlbumID = t.AlbumID)
	
-------------------------------------
------ UNION, EXCEPT, UNION ALL -----
-------------------------------------

-- combining two or more result sets that may or may not have anything in common

select Email, 'Employee' as [type]
from Employee
union all
select Email, 'Customer'
from Customer
-- union must have the same number of results

--except operator
select ArtistID
from Artist a
except
select ArtistId
from Album

--intersect operator
select ArtistID
from Artist a
intersect
select ArtistId
from Album

select left(FirstName, 1), FirstName
from Employee
except
select left(FirstName, 1), FirstName
from Customer
ORDER BY FirstName