DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist VARCHAR(100))
BEGIN
  SELECT a.artist_name AS `artista`,
  al.album_name AS `album`
  FROM SpotifyClone.artists AS a
  inner join SpotifyClone.albums AS al
  ON a.artist_id = al.artist_id
  WHERE a.artist_name = artist
  ORDER BY `album` ASC;
END $$

DELIMITER ;
