DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN artista VARCHAR(100))
BEGIN
SELECT
  a.nome AS 'artista',
  al.album_title AS 'album'
FROM
  SpotifyClone.albuns al
  INNER JOIN SpotifyClone.artistas a ON a.artista_id = al.artista_id
WHERE
  a.nome = artista
ORDER BY album;
END $$
DELIMITER;
