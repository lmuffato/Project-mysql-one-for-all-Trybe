DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist VARCHAR(100))
BEGIN
    SELECT ar.artista, al.album
    FROM SpotifyClone.artistas AS ar
    INNER JOIN SpotifyClone.albums AS al
    ON ar.artista_id = al.artista_id
    WHERE ar.artista = artist
    ORDER BY al.album;
END $$

DELIMITER ;
