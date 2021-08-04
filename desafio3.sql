CREATE VIEW SpotifyClone.historico_reproducao_usuarios AS
SELECT u.user_name AS `usuario`,
s.song_name AS `nome`
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.listened_songs AS l ON l.user_id = u.user_id
INNER JOIN SpotifyClone.songs AS s ON s.song_id = l.song_id
ORDER BY `usuario`, `nome`;
