DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN nome VARCHAR(100))
BEGIN
SELECT ar.nome_artista AS 'artista',
al.album AS 'album'
FROM SpotifyClone.Artistas AS ar
INNER JOIN SpotifyClone.Albuns AS al
ON ar.artista_id = al.artista_id
GROUP BY ar.nome_artista, al.album
HAVING ar.nome_artista = nome
ORDER BY al.album ASC;
END$$

DELIMITER ;
