CREATE VIEW historico_reproducao_usuarios AS
SELECT u.user_name AS usuario, s.song_name AS nome
FROM SpotifyClone.user_history AS uh
INNER JOIN SpotifyClone.users AS u ON uh.user_id = u.id
INNER JOIN SpotifyClone.songs AS s ON uh.song_id = s.id
ORDER BY usuario, nome;
