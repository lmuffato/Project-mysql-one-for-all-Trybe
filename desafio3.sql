DROP VIEW IF EXISTS historico_reproducao_usuarios;
CREATE VIEW historico_reproducao_usuarios AS
(SELECT
  u.name AS usuario,
  s.song_name AS `name`
FROM SpotifyClone.PlayedSongs AS ps
INNER JOIN SpotifyClone.Users AS u
ON ps.user_id = u.user_id
INNER JOIN SpotifyClone.Songs AS s
ON s.song_id = ps.song_id
ORDER BY usuario, `name`
);