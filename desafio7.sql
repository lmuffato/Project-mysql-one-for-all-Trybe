CREATE VIEW perfil_artistas AS
SELECT t1.artista AS artista, t2.album as album,
(
	SELECT COUNT(t3.artista_id) FROM seguindo AS t3
    WHERE t3.artista_id = t1.artista_id
) AS seguidores
FROM artistas AS t1
INNER JOIN albuns AS t2
ON
t1.artista_id = t2.artista_id
ORDER BY seguidores DESC, artista, album;
