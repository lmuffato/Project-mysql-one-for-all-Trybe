CREATE VIEW SpotifyClone.top_3_artistas AS
SELECT Artista AS artista, Count(Usuario_id) AS seguidores
FROM SpotifyClone.Seguindo AS s
INNER JOIN SpotifyClone.Artista AS a ON s.Artista_id = a.Artista_id
GROUP BY Artista ORDER BY seguidores DESC, artista LIMIT 3;
