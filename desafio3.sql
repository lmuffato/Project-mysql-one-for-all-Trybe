CREATE VIEW historico_reproducao_usuarios AS (
SELECT
u.user_name AS 'usuario',
s.song_name AS 'nome'
FROM SpotifyClone.user_info AS u
INNER JOIN  SpotifyClone.history_user AS h
ON u.user_id = h.user_id
INNER JOIN SpotifyClone.songs AS s
ON s.song_id = h.song_id
ORDER BY u.user_name ASC, s.song_name ASC
);
