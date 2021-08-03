DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN artist_name VARCHAR(100))
BEGIN
SELECT artists.artist_name AS 'artista', albums.album AS 'album'
FROM SpotifyClone.albums AS albums
JOIN SpotifyClone.artists AS artists ON album.artist_id_fk = artists.artist_id
WHERE artist.artist_name = artista;
END
$$ DELIMITER ;
