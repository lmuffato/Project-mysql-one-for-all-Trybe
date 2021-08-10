USE SpotifyClone;

DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN r_name VARCHAR(50))
BEGIN
  SELECT
  r.name AS `artista`,
  l.name AS `album`
  FROM SpotifyClone.albuns AS l
  INNER JOIN SpotifyClone.artists AS r
  ON l.artist_id = r.artist_id
  AND r.name = r_name
  ORDER BY `album`;
END $$

DELIMITER ;
