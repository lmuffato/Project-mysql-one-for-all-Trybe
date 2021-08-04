CREATE VIEW historico_reproducao_usuarios AS
SELECT
u.user_name AS usuario,
s.song_name AS nome
FROM SpotifyClone.USERS AS u
INNER JOIN SpotifyClone.SONGS AS s
INNER JOIN SpotifyClone.HISTORY_REPRODUCTIONS AS hr
ON (
(u.user_id = hr.user_id) AND (s.song_id = hr.song_id)
)
ORDER BY 1, 2;
