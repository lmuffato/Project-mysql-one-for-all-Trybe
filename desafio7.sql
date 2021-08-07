CREATE VIEW perfil_artistas AS
SELECT artist.artists AS `artista`,
  album.albums AS `album`,
  COUNT(artista_seguido.usuario_id) AS `seguidores`
FROM SpotifyClone.artists
JOIN SpotifyClone.albums ON artist.follower_id = album.artista_id
JOIN SpotifyClone.followers ON artist.follower_id = artista_seguido.follower_id
GROUP BY `album`, `artista`
ORDER BY `seguidores` DESC, `artista`, `album`;
