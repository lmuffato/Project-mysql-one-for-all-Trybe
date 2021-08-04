DELIMITER $$
CREATE PROCEDURE `albuns_do_artista`(IN selected_artist VARCHAR(200))
BEGIN
SELECT
art.artist_name AS `artista`, alb.album_name AS `album`
FROM
SpotifyClone.artists AS art
INNER JOIN
SpotifyClone.albuns AS alb ON alb.artist_id = art.artist_id
WHERE
art.artist_name = selected_artist
ORDER BY `album`;
END$$
DELIMITER ;
