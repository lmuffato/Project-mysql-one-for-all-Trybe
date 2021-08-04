DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nameArtist VARCHAR(100))
BEGIN
  SELECT
    a.artista_name AS 'artista',
    ab.album_name AS 'album'
  FROM
    SpotifyClone.artista a
  INNER JOIN
    SpotifyClone.album ab ON a.artista_id = ab.artista_id
  WHERE a.artista_name LIKE CONCAT('%', nameArtist, '%')
  ORDER BY 2;
END $$

DELIMITER ;
