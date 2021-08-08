DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artistName VARCHAR(80))
BEGIN
	SELECT art.artist_name AS artista, alb.album_name AS album
    FROM SpotifyClone.artists art
    INNER JOIN SpotifyClone.albums alb
    ON art.artist_id = alb.artist_id
	AND art.artist_name = artistName
    ORDER BY album;
END $$
DELIMITER ;
