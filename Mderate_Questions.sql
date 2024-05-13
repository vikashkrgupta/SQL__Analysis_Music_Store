USE `music-das`


--Ques 1: Lets invite the artist who have writeen the most rock music in our dataset. Write a query that returns the Artist name and total track count of the top 10 rock bands?

SELECT artist.artist_id, artist.name, COUNT(artist.artist_id) AS number_of_songs
FROM track
JOIN album ON album.album_id = track.album_id
JOIN artist ON artist.artist_id = album.artist_id
JOIN genre ON genre.genre_id 
WHERE genre.name LIKE 'Rock'
GROUP BY artist.artist_id, artist.name
ORDER BY number_of_songs DESC
LIMIT 10;


--Ques 2: Return all the track names that have a song length longer than the average song length.
		Return the Name and Milisdeconds for each track.
        Order by the song length with the longest songs listed first.
        
        
SELECT name, milliseconds
FROM track
WHERE milliseconds > (
	SELECT AVG(milliseconds) AS avg_track_length
    FROM track)
ORDER BY milliseconds DESC
LIMIT 5;
        



