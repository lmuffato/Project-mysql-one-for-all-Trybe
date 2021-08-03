CREATE VIEW top_3_artistas AS
SELECT  a.artista_nome AS artista, COUNT(seg.artista_id) AS seguidores
FROM SpotifyClone.seguindo_artista AS seg
INNER JOIN 
SpotifyClone.artista as a
ON seg.artista_id = a.artista_id
GROUP BY seg.artista_id
ORDER BY `seguidores` DESC, `artista` LIMIT 3;

-- DROP VIEW top_3_artistas;
