DELIMITER $$

CREATE PROCEDURE SpotifyClone.albuns_do_artista(IN nome_artista VARCHAR(50))
BEGIN
SELECT Artista AS 'artista', al.Album as 'album'
FROM SpotifyClone.Album AS al
INNER JOIN SpotifyClone.Artista AS ar ON ar.Artista_id = al.Artista_id
  WHERE Artista LIKE nome_artista;
END $$

DELIMITER ;
