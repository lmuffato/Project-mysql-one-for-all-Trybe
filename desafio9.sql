DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(100))
BEGIN
SELECT art.nome AS 'artista', alb.nome AS 'album' FROM SpotifyClone.albuns AS alb
JOIN SpotifyClone.artistas AS art ON alb.artista_id = art.artista_id
WHERE art.nome = artista;
END $$

DELIMITER ;