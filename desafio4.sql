CREATE VIEW top_3_artistas AS (
SELECT artistas.artista_nome AS 'artista',
COUNT(seguindo_artistas.artista_id) AS 'seguidores'
FROM SpotifyClone.artistas AS artistas
INNER JOIN SpotifyClone.seguindo_artistas AS seguindo_artistas
ON artistas.artista_id = seguindo_artistas.artista_id
GROUP BY seguindo_artistas.artista_id
ORDER BY `seguidores` DESC, `artista`
LIMIT 3
);
