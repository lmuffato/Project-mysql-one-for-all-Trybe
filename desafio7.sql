CREATE VIEW SpotifyClone.perfil_artistas AS
SELECT
      artist.artista AS `artista`,
      album.album AS `album`,
      COUNT(follow.artista_id) AS `seguidores`
FROM
SpotifyClone.artistas AS artist
INNER JOIN SpotifyClone.albuns AS album ON artist.artista_id = album.artista_id
INNER JOIN SpotifyClone.seguindo AS follow ON artist.artista_id = follow.artista_id
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista`, `album`;
