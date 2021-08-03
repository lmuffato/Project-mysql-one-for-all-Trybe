CREATE VIEW SpotifyClone.top_3_artistas AS
SELECT
      artist.artista AS `artista`, COUNT(follow.usuario_id) AS `seguidores` 
FROM
SpotifyClone.seguindo AS follow
INNER JOIN SpotifyClone.usuarios AS users ON follow.usuario_id = users.usuario_id
INNER JOIN SpotifyClone.artistas AS artist ON follow.artista_id = artist.artista_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista` 
LIMIT 3;
