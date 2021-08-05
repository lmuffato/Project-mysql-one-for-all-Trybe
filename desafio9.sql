DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN nome_artista varchar(50))
BEGIN
    SELECT A.artista, AL.album FROM SpotifyClone.artistas AS A
    INNER JOIN SpotifyClone.albuns AS AL
    ON A.artista_id = AL.artista_id
    WHERE A.artista = nome_artista;
END $$

DELIMITER ;
