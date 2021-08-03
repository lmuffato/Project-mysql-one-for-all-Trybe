CREATE VIEW top_3_artistas AS
SELECT a.nome_artista AS 'artista',
count(s.usuario_id) AS 'seguidores'
FROM SpotifyClone.Seguindo AS s
INNER JOIN SpotifyClone.Artistas AS a
ON s.artista_id = a.artista_id
GROUP BY a.nome_artista ASC
LIMIT 3;
