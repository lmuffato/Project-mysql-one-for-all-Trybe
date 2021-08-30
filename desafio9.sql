USE SpotifyClone;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(100))

BEGIN
SELECT artistas.artista AS 'artista',
albuns.album AS 'album'
FROM artistas AS artistas
INNER JOIN albuns AS albuns ON albuns.artista_id = artistas.artista_id
WHERE artistas.artista = artista
ORDER BY albuns.album ASC;
END

$$ DELIMITER ;
