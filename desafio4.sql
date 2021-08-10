CREATE VIEW top_3_artistas AS
SELECT sa.artista, Count(sf.usuario_id) AS seguidores  FROM SpotifyClone.Followers sf
INNER JOIN SpotifyClone.Artist sa 
ON sf.artista_id = sa.artista_id
GROUP BY 1
ORDER BY 2 DESC, 1 ASC
LIMIT 3;
