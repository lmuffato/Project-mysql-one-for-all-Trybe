DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artistName VARCHAR(70))
BEGIN
  SELECT
    A.artist_name AS `artista`,
    AL.album_name AS `album`
  FROM SpotifyClone.Albuns AS AL
  INNER JOIN SpotifyClone.Artists AS A
  ON A.artist_id = AL.artist_id AND A.artist_name = artistName
  ORDER BY `album` ASC;
END $$
DELIMITER ;
