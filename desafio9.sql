DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(60))
BEGIN
SELECT nome_artista AS artista,
alb.album_title AS album
FROM SpotifyClone.artists AS art
INNER JOIN SpotifyClone.albums AS alb ON art.artist_id = alb.artist_id
WHERE art.name = nome_artista
ORDER BY album;
END $$
DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
