DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(50))
BEGIN
	SELECT
		art.nome AS artista,
        alb.nome AS album
	FROM SpotifyClone.albuns AS alb
    INNER JOIN SpotifyClone.artistas AS art ON alb.artista_id=art.artista_id AND art.nome=artista
    ORDER BY alb.nome;
END $$

DELIMITER ;
