USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN inputArtista VARCHAR(100))
BEGIN
    SELECT ar.artista AS artista, al.album AS album
    FROM SpotifyClone.artistas AS ar
    INNER JOIN SpotifyClone.albuns AS al
    ON al.artista_id = ar.artista_id
    WHERE artista = inputArtista;
END $$

DELIMITER ;
