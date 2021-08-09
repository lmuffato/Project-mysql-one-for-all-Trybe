CREATE VIEW historico_reproducao_usuarios AS (
SELECT u.user_name  AS 'usuario',
s.song_name AS 'nome'
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.user_play_history AS uph
INNER JOIN SpotifyClone.songs AS s
ON uph.user_id = u.user_id AND s.song_id = uph.song_id
ORDER BY u.user_name ASC, s.song_name ASC
);
