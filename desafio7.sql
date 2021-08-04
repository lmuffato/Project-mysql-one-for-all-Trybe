CREATE VIEW perfil_artistas AS
SELECT a.artista AS 'artista', ab.album AS 'album', COUNT(*) AS 'seguidores'
FROM artistas AS a
INNER JOIN albuns AS ab
ON a.artista_id = ab.artista_id
INNER JOIN seguindo_artistas AS s_a
ON s_a.artista_id = ab.artista_id
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista` ASC, `album` ASC;
