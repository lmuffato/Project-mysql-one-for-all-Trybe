CREATE VIEW historico_reproducao_usuarios AS
SELECT u.username AS `usuario`,
s.song_name AS `nome`
FROM SpotifyClone.play_history AS p
INNER JOIN SpotifyClone.`user` AS u
ON p.user_id = u.user_id
INNER JOIN SpotifyClone.songs AS s
ON p.song_id = s.song_id
ORDER BY `usuario`, `nome`;
