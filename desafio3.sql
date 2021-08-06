CREATE VIEW historico_reproducao_usuarios AS
SELECT a.user_name AS usuario, b.song_name AS nome
FROM SpotifyClone.users AS a
INNER JOIN SpotifyClone.`history` AS c ON a.user_id = c.user_id
INNER JOIN SpotifyClone.songs AS b ON b.song_id = c.song_id
ORDER BY usuario, nome;
