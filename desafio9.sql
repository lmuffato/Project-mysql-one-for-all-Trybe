DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN name VARCHAR(100))
BEGIN
SELECT 
  ar.artist AS 'artista',
  al.album AS 'album'
FROM 
  SpotifyClone.artists AS ar
INNER JOIN 
  SpotifyClone.albums AS al
ON ar.artist_id = al.artist_id
GROUP BY ar.artist, al.album
HAVING ar.artist = name
ORDER BY al.album ASC;
END$$

DELIMITER ;
