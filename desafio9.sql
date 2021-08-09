USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista_nome VARCHAR(50))
BEGIN
SELECT AR.artista_nome AS 'artista', AL.album_nome AS 'album'
FROM SpotifyClone.album AL
INNER JOIN SpotifyClone.artista AR
ON AR.artista_id = AL.artista_id
WHERE AR.artista_nome = artista_nome
ORDER BY AL.album_nome;
END $$

DELIMITER ;
