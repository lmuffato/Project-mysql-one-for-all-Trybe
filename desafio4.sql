CREATE VIEW top_3_artistas AS
SELECT art.artista_nome AS 'artista',
COUNT(seg.usuario_id)  AS 'seguidores'
FROM
SpotifyClone.artista AS art
INNER JOIN
SpotifyClone.seguindo AS seg ON art.artista_id = seg.artista_id
GROUP BY 1
ORDER BY 2 DESC, 1 ASC
LIMIT 3;
