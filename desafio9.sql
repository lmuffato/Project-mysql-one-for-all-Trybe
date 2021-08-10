DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(100))
BEGIN
  SELECT
    art.artista AS `artista`,
    alb.album AS `album`
    FROM SpotifyClone.album alb
    INNER JOIN SpotifyClone.artista art
    ON alb.artista_id = art.artista_id
    WHERE art.artista = nome_artista
    ORDER BY `album` ASC;
END $$

DELIMITER ;
