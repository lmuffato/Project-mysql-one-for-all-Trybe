DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artistInput VARCHAR(250))
BEGIN
SELECT 
    ar.artist_name AS 'artista',
    al.album_name AS 'album'
FROM
    SpotifyClone.albums AS al
INNER JOIN SpotifyClone.artists AS ar
ON al.artist_id = ar.artist_id
WHERE ar.artist_name = artistInput;
END $$
DELIMITER ;
