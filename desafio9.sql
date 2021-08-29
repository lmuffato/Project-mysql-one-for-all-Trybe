DELIMITER $$
CREATE PROCEDURE SpotifyClone.albuns_do_artista(IN artist VARCHAR(50))
BEGIN
SELECT arts.artist AS `artista`,
album AS `album`
FROM SpotifyClone.artists AS arts
INNER JOIN SpotifyClone.albums AS alb ON alb.artist_id = arts.artist_id
WHERE artist = arts.artist
ORDER BY `album`;
END $$
DELIMITER ;
