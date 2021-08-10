USE SpotifyClone;

DROP PROCEDURE IF EXISTS albuns_do_artista;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(45))
BEGIN
SELECT t1.artista AS artista,
t3.album AS album FROM SpotifyClone.artistas AS t1
INNER JOIN SpotifyClone.seguindoArtistas AS t2
INNER JOIN SpotifyClone.albuns AS t3
ON t1.artista_id = t2.artista_id AND t1.artista_id = t3.artista_id
WHERE artista = nome
GROUP BY artista, album
ORDER BY album;
END $$

DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
