CREATE VIEW SpotifyClone.perfil_artistas AS
SELECT
  ar.artist AS `artista`,
  al.album AS `album`,
  COUNT(f.user_id) AS `seguidores`
FROM SpotifyClone.artists AS ar
INNER JOIN SpotifyClone.albums AS al
ON ar.id = al.artist
INNER JOIN SpotifyClone.followers AS f
ON ar.id = f.artist
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista` ASC, `album` ASC;
