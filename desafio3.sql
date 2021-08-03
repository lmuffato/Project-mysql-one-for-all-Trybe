CREATE VIEW historico_reproducao_usuarios AS
SELECT (SELECT username FROM users WHERE user_id = us.user_id) AS usuario,
(SELECT song_name FROM songs WHERE song_id = us.song_id) AS nome
FROM users_history AS us
ORDER BY usuario, nome;
