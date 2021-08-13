CREATE VIEW SpotifyClone.top_3_artistas AS
SELECT
  a.artist AS `artista`,
  COUNT(f.user_id) AS `seguidores`
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.followers AS f
ON a.id = f.artist
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista` ASC
LIMIT 3;
