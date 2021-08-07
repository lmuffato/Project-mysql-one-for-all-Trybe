CREATE VIEW historico_reproducao_usuarios AS
SELECT u.`user` AS usuario, n.song AS nome
FROM SpotifyClone.history AS h
INNER JOIN SpotifyClone.users AS u ON h.user_id = u.user_id
INNER JOIN SpotifyClone.songs AS n ON h.history_id = n.history_id
ORDER BY 1 ASC, 2 ASC;
