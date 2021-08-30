DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artistName VARCHAR(100))
BEGIN
SELECT artists.artist, albums.album
FROM artists AS artists
RIGHT JOIN albums AS albums
  ON artists.artist_id = albums.artist_id
WHERE artistName = artists.artist
ORDER BY album;
END $$

DELIMITER ;
