USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artistName VARCHAR(20))
BEGIN
SELECT a.artist AS artista, al.album AS album
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albums AS al ON a.follower_id = al.follower_id
WHERE a.artist = 'Walter Phoenix' ORDER BY 2 ASC;
END $$

DELIMITER ;
