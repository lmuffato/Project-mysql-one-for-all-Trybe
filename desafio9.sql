DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist_name VARCHAR(50))
BEGIN
  SELECT
    artists.artist_name AS artista,
    albuns.album_name AS album
  FROM
    SpotifyClone.artists AS artists
      INNER JOIN
    SpotifyClone.albuns AS albuns ON albuns.artist_id = artists.artist_id
  WHERE artists.artist_name = artist_name
  ORDER BY album_name;
END $$

DELIMITER ;
