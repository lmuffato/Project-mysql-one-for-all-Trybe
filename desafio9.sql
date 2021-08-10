CREATE PROCEDURE albuns_do_artista(IN artist_name VARCHAR(50))
BEGIN
  SELECT
    artists.artista AS artista,
    artists.usuario AS artista,
    albuns.album AS album
  FROM
    SpotifyClone.artista AS artists
    INNER JOIN
    SpotifyClone.albuns AS albuns
    ON albuns.artista_id = artists.artista_id
  WHERE artists.artista = artista_id
  ORDER BY artista_id ASC;
END $$
DELIMITER ;
