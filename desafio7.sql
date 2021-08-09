CREATE VIEW perfil_artistas AS
SELECT a.artista_nome AS 'artista',
b.album_nome AS 'album',
COUNT(*) AS 'seguidores'
FROM SpotifyClone.album AS b
INNER JOIN
SpotifyClone.artista AS a ON b.artista_id = a.artista_id
INNER JOIN
SpotifyClone.seguindo AS s ON s.artista_id = b.artista_id
GROUP BY 2, 1
ORDER BY 3 DESC, 1, 2;
