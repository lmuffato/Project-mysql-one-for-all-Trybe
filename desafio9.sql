USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(50))
BEGIN
SELECT ar.artist_name AS artista,
al.album_name AS album
FROM SpotifyClone.albums AS al
INNER JOIN SpotifyClone.artists AS ar ON al.artist_id=ar.id
AND ar.artist_name=nome
ORDER BY album;
END $$

DELIMITER ;
