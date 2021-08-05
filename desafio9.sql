DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist VARCHAR(150))
BEGIN
SELECT a.artistName `artista`,
al.albumName `album`
FROM SpotifyClone.artists a
INNER JOIN SpotifyClone.albums al
ON al.artistID = a.artistID
WHERE artist = a.artistName
ORDER BY `album`;
END $$

DELIMITER ;
