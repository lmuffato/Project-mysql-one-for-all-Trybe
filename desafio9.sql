DELIMITER $$
CREATE PROCEDURE SpotifyClone.albuns_do_artista(IN artist VARCHAR(50))
BEGIN
SELECT ar.artist_name AS `artista`,
album_name AS `album`
FROM SpotifyClone.artists AS ar
INNER JOIN SpotifyClone.albums AS al ON al.artist_id = ar.artist_id
WHERE artist = ar.artist_name
ORDER BY `album`;
END $$
DELIMITER ;
