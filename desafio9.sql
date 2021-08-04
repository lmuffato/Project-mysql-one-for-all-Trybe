-- DROP PROCEDURE albuns_do_artista;

DELIMITER $$ 

CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(250))
BEGIN
SELECT a.artist AS artista, 
ab.album AS album
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albums AS ab
ON a.artist_id = ab.artist_id
WHERE a.artist = nome_artista ;
END $$

DELIMITER ;

-- CALL albuns_do_artista('Walter Phoenix');
