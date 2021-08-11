CREATE VIEW historico_reproducao_usuarios AS
SELECT u.`name` AS usuario, s.`name` AS nome FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.listened_song AS ls
ON u.user_id = ls.user_id
INNER JOIN SpotifyClone.song AS s
ON ls.song_id = s.song_id
ORDER BY usuario, nome;
