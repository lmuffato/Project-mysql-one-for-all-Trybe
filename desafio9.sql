DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome_do_artista VARCHAR(50))
BEGIN
SELECT 
  art.nome_do_artista AS "artista",
  alb.nome_do_album AS "album"
FROM
  SpotifyClone.todos_os_artistas AS art
    INNER JOIN
  SpotifyClone.albuns AS alb ON alb.artista_id = art.artista_id
WHERE art.nome_do_artista = nome_do_artista;
END
$$ DELIMITER ;
