CREATE VIEW top_3_artistas AS
SELECT art.nome AS 'artista', COUNT(seg.artista_id) AS 'seguidores' FROM SpotifyClone.seguidores AS seg
JOIN SpotifyClone.artistas AS art ON seg.artista_id = art.artista_id
GROUP BY 1
ORDER BY 2 DESC, 1
LIMIT 3;