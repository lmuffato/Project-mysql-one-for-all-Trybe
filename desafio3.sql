CREATE VIEW historico_reproducao_usuarios AS 
SELECT u.user_name AS usuario,
music_name AS nome
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.history_play AS h ON u.user_id = h.user_id
INNER JOIN SpotifyClone.musics AS m ON h.music_id = m.music_id
ORDER BY usuario, nome;
