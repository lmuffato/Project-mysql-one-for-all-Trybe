CREATE VIEW top_3_artistas AS(
SELECT a.artista AS 'artista', COUNT(sa.usuario_id) AS 'seguidores'FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.seguindo_artistas AS sa
INNER JOIN SpotifyClone.usuarios AS u
ON a.artista_id = sa.artista_id AND sa.usuario_id = u.usuario_id
GROUP BY a.artista
ORDER BY `seguidores` DESC, `artista`
LIMIT 3
);
