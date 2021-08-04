USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN artistName VARCHAR(45))
BEGIN
  SELECT
    CONCAT(FIRST_NAME, ' ', LAST_NAME),
    al.ALBUM_NAME
  FROM SpotifyClone.album AS al
  INNER JOIN SpotifyClone.artist AS a
  ON al.ARTIST_ID = a.ARTIST_ID
  AND 1 = artistName
  ORDER BY 2;
END $$

DELIMITER ;
