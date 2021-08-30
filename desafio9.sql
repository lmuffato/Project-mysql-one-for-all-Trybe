USE SpotifyClone;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista (artis VARCHAR(60))
BEGIN
  SELECT artista, album FROM SpotifyClone.artistas AS artistas
  INNER JOIN SpotifyClone.albuns AS albuns
  ON artistas.artista_id=albuns.artista_id
  WHERE artista=artis
  ORDER BY album;
END $$

DELIMITER ;
