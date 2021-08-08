CREATE VIEW top_3_artistas AS
SELECT 
nome_artista AS `artista`,
COUNT(seguindo.artista_id) AS `seguidores`
FROM SpotifyClone.Artistas AS artistas
INNER JOIN SpotifyClone.Seguindo_artistas AS seguindo
ON artistas.artista_id = seguindo.artista_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
