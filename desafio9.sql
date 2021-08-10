USE SpotifyClone;

DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(100))
BEGIN
SELECT ar.artist_name AS 'artista',
al.album_name AS 'album'
FROM artists ar
INNER JOIN albums al
ON al.artist_id = ar.artist_id AND nome_artista = ar.artist_name
ORDER BY al.album_name ASC;
END $$
DELIMITER ;
