DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artistName VARCHAR(100))
BEGIN
SELECT a.artist_name AS artista, b.album_name AS album
    FROM SpotifyClone.artists a INNER JOIN SpotifyClone.albums b
    ON a.artist_id = b.artist_id
    WHERE a.artist_name = artistName;
END $$

DELIMITER ;
