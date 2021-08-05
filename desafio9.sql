DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artist_name VARCHAR(100))
BEGIN
SELECT 
a.ArtistName AS 'artista',
al.AlbumName AS 'album'
FROM SpotifyClone.Artists a
INNER JOIN SpotifyClone.Albums al
ON a.ArtistID = al.ArtistID
WHERE a.ArtistName = artist_name
ORDER BY `album`;
END $$
DELIMITER ;
