CREATE VIEW perfil_artistas AS
SELECT artista.artista AS `artista`,
  album.album AS `album`,
  COUNT(artista_seguido.usuario_id) AS `seguidores`
FROM SpotifyClone.artists
JOIN SpotifyClone.album ON artista.artista_id = album.artista_id
JOIN SpotifyClone.artista_seguido ON artista.artista_id = artista_seguido.artista_id
GROUP BY `album`, `artista`
ORDER BY `seguidores` DESC, `artista`, `album`;
