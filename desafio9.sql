USE SpotifyClone;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN artista_nome VARCHAR(45))
BEGIN
SELECT art.artista, alb.album
FROM SpotifyClone.album AS alb
JOIN SpotifyClone.artista AS art
ON alb.artista_id = art.artista_id
AND `artista` = artista_nome
ORDER BY `album`;
END $$

DELIMITER ;
