CREATE VIEW top_3_artistas AS
SELECT A.artista_nome AS 'artista', COUNT(SA.artista_id) AS 'seguidores'
FROM SpotifyClone.artista A
INNER JOIN SpotifyClone.seguindo_artistas SA
ON SA.artista_id = A.artista_id
GROUP BY A.artista_nome
ORDER BY `seguidores` DESC, `artista` ASC
LIMIT 3;
