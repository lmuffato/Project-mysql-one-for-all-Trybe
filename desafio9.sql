USE SpotifyClone;

DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN art_name VARCHAR(100))
BEGIN
  SELECT 
    a.artist_name AS artista,
    ab.album_name AS album
  FROM SpotifyClone.artist AS a
  INNER JOIN SpotifyClone.album AS ab
  ON
    ab.artist_id = a.artist_id
    AND
    a.artist_name = art_name;
END
DELIMITER ;
