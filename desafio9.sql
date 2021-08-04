DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN artistName VARCHAR(50))
BEGIN
  SELECT
    CONCAT(a.FIRST_NAME, ' ', a.LAST_NAME)AS `artista`,
    al.ALBUM_NAME AS `album`
  FROM SpotifyClone.album AS al
  INNER JOIN SpotifyClone.artist AS a
  ON al.ARTIST_ID = a.ARTIST_ID
  AND CONCAT(a.FIRST_NAME, ' ', a.LAST_NAME) = artistName
  ORDER BY 2;
END $$

DELIMITER ;
